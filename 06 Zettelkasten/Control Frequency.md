---
date: 19.06.2026 10:40
tags:
  - topic/praxisphase-hrob
  - topic/mrk
  - field/bachelor
  - topic/bachelor-research
---
[^5]# Control Frequency
[^1][^2][^3][^4]
In other words, how often per second a digitally controlled system adapts its behavior based on newly acquired and processed data.

[^2] already shows that a high sampling rate, together with a correspondingly adapted control frequency, improves the maximum stiffness in the control of a robotic arm. In fact, the maximum stiffness of a digitally controlled system is directly dependent on the sampling rate. This is because the higher control frequency made possible by the increased sampling rate leads to a significantly faster response to external disturbances[^3]. For the same reason, the maximum damping of a digital system is also dependent on the sampling rate.

### Interaction with Humans
Human haptic sensing responds extremely sensitively to small dynamic changes in the range of 100Hz to 1kHz[^3]. For fluid human-robot interaction, a control frequency above this range should be targeted. This effect specifically arises only through haptic interaction; for control that appears visually continuous, a lower control frequency is sufficient.

### Dynamic Capabilities
To emulate the dynamics of a spring, even higher control frequencies in the range of 10kHz are required[^1]. However, tasks such as balancing a humanoid already demand control frequencies of at least 100 Hz for the overall kinematics. The following table provides an overview of typical control frequencies of humanoid robots for different control levels[^4].

| Control Task        | Control Frequency | Cycle Time |
| -------------------- | ------------------ | ---------- |
| Current Control      | 10-20kHz            | 0.05-0.1ms |
| Velocity Control      | 1-5 kHz             | 0.5-1ms    |
| Position Control      | 100Hz-1kHz          | 1-10ms     |
| Sensor Fusion         | 50-200Hz            | 5-20ms     |
| Trajectory Planning  | 10-100Hz            | 10-100ms   |
| Visual Processing    | 30-60 Hz            | 16-32ms    |


## References
[^1]: [[mit-cheetah-actuator.pdf]]

[^2]: [[Choosing_sampling_rates_for_robot_control.pdf]]

[^3]: [[Factors_affecting_the_Z-Width_of_a_haptic_display.pdf]]

[^4]: [[The-Importance-of-Precision-Timing-in-Humanoids-An-overview.pdf]]

[^5]: 
