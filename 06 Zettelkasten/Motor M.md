---
Topic:
  - "[[motor]]"
related:
  - "[[Cycloidal Drive]]"
  - "[[Material Properties]]"
  - "[[Motor_M_BOM.csv]]"
  - "[GitHub](https://github.com/Robotik-Club-Berlin/motor_M/tree/main)"
contributor:
  - Tobias Reich
date: 2026-04-27 22:43
tags:
---
# Dimensions

## Cycloidal drive
Look at [[Cycloidal Drive]] for full explanation of all calculations.
In the workspace's `script` folder there is a python script that does most of the calculations for you
### Validation list

- [x] Disk material must hold up to $p_{p,max}$ and $p_{p,max}$
- [x] Input shaft must hold up to $F_{bearing,max}$ (Fusion 360 Study)
- [x] Bearing must gold up to $F_{bearing,max}$
- [x] Output shaft pin contacts must hold up to $F_{out,max}$
- [x] Housing pin contacts must hold up to $F_{p,max}$

### Requirements

- **Target ratio (i):** $20:1$
- **Nominal output torque Nm:** $20Nm$

### Core Geometry

| Symbol     | Param                                | Value       | Unit | Notes            |
| ---------- | ------------------------------------ | ----------- | ---- | ---------------- |
| $N_{l}$    | Number of lobes (cycloid disc teeth) | 19          | -    |                  |
| $N_{p}$    | Number of ring pins                  | $N_{l} + 1$ | -    | Always lobes + 1 |
| $N_{out}$  | Number of output shaft pins          | 6           | -    |                  |
| $R_{p}$    | Ring pin circle radius               | 42.5        | mm   |                  |
| $R_{out}$  | Output shaft pin radius              | 29.5        | mm   |                  |
| $R_{r}$    | Pin radius                           | 8           | mm   | Roller radius    |
| $e$        | Eccentricity                         | 1.5         | mm   | Typ. 0.5–2 mm    |
| $h_{disk}$ | Disk height                          | 10          | mm   |                  |

```
((42.5)*cos(t))-(4*cos(t+arctan(sin((1-21)*t)/(((42.5)/(1.4*21))-cos((1-21)*t)))))-(1.4*cos(21*t))

(-(42.5)*sin(t))+(4*sin(t+arctan(sin((1-21)*t)/(((42.5)/(1.4*21))-cos((1-21)*t)))))+(1.4*sin(21*t))
```
### Materials

| Part         | Material             |
| ------------ | -------------------- |
| Disk         | Cast PA6             |
| Input shaft  | Nylon 12 Tough (SLS) |
| Output shaft | Nylon 12 Tough (SLS) |
| Housing      | Nylon 12 Tough (SLS) |
### Derived Parameters

| Symbol          | Param                                             | Value  | Unit | Notes                                                 |
| --------------- | ------------------------------------------------- | ------ | ---- | ----------------------------------------------------- |
| $\alpha_{min}$  | Minimum pressure angle                            | 42.5   | °    |                                                       |
| $\alpha_{avrg}$ | Average pressure angle                            | 61.3   | °    |                                                       |
| $\eta_{fwd}$    | Forward Efficiency                                | 84.6   | %    | For $\mu = 0.1$                                       |
| $\eta_{back}$   | Backdrive Efficiency                              | 94.8   | %    | For $\mu = 0.1$                                       |
| $N_{eff}$       | Number of engaged ring pins                       | 5.2    | -    |                                                       |
| $F_{p,max}$     | Maximum ring pin normal force                     | 243.2  | N    |                                                       |
| $F_{out,max}$   | Maximum output shaft Pin force                    | 452.0  | N    |                                                       |
| $F_{bearing}$   | Eccentric bearing load                            | 1333.3 | N    | Safety factor: 2                                      |
| $E^*$           | Effective Elastic Modulus                         | 3256   | MPa  | PA6 with steel pin                                    |
| $p_{p,max}$     | Max ring pin Hertz Pressure (Disk <> Pin)         | 83.7   | MPa  | Assuming 1/4 of pins are engaged and Safety factor: 2 |
| $p_{out,max}$   | Max output shaft pin Hertz Pressure (Disk <> Pin) | 59.6   | MPa  |                                                       |
| $p_{p,mount}$   | Ring ping pressure on housing and lid             | 5.1    | MPa  | $l = 8mm$                                             |
| $p_{out,mount}$ | Output shaft pin pressure on output shaft         | 10.7   | MPa  | $l = 7mm$                                             |



# BOM

```csvtable
source: 02 sources/bom/Motor_M_BOM.csv
```
