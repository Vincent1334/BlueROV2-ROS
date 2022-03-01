# BlueROV2 ROS

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

## Instalation

### Raspberry Pi

Als verwendetes Betriebsystem empfehle ich PI Os lite. Jedoch kann auch jedes andere System für den Pi genutzt werden.

#### MAVLink
Mavlink dient zur Kommunikation zwischen dem Topside Computer und dem Pixhawk. Die nötigen Bibliotheken können mit folgendem Befehl instaliert werden.

```
sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
```

Nun kann mit hilfe von pip die MAVlink Bibliothek installiert werden

```
pip3 install PyYAML mavproxy --user
```

Nach abschluss der Instalation muss man noch der gewünschten Shell die nötigen Befehle verlinken.

```
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
```

Wenn es zu Permission problemen kommt, muss man noch die Zugrifsrechte für den aktuellen Benutzer anpassen

```
sudo usermod -a -G dialout <username>
```

#### GStreamer
Der GStreamer wird dafür verwendet, den Video output der intigrierten Kamera als Stream dem Topside Computer zur verfügung zu stellen. Um den GStreamer mit dem gewünschten h264 Code zu verwenden, müssen folgende Plugins instaliert werden.

```
sudo apt-get install libgstreamer-plugins-base1.0-dev
sudo apt-get install libgstreamer-plugins-bad1.0-dev 
sudo apt-get install libgstreamer-plugins-good1.0-dev
sudo apt-get install libgstreamer-plugins-ugly1.0-dev 
```

#### USBIP
Das letzte Programm stellt die USB-Schnittstellen des Raspberry Pi dem Topside Computer zur verfügung. Als erstes muss linux-tools-generic installiert werden, welches unteranderm USBIP beinhaltet.

```
sudo apt-get install linux-tools-generic 
```

Nach der Installation muss man als erstes das für "usbip" wichtige Kernelmodul.

```
sudo modprobe usbip-host 
```
Um das Modul permanent zu laden, muss man /etc/modules editieren und usbip-host hinzufügen.

Als nächstes muss ein Link von usbutils nach hwdata angelegt werden, damit die USB-Geräte richtig angezeigt werden.

```
sudo mkdir /usr/share/hwdata/
sudo ln -sf /var/lib/usbutils/usb.ids /usr/share/hwdata/ 
```

Nun kann ein "usbip" Server gestartet werden, was natürlich nach jedem Neustart wiederholt werden muss, wenn man dies nicht in den Autostart einfügt.

```
sudo usbipd -D 
```

Nun kann mit der eigentlichen Konfiguration der USB-Geräte begonnen werden. Hierfür sollte man sich erst einmal einen Überblick über alle USB-Geräte verschaffen, dabei sollte man auf die Bus-ID achten.

```
lsusb 
```

Mit der ID oder dem Namen kann man nun in der Liste von "usbip" nach der richtigen Bus-ID (Zahl-Zahl; z.B. 1-2; nicht USB-ID!) suchen.

```
usbip list -l 
```

Nachdem man nun im nächsten Befehl die Bus-ID eingesetzt hat, ist der Server fertig.

```
sudo usbip bind -b "Bus-ID" 
```
#### Statische IP
Nun muss man dem Pi noch eine statische IP-Adress zuweisen. Dies geschieht über den Befehl

```
sudo nano /etc/dhcpcd.conf
```

In der Datei müssen folgende Einträge auskommentiert und verändert werden

```
interface eth0
static ip_address=192.168.2.2/24
static routers=192.168.2.1
```
Jetzt ist der Pi bereit zum einsatz.

### Topside Computer

Der Topside Computer benötigt eine aktuelle ROS instalation.

http://wiki.ros.org/ROS/Installation

#### QGroundControl

QGroundContol kann dazu verwendet werden, den BlueROV ohne ROS direkt fahrbereit zu machen. Das Programm verfügt über eine MAVlink schnittstelle, sowie Kamera und Joystick integration. Die instalation erfolgt über folgenden Befehl

```
sudo usermod -a -G dialout $USER
sudo apt-get remove modemmanager -y
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
sudo apt install libqt5gui5 -y
```

Im anschluss kann [QGroundContol](https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl.AppImage) heruntergeladen werden.
Um die Video funktion nutzen zu können, muss für den GStreamer die Plugins bad und libav instaliert werden.

#### Netzwerk

Der Topside Computer benötigt die statische IP-Adresse ***192.168.2.1*** um mit dem BlueROV komunizieren zu können.

---
## Inbetriebnahme

### BlueROV
1. Verbindungsaufbau mit dem BlueROV über SSH
2. Starten des Video streams
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
    mavproxy.py --baudrate 921600 --aircraft bluerov --out 192.168.2.1:14550
    ```

Die Arbeitschritte 1-4 können natürlich auch in einem Skript automatisiert werden.

### Topside Computer
Je nach anwendugsfall, kann man mit QGroundControll oder ROS arbeiten.

#### Launchfiles übersicht

Um nur das Videobid der Kamera zu erfassen, kann man folgendes launchfile starten
```
roslaunch core video.launch
```

