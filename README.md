# BlueRov2 ROS

```
                      +-----------------------+         +------------------------+
                      |     Raspberry Pi      |         |    Topside Commputer   |
                      |    ip 192.168.2.2     |         |     ip 192.168.2.1     |
                      |                       |         |                        |
+-------+  Telemetry  | +-------------------+ |         |                        |
|Pixhawk<-------------->USB         MAVProxy| |         |                        |
+-------+    Pilot    | +                   + |         | +--------------------+ |
            Control   | |            udpbcast<----------->:14550         MAVROS| |
                      | +-------------------+ |  Pilot  | |(UDP)               | |
                      |                       | Control | |                    | |
                      | +-------------------+ |         | |       (ROS)        | |
+---------+           | CSI+2       raspivid| |         | +------+/mavros+-----+ |
|Raspberry+------------>camera              | |         |           ^            |
| Camera  |           | port                | |         |           |            |
+---------+           | +                   | |         | +---------v----------+ |
                      | |                   | |         | |subs.py      pubs.py| |
                      | +------------+stdout+ |         | |                    | |
                      |                  +    |         | |                    | |
                      |             Raw  |    |         | |                    | |
                      |             H264 |    |         | |                    | |
                      |                  v    |         | |      user.py       | |
                      | +------------+ fdsrc+ |         | |                    | |
                      | |gstreamer          | |         | |                    | |
                      | |                   + |         | :5600 video.py       | |
                      | |             udpsink+----------->(UDP)                | |
                      | +-------------------+ |  Video  | +---------^----------+ |
                      |                       | Stream  |           |            |
                      +-----------------------+         |           +            |
                                                        | +--------/joy--------+ |
                                                        | |joy     (ROS)       | |         +--------+
                                                        | |                  USB<----------+Joystick|
                                                        | +--------------------+ |  Pilot  +--------+
                                                        |                        | Control
                                                        +------------------------+
```

## Installation

### Raspberry Pi

Als verwendetes Betriebsystem empfehle ich PI Os lite. Jedoch kann auch jedes andere System f??r den Pi genutzt werden.
Das Passwort f??r den Pi lautet "companion" und der Username "pi".

#### MAVLink
Mavlink dient zur Kommunikation zwischen dem Topside Computer und dem Pixhawk. Die n??tigen Bibliotheken k??nnen mit folgendem Befehl instaliert werden.

```
sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
```

Nun kann mit Hilfe von pip die MAVlink-Bibliothek installiert werden

```
pip3 install PyYAML mavproxy --user
```

Nach Abschluss der Installation muss man noch der gew??nschten Shell die n??tigen Befehle verlinken.

```
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
```

Wenn es zu Permissions-Problemen kommt, muss man noch die Zugrifsrechte f??r den aktuellen Benutzer anpassen

```
sudo usermod -a -G dialout <username>
```

#### GStreamer
Der GStreamer wird daf??r verwendet, den Video-Output der integrierten Kamera dem Topside Computer als Stream zur Verf??gung zu stellen. Um den GStreamer mit dem gew??nschten h264 Code zu verwenden, m??ssen folgende Plugins installiert werden.

```
sudo apt-get install libgstreamer-plugins-base1.0-dev
sudo apt-get install libgstreamer-plugins-bad1.0-dev 
sudo apt-get install libgstreamer-plugins-good1.0-dev
sudo apt-get install libgstreamer-plugins-ugly1.0-dev 
```
Falls Probleme auftreten, kann man folgendes versuchen.
```
sudo apt-get install gstreamer1.0-plugins-bad
sudo apt-get install gstreamer1.0-plugins-ugly
sudo apt-get install gstreamer1.0-libav
```

#### USBIP
Das letzte Programm stellt die USB-Schnittstellen des Raspberry Pi dem Topside Computer zur Verf??gung. Als erstes muss linux-tools-generic installiert werden, welches unter Anderem USBIP beinhaltet.

```
sudo apt-get install linux-tools-generic 
```

Nach der Installation muss man als erstes das f??r "usbip" wichtige Kernelmodul laden.

```
sudo modprobe usbip-host 
```
Um das Modul permanent zu laden, muss man /etc/modules editieren und usbip-host hinzuf??gen.

Als n??chstes muss ein Link von usbutils nach hwdata angelegt werden, damit die USB-Ger??te richtig angezeigt werden.

```
sudo mkdir /usr/share/hwdata/
sudo ln -sf /var/lib/usbutils/usb.ids /usr/share/hwdata/ 
```

Nun kann ein "usbip" Server gestartet werden, was nat??rlich nach jedem Neustart wiederholt werden muss, wenn man dies nicht in den Autostart einf??gt.

```
sudo usbipd -D 
```

Nun kann mit der eigentlichen Konfiguration der USB-Ger??te begonnen werden. Hierf??r sollte man sich erst einmal einen ??berblick ??ber alle USB-Ger??te verschaffen, dabei sollte man auf die Bus-ID achten.

```
lsusb 
```

Mit der ID oder dem Namen kann man nun in der Liste von "usbip" nach der richtigen Bus-ID (Zahl-Zahl; z.B. 1-2; nicht USB-ID!) suchen.

```
usbip list -l 
```

Nachdem man nun im n??chsten Befehl die Bus-ID eingesetzt hat, ist der Server fertig.

```
sudo usbip bind -b "Bus-ID" 
```
#### Statische IP
Nun muss man dem Pi noch eine statische IP-Adress zuweisen. Dies geschieht ??ber den Befehl

```
sudo nano /etc/dhcpcd.conf
```

In der Datei m??ssen folgende Eintr??ge auskommentiert und ver??ndert werden

```
interface eth0
static ip_address=192.168.2.2/24
static routers=192.168.2.1
```
Jetzt ist der Pi bereit zum Einsatz.

### Topside Computer

Der Topside Computer ben??tigt ROS Kinetic. 

http://wiki.ros.org/kinetic/Installation/Ubuntu

#### QGroundControl

QGroundContol kann dazu verwendet werden, den BlueRov2 ohne ROS direkt fahrbereit zu machen. Das Programm verf??gt ??ber eine MAVlink-Schnittstelle, sowie Kamera- und Joystick-Integration. Die Installation erfolgt ??ber folgenden Befehl

```
sudo usermod -a -G dialout $USER
sudo apt-get remove modemmanager -y
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
sudo apt install libqt5gui5 -y
```

Im Anschluss kann [QGroundContol](https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl.AppImage) heruntergeladen werden.
Um die Video-Funktion nutzen zu k??nnen, m??ssen f??r den GStreamer die Plugins bad und libav installiert werden.

#### MAVRos
Um MavRos zu installieren werden folgende Befehle ausgef??hrt.
```
sudo apt-get install ros-kinetic-mavros ros-kinetic-mavros-extras
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo bash ./install_geographiclib_datasets.sh
```

#### PyMavLink
PyMavLink wird f??r das core Package ben??tigt. Um es zu installieren, werden folgende Befehle verwendet.
```
sudo apt-get install gcc python-dev libxml2-dev libxslt-dev
sudo apt-get install python-numpy python-pytest
sudo python -m pip install --upgrade future lxml
sudo python -m pip install --upgrade pymavlink
```

#### Netzwerk

Der Topside Computer ben??tigt die statische IP-Adresse ***192.168.2.1*** um mit dem BlueRov2 kommunizieren zu k??nnen.

---
## Inbetriebnahme

### BlueRov2
1. Verbindungsaufbau mit dem BlueRov2 ??ber SSH
2. Starten des Video-Streams
   ```
   gst-launch-1.0 v4l2src device=/dev/video2 ! queue ! video/x-h264,width=1920,height=1080,framerate=30/1 ! h264parse ! rtph264pay ! udpsink host=192.168.2.1 port=5600
   ```
3. Starten des USBIP Server
   ```
    sudo modprobe usbip-host
    sudo usbipd -D
    sudo usbip bind -b "Bus-ID"
    ```
4. Starten von MAVlink
    ```
    mavproxy.py --master /dev/ttyACM0 --baudrate 921600 --aircraft bluerov --out 192.168.2.1:14550
    ```

--> Die Arbeitsschritte 2-4 wurden in einem Skript automatisiert. Dieses l??sst sich durch folgenden Befehl ausf??hren:
    ```
    ./startUp.bash
    ```

### Topside Computer
Je nach Anwendungsfall, kann man mit QGroundControll oder ROS arbeiten.

#### Sonar ??ber USBIP einbinden
Um das Sonar ??ber USBIp einzubinden, werden folgende Befehle ausgef??hrt.
```
sudo modprobe vhci-hcd
sudo usbip attach -r 192.168.2.2 -b 1-1.4
```

#### Launchfiles ??bersicht

Um nur das Videobild der Kamera zu erfassen, kann man folgendes Launchfile starten. Dies muss vor dem Start des bluerov2_node Launchfiles erfolgen.
```
roslaunch core video.launch
```
F??r eine manuelle Steuerung des BlueROVs mittels Joystick startet man
```
roslaunch core user_mav.launch
```
Das folgende Launchfile stellt elementare [Topics](https://github.com/Vincent1334/BlueROV2-ROS/tree/main/src/core/src/bridge) f??r den BlueRov2 zur Verf??gung.
```
roslaunch core bluerov2_node.launch
```
