# Exomars-Motherboard-firmware

## Abstract

In this group project, I contributed by writing the firmware for the motherboard of the rover.
This firmware is based on a PIC microcontroller, and its main purpose is to get inputs from the user (bluetooth communication) and control all the slave components:
- motors for motion: the user can set a path for the rover, or just send data about direction+speed
- drill & drawer (in the real rover, the drill is used to collect samples)
- cameras: the user can rotate the cameras up to 180 degrees.

The communication is committed to the CAN (Controller Area Network) bus, which is a robust vehicle bus standard designed to allow microcontrollers and devices to communicate with each other's applications without a host computer. Every device on the network had a unique ID, and a priority.
An important part of the project,was to design a robust communication protocol, defining the data that every device had to sent, and vice-versa.




## Real Exomars Rover

![](https://github.com/hamzahaddaoui/Exomars-Motherboard-firmware/blob/main/Documentation/real.jpg)

## Some photos of the developed rover

![](https://github.com/hamzahaddaoui/Exomars-Motherboard-firmware/blob/main/Documentation/pic1.png)
![](https://github.com/hamzahaddaoui/Exomars-Motherboard-firmware/blob/main/Documentation/pic2.png)




