---
Topic:
  - "[[research]]"
related:
  - "[[existing humanoids]]"
contributor:
  - Andre auf dem Keller
date: 2026-05-01 10:27
tags:
---
# LIMS2 AMBIDEX
Is an humanoid torso system that has the actuators below the shoulder joints located at the base. This is a huge inspiration for the arm system we want to build.

## LIMBS2 AMBIDEX
Developed by Naver Labs for a DARPA Challenge in 2018, LIMS2 AMBIDEX is a robot featuring a humanoid upper body. It is characterized by a **base-fixed design** and **multi-motor joint mechanisms** in the elbow and wrist. The base-fixed design allows for an arm weight of only 2.6 kg, which is lighter than a human arm. 
## Mechanical Design 
### Specifications 
![[LIMS2_Ambidex_kinematics.png]]
A single robotic arm consists of 10 joints; these are coupled to provide a total of **7 degrees of freedom (DOF)**. 
![[LIMS2_AMBIDEX_Specifications.png]]
The specifications are also presented in tabular form within the paper. Particular attention should be paid to the high achievable joint velocities. While the low weight is impressive, it is partly due to the highly simplified hand design, specifically optimized for the target benchmark. 
### Shoulder 
![[LIMS2_AMBIDEX_shoulder.png]]
The **quasi-base-fixed actuators** are located in the shoulder. Although the shoulder motors are arranged in a **serial kinematics** configuration, four additional motors (one for the elbow and three for the wrist) are integrated there. The effective weight of the arm itself only begins after the shoulder joint. 
#### Motors
Large **hollow-shaft motors** are used for the shoulder, with a design focus on **[[backdriveability]]**. This is achieved by minimizing the **effective inertia** $J_{\text{eff}}$: $$J_{\text{eff}} = J_L + J_m N^2$$ Where $J_L$ represents the inertia of the arm. This is realized via a **quasi-[[direct drive]]** using a 10:1 planetary gearbox. A fan is implemented to cool a batch of five motors simultaneously. 
### Elbow 
![[LIMS2_AMBIDEX_ellbow.png|270]]
The **rolling joint** (1 DOF) in the elbow prevents **singularities** because the axes of rotation shift relative to one another. **Coupling wires** provide additional stability within the transmission, while the **exoskeletal structure** of the elbow allows for the routing of further cable drives to the wrist. 
### Wrist
![[LIMS2_AMBIDEX_wrist.png]]
The Wrist (3 DOF) consists of two **universal joints** coupled via cable drives such that **pitch and roll** occur at the same level. The **yaw** actuator is located at the proximal end of the forearm. 
### Gripper
The grippers are kept minimalist, as they were optimized solely for the "fan-opening" benchmark. For this purpose, a fork-shaped gripper and a two-finger gripper are available. 
## Communication and Control 
Robot communication utilizes the **[[EtherCAT]]** standard. The control system is implemented across various levels using **[[ROS2]]**. 
![[LIMS2 AMBIDEX ROS2.png]]







