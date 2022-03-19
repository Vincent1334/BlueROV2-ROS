## *********************************************************
##
## File autogenerated for the tritech_micron package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'Upside down', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'inverted', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'Scan continuously or only a sector', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'continuous', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'Rotate clockwise', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'scanright', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'ADC 8 mode', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'adc8on', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'Gain', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gain', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Minimum amplitude in dB', 'max': 80.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ad_low', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Maximum amplitude in dB', 'max': 80.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ad_high', 'edit_method': '', 'default': 80.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Left limit in rad', 'max': 6.283185307179586, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'left_limit', 'edit_method': '', 'default': 2.356194490192345, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Right limit in rad', 'max': 6.283185307179586, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'right_limit', 'edit_method': '', 'default': 3.9269908169872414, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Speed of sound', 'max': 1600.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'speed', 'edit_method': '', 'default': 1500.0, 'level': 0, 'min': 1400.0, 'type': 'double'}, {'srcline': 290, 'description': 'Range in meters', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'range', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 2.0, 'type': 'double'}, {'srcline': 290, 'description': 'Motor speed in microseconds', 'max': 2550, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mo_time', 'edit_method': '', 'default': 250, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 290, 'description': 'Number of bins per slice', 'max': 1500, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'nbins', 'edit_method': '', 'default': 400, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 290, 'description': 'Motor step size in rad', 'max': 0.2503456645829366, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'step', 'edit_method': "{'enum_description': 'Default resolution enumeration', 'enum': [{'srcline': 42, 'description': 'Lowest resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.2503456645829366, 'ctype': 'double', 'type': 'double', 'name': 'LOWEST'}, {'srcline': 43, 'description': 'Lower resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.12566370614359174, 'ctype': 'double', 'type': 'double', 'name': 'LOWER'}, {'srcline': 44, 'description': 'Lowerish resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.06283185307179587, 'ctype': 'double', 'type': 'double', 'name': 'LOWERISH'}, {'srcline': 45, 'description': 'Low resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.031415926535897934, 'ctype': 'double', 'type': 'double', 'name': 'LOW'}, {'srcline': 46, 'description': 'Medium resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.015707963267948967, 'ctype': 'double', 'type': 'double', 'name': 'MEDIUM'}, {'srcline': 47, 'description': 'High resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.007853981633974483, 'ctype': 'double', 'type': 'double', 'name': 'HIGH'}, {'srcline': 48, 'description': 'Ultimate resolution', 'srcfile': '/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/cfg/Scan.cfg', 'cconsttype': 'const double', 'value': 0.003926990816987242, 'ctype': 'double', 'type': 'double', 'name': 'ULTIMATE'}]}", 'default': 0.031415926535897934, 'level': 0, 'min': 0.0009817477042468104, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Scan_LOWEST = 0.2503456645829366
Scan_LOWER = 0.12566370614359174
Scan_LOWERISH = 0.06283185307179587
Scan_LOW = 0.031415926535897934
Scan_MEDIUM = 0.015707963267948967
Scan_HIGH = 0.007853981633974483
Scan_ULTIMATE = 0.003926990816987242
