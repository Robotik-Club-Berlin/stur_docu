---
Topic:
  - "[[arm]]"
  - "[[ideas]]"
related:
  - "[[Calculations Torque]]"
contributor:
  - Andre auf dem Keller
date: 2026-05-08 11:00
---
# half serial shoulder kinematic

### what is the idea?
To change the planned Kinematic in [[Calculations Torque]] to a half serial kinematic using a bowden cable to get the [[Dynema]] Rope of the second joint onto a [[pulley]] instead of the second joint integrated directly. 

![[half serial shoulder design sketch.png|341]]

As can be seen in the sketch above. The new half serial design (sketch higher part) is closely related to the old one (sketch lower part). But has several advantages:
1. [[bowden cable]] of the elbow can be layed through the neutral axis
2. moving mass of the system decreases
3. cables for sensors and power supply can be layed through the [[neutral axis]]
4. construction space decreases: Because the pulley can be smaller than the hole motor a design that closly integrated the 3rd joint near the second one is feasible
5. [[odrive motor driver]] for the second joint does not effect [[ROM-Range of Motion]]

