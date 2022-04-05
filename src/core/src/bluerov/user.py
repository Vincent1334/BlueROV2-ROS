#!/usr/bin/env python

import rospy
import time

try:
    import pubs
    import subs
    import video
except:
    import bluerov.pubs as pubs
    import bluerov.subs as subs

from geometry_msgs.msg import TwistStamped
from mavros_msgs.srv import CommandBool
from sensor_msgs.msg import Joy
from std_msgs.msg import Int16

from sensor_msgs.msg import BatteryState
from mavros_msgs.msg import OverrideRCIn, RCIn, RCOut

class Code(object):

    """Class to provide user access

    Attributes:
        cam (Video): Video object, get video stream
        pub (Pub): Pub object, do topics publication
        sub (Sub): Sub object, subscribe in topics
    """
    

    def __init__(self):
        super(Code, self).__init__()

        # Do what is necessary to start the process
        # and to leave gloriously
        
        self.arm()       
    
        self.sub = subs.Subs()
        self.pub = pubs.Pubs()

        self.pub.subscribe_topic('/mavros/rc/override', OverrideRCIn)
        self.pub.subscribe_topic('/mavros/setpoint_velocity/cmd_vel', TwistStamped)    
        
        self.pub.subscribe_topic('/BlueRov2/lights', Int16) 

        self.sub.subscribe_topic('/joy', Joy)
        self.sub.subscribe_topic('/mavros/battery', BatteryState)
        self.sub.subscribe_topic('/mavros/rc/in', RCIn)
        self.sub.subscribe_topic('/mavros/rc/out', RCOut) 
        self.sub.subscribe_topic('/mavros/rc/override', OverrideRCIn) 

        

    def arm(self):
        """ Arm the vehicle and trigger the disarm
        """
        rospy.wait_for_service('/mavros/cmd/arming')

        self.arm_service = rospy.ServiceProxy('/mavros/cmd/arming', CommandBool)
        self.arm_service(True)

        # Disarm is necessary when shutting down
        rospy.on_shutdown(self.disarm)

# https://mavlink.io/en/messages/common.html#mav_commands
# https://discuss.bluerobotics.com/t/ros-support-for-bluerov2/1550/32?page=2
   

    @staticmethod
    def pwm_to_thrust(pwm):
        """Transform pwm to thruster value
        The equation come from:
            https://colab.research.google.com/notebook#fileId=1CEDW9ONTJ8Aik-HVsqck8Y_EcHYLg0zK

        Args:
            pwm (int): pwm value

        Returns:
            float: Thrust value
        """
        return -3.04338931856672e-13*pwm**5 \
            + 2.27813523978448e-9*pwm**4 \
            - 6.73710647138884e-6*pwm**3 \
            + 0.00983670053385902*pwm**2 \
            - 7.08023833982539*pwm \
            + 2003.55692021905


    def run(self):
        """Run user code
        """

        while not rospy.is_shutdown():
            time.sleep(0.1)
    

#       Display Battery and Channels
# <----------------------------------------------------------------------------------------->
            try:
                rospy.loginfo(self.sub.get_data()['mavros']['battery']['voltage'])
                rospy.loginfo(self.sub.get_data()['mavros']['rc']['in']['channels'])
                rospy.loginfo(self.sub.get_data()['mavros']['rc']['out']['channels'])
            except Exception as error:
                print('Get data error:', error)

#       Work with Joystick data
# <----------------------------------------------------------------------------------------->
            
            
            try:
                # Get joystick data
                joy = self.sub.get_data()['joy']['axes']

                # rc run between 1100 and 2000, a joy command is between -1.0 and 1.0
                override = [int(val*400 + 1500) for val in joy]   
                # invert rotate UzL                     
                override[3] = -1*joy[3]*400+1500                 
              
                for _ in range(len(override), 8):
                    override.append(0)
                # Send joystick data as rc output into rc override topic                
                self.pub.set_data('/mavros/rc/override', override) 
                

                
            except Exception as error:
                print('joy error:', error)

# <----------------------------------------------------------------------------------------->         
           
    def disarm(self):
        self.arm_service(False)
        self.pub.set_data('/BlueRov2/lights', -8)


if __name__ == "__main__":
    try:
        rospy.init_node('user_node', log_level=rospy.DEBUG)
    except rospy.ROSInterruptException as error:
        print('pubs error with ROS: ', error)
        exit(1)
    code = Code()
    code.run()
