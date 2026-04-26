---
Topic:
  - "[[motor]]"
related:
contributor:
  - Tobias Reich
date: 2026-04-26 14:33
tags:
---
# Cycloidal drive

![[cycloid-drive.jpg]]
## Transmission ratio
With $N_{l}$ being the number of lobes on the cycloidal disk and $N_{p}$ being the number of pins in the outer ring, the transmission ratio is defined as $$R = \frac{N_{l}}{N_{p} - N_{l}}$$ In most cases $n_p = n_l + 1$ which will result in a transmission of $n_{l}:1$

## Eccentricity
The eccentricity $e$ defines how much the cycloidal disks center point is offset from the center axis, and therefore how much the disk engages with the ring gear pins.
A lower $e$ results in less unbalance but also a lower pressure angle between disk and pins.

## Pressure angle
>The pressure angle is defined as the angle between the common normal at the cycloid–pin contact and the instantaneous velocity direction at that point. **In other words,** it determines how effectively the contact force is converted into torque. **When the pressure angle is lower** within the working region, several benefits occur: load transmission improves, sliding is reduced, efficiency increases, heat generation decreases, wear is minimized, and transmission error is lowered.
https://mevirtuoso.com/gears/what-is-pressure-angle-and-why-its-important-cycloidal-drives

The pressure angle is directly impacted by:
- **Eccentricity $e$**
- Ring gear diameter $D$

[This simulator](https://mevirtuoso.com/cycloidal-drive/) Numerically calculates the pressure angle for a given configuration as a function of input rotation angle.

TODO: Impact of pressure angle on backdrivability
### Number of Engaged Pins (Rule of Thumb)
$$N_{eff} \approx \frac{N_{p}}{4}$$
- Half of all pins lie in the load-bearing zone ($\alpha < 90°$)
- Of those, only $\approx 50\%$ carry significant load due to manufacturing tolerances $$N_{eff} = \tfrac{N_{p}}{2} \cdot \tfrac{1}{2} = \frac{N_{p}}{4}$$
## Maximum force calculations
### Maximum Pin normal force
Conservative estimate including a peak factor of 2 for uneven load distribution among engaged pins: $$F_{n,max} = \frac{2 \cdot T_{out}}{N_{eff} \cdot R_p \cdot \cos(\alpha_{min})}$$where $\alpha_{min}$ is the minimum pressure angle within the load-bearing region (read from the $\alpha(\theta)$ curve).
### Maximum output shaft Pin force
$$F_{max} = \frac{4\, T_{out}}{N_{out} \cdot R_{out}}$$
## Hertz Pressure (Pin–Hole, line contact)
### Effective Elastic Modulus $E^*$
For contact between two bodies with different materials: $$E^* = \frac{E_1 \cdot E_2}{E_2 (1 - \nu_1^2) + E_1 (1 - \nu_2^2)}$$where $E_i$ and $\nu_i$ are Young's modulus and Poisson's ratio of body $i$. For identical materials this reduces to: $$E^* = \frac{E}{2(1 - \nu^2)}$$
Equivalent radius for convex-concave contact:$$R_{eq} = \frac{R_{pin} \cdot R_{hole}}{R_{hole} - R_{pin}}$$
Maximum contact pressure:$$p_{max} = \sqrt{\frac{F \cdot E^*}{\pi \cdot b \cdot R_{eq}}}$$ with $b$ = pin contact length