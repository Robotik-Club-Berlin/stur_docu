---
Topic:
  - "[[motor]]"
related:
  - "[[Cycloidal Drive]]"
  - "[[Material Properties]]"
contributor:
  - Tobias Reich
date: 2026-04-28 15:04
tags:
---
# Dimensions

## Cycloidal drive
Look at [[Cycloidal Drive]] for full explanation of all calculations.
In the workspaces `script` folder there is a python script that does most of the calculations for you
### Validation list

- [x] Disk material must hold up to $p_{p,max}$ and $p_{p,max}$
- [x] Input shaft must hold up to $F_{bearing,max}$ (Fusion 360 Study)
- [x] Bearing must gold up to $F_{bearing,max}$
- [x] Output shaft pin contacts must hold up to $F_{out,max}$
- [x] Housing pin contacts must hold up to $F_{p,max}$

### Requirements

- **Target ratio (i):** $20:1$
- **Nominal output torque in Nm:** $60Nm$

### Core Geometry

| Symbol     | Param                                | Value       | Unit | Notes            |
| ---------- | ------------------------------------ | ----------- | ---- | ---------------- |
| $N_{l}$    | Number of lobes (cycloid disc teeth) | 20          | -    |                  |
| $N_{p}$    | Number of ring pins                  | $N_{l} + 1$ | -    | Always lobes + 1 |
| $N_{out}$  | Number of output shaft pins          | 8           | -    |                  |
| $R_{p}$    | Ring pin circle radius               | 50.0        | mm   |                  |
| $R_{out}$  | Output shaft pin radius              | 30.0        | mm   |                  |
| $R_{r}$    | Pin radius                           | 5.0         | mm   | Roller radius    |
| $e$        | Eccentricity                         | 2.25        | mm   |                  |
| $h_{disk}$ | Disk height                          | 20.0        | mm   |                  |

```
((50.0)*cos(t))-(4*cos(t+arctan(sin((1-21)*t)/(((50.0)/(2.25*21))-cos((1-21)*t)))))-(2.25*cos(21*t))

(-(50.0)*sin(t))+(4*sin(t+arctan(sin((1-21)*t)/(((50.0)/(2.25*21))-cos((1-21)*t)))))+(2.25*sin(21*t))
```
### Materials

| Part         | Material             |
| ------------ | -------------------- |
| Disk         | PA6                  |
| Input shaft  | Nylon 12 Tough (SLS) |
| Output shaft | Nylon 12 Tough (SLS) |
| Housing      | Nylon 12 Tough (SLS) |
### Derived Parameters

| Symbol          | Param                                             | Value  | Unit | Notes                                                 |
| --------------- | ------------------------------------------------- | ------ | ---- | ----------------------------------------------------- |
| $\alpha_{min}$  | Minimum pressure angle                            | 20.0   | °    |                                                       |
| $\alpha_{avrg}$ | Average pressure angle                            | 51.0   | °    |                                                       |
| $\eta_{fwd}$    | Forward Efficiency                                | 89.0   | %    | For $\mu = 0.1$                                       |
| $\eta_{back}$   | Backdrive Efficiency                              | 92.5   | %    | For $\mu = 0.1$                                       |
| $N_{eff}$       | Number of engaged ring pins                       | 5.2    | -    |                                                       |
| $F_{p,max}$     | Maximum ring pin normal force                     | 486.5  | N    |                                                       |
| $F_{out,max}$   | Maximum output shaft Pin force                    | 1016.9 | N    |                                                       |
| $F_{bearing}$   | Eccentric bearing load                            | 2666.7 | N    | Safety factor: 2                                      |
| $E^*$           | Effective Elastic Modulus                         | 3256   | MPa  | xx with steel pin                                     |
| $p_{p,max}$     | Max ring pin Hertz Pressure (Disk <> Pin)         | 71.0   | MPa  | Assuming 1/4 of pins are engaged and Safety factor: 2 |
| $p_{out,max}$   | Max output shaft pin Hertz Pressure (Disk <> Pin) | 39.6   | MPa  |                                                       |
| $p_{p,mount}$   | Ring ping pressure on housing and lid             | 4.5    | MPa  |                                                       |
| $p_{out,mount}$ | Output shaft pin pressure on output shaft         | 14.1   | MPa  |                                                       |

## BOM

```csvtable
source: 02 sources/bom/Motor_L_BOM.csv
```