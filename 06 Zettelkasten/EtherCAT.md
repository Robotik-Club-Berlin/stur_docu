---
Topic:
  - "[[arm]]"
  - "[[Communication System]]"
related:
contributor:
  - Andre auf dem Keller
date: 2026-05-02 19:12
tags:
---
# EtherCAT
is the standard [[Communication System]] for high end robotics due to it's fast fixed cycle times and it's data transmission capacity. It stands for [[Ethernet]] for Control Automation Technology.

## Difference to Ethernet
While in Ethernet the Master sends the same signal to all slaves and with it who can receive the message or talk back.![[Ethernet Communication.png|360]]

EtherCAT work on the fly. Every Signal send by the Master is passed through every Slave and while the it passed the Slave can manipulate it. 
![[EtherCAT Communication.png|328]]
## Daisy Chain and Ring Topology
The most efficient setup is a **Daisy Chain** connection of the slaves. However, for redundancy and fault localization, it can be beneficial to connect the last slave to a second port on the master PC. This transforms the chain of slaves into a **Ring** topology back to the master.
Generally, EtherCAT offers great topological flexibility.
## Performance Data
| Feature                | Value / Description                                        |
| :--------------------- | :--------------------------------------------------------- |
| Transmission Rate      | 100 Mbit/s (Full Duplex)                                   |
| Cycle Time             | Up to 12.5 $\mu s$ (typically 250 $\mu s$ to 1 ms)         |
| Number of Nodes        | Up to 65,535 nodes in one segment                          |
| Physical Layer         | Standard Ethernet (IEEE 802.3), CAT5 cable or fiber optics |
| Distance between Nodes | Up to 100 m with copper (100BASE-TX)                       |
| Synchronization        | Jitter significantly below 1 $\mu s$                       |
## Future Development
Developments include 1G up to 10G EtherCAT or SPE (Single Pair Ethernet). Additionally, PoE (Power over Ethernet) exists to provide power supply within the same cable.

## Implementation for PCB
The implementation of an **EtherCAT Slave Controller (ESC)** is significantly more complex than designing a controller using the CAN bus standard. However, there are providers offering dedicated modules specifically for EtherCAT that can be interfaced directly with motor drivers.

## Komplex Implementation
This is the answer of a forum question on how to implement EtherCAT:
>For an ethercat slave controller you'll need ethernet hardware, custom ASIC specific for the job and firmware with some wizardry. More specifically: a couple of low latency (plus fast link down detection) ethernet phy, a dedicated mac ic to handle frame routing and on-the-fly data processing plus a CPU or micro running the slave protocol fine tuned and tailored to fit and describe your system. Then you should read and understand the over-complicated and obfuscated german-austrian documentation. Then write an xml file describing  the slave interface. Also, you should buy from Beckhoff some magic numbers (vendor ID), join the ethercat technology group and buy a conformance test software.

## [[TSN-Time Sensitive Networking]] 
ist ein open Standard from [[IEEE]] and promises time critical [[Ethernet]]. 









