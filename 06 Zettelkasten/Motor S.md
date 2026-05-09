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

- **Target ratio (i):** $15:1$
- **Nominal output torque in Nm:** $9 Nm$

### Core Geometry

| Symbol     | Param                                | Value       | Unit | Notes            |
| ---------- | ------------------------------------ | ----------- | ---- | ---------------- |
| $N_{l}$    | Number of lobes (cycloid disc teeth) | 15          | -    |                  |
| $N_{p}$    | Number of ring pins                  | $N_{l} + 1$ | -    | Always lobes + 1 |
| $N_{out}$  | Number of output shaft pins          | 6           | -    |                  |
| $R_{p}$    | Ring pin circle radius               | 27.5        | mm   |                  |
| $R_{out}$  | Output shaft pin radius              | 15.9        | mm   |                  |
| $R_{r}$    | Pin radius                           | 4; 3        | mm   | p;  out          |
| $e$        | Eccentricity                         | 1.15        | mm   | Typ. 0.5–2 mm    |
| $h_{disk}$ | Disk height                          | 10          | mm   |                  |

```

```
### Materials

| Part         | Material       |
| ------------ | -------------- |
| Disk         | Cast PA6       |
| Input shaft  | Nylon 12 Tough |
| Output shaft | Nylon 12 Tough |
| Housing      | Nylon 12 Tough |
### Derived Parameters

| Symbol          | Param                                             | Value  | Unit | Notes                                                 |
| --------------- | ------------------------------------------------- | ------ | ---- | ----------------------------------------------------- |
| $\alpha_{min}$  | Minimum pressure angle                            | 43.5   | °    |                                                       |
| $\alpha_{avrg}$ | Average pressure angle                            | 61.9   | °    |                                                       |
| $\eta_{fwd}$    | Forward Efficiency                                | 84.2   | %    | For $\mu = 0.1$                                       |
| $\eta_{back}$   | Backdrive Efficiency                              | 94.9   | %    | For $\mu = 0.1$                                       |
| $N_{eff}$       | Number of engaged ring pins                       | 4      | -    |                                                       |
| $F_{p,max}$     | Maximum ring pin normal force                     | 225.6  | N    |                                                       |
| $F_{out,max}$   | Maximum output shaft Pin force                    | 377.4  | N    |                                                       |
| $F_{bearing}$   | Eccentric bearing load                            | 1043.5 | N    | Safety factor: 2                                      |
| $E^*$           | Effective Elastic Modulus                         | 1173   | MPa  | Humid PA6 with steel pin                              |
| $p_{p,max}$     | Max ring pin Hertz Pressure (Disk <> Pin)         | 45.9   | MPa  | Assuming 1/4 of pins are engaged and Safety factor: 2 |
| $p_{out,max}$   | Max output shaft pin Hertz Pressure (Disk <> Pin) | 27.9   | MPa  |                                                       |
| $p_{p,mount}$   | Ring ping pressure on housing and lid             | 3.41   | MPa  |                                                       |
| $p_{out,mount}$ | Output shaft pin pressure on output shaft         | 13.47  | MPa  |                                                       |

