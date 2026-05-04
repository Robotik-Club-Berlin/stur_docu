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
# Motor L dimensions

## Cycloidal drive
Look at [[Cycloidal Drive]] for full explanation of all calculations.
In the workspaces `script` folder there is a python script that does most of the calculations for you
### Validation list

- [ ] Disk material must hold up to $p_{p,max}$ and $p_{p,max}$
- [ ] Input shaft must hold up to $F_{bearing,max}$ (Fusion 360 Study)
- [ ] Bearing must gold up to $F_{bearing,max}$
- [ ] Output shaft pin contacts must hold up to $F_{out,max}$
- [ ] Housing pin contacts must hold up to $F_{p,max}$

### Requirements

- **Target ratio (i):** $x:x$
- **Nominal output torque [Nm]:** $xN$

### Core Geometry

| Symbol     | Param                                | Value       | Unit | Notes            |
| ---------- | ------------------------------------ | ----------- | ---- | ---------------- |
| $N_{l}$    | Number of lobes (cycloid disc teeth) |             | -    |                  |
| $N_{p}$    | Number of ring pins                  | $N_{l} + 1$ | -    | Always lobes + 1 |
| $N_{out}$  | Number of output shaft pins          |             | -    |                  |
| $R_{p}$    | Ring pin circle radius               |             | mm   |                  |
| $R_{out}$  | Output shaft pin radius              |             | mm   |                  |
| $R_{r}$    | Pin radius                           |             | mm   | Roller radius    |
| $e$        | Eccentricity                         |             | mm   | Typ. 0.5–2 mm    |
| $h_{disk}$ | Disk height                          |             | mm   |                  |

```

```
### Materials

| Part         | Material |
| ------------ | -------- |
| Disk         |          |
| Input shaft  |          |
| Output shaft |          |
| Housing      |          |
### Derived Parameters

| Symbol          | Param                                             | Value | Unit | Notes                                                 |
| --------------- | ------------------------------------------------- | ----- | ---- | ----------------------------------------------------- |
| $\alpha_{min}$  | Minimum pressure angle                            |       | °    |                                                       |
| $\alpha_{avrg}$ | Average pressure angle                            |       | °    |                                                       |
| $\eta_{fwd}$    | Forward Efficiency                                |       | %    | For $\mu = 0.1$                                       |
| $\eta_{back}$   | Backdrive Efficiency                              |       | %    | For $\mu = 0.1$                                       |
| $N_{eff}$       | Number of engaged ring pins                       |       | -    |                                                       |
| $F_{p,max}$     | Maximum ring pin normal force                     |       | N    |                                                       |
| $F_{out,max}$   | Maximum output shaft Pin force                    |       | N    |                                                       |
| $F_{bearing}$   | Eccentric bearing load                            |       | N    | Safety factor: 2                                      |
| $E^*$           | Effective Elastic Modulus                         |       | MPa  | xx with steel pin                                     |
| $p_{p,max}$     | Max ring pin Hertz Pressure (Disk <> Pin)         |       | MPa  | Assuming 1/4 of pins are engaged and Safety factor: 2 |
| $p_{out,max}$   | Max output shaft pin Hertz Pressure (Disk <> Pin) |       | MPa  |                                                       |
| $p_{p,mount}$   | Ring ping pressure on housing and lid             |       | MPa  |                                                       |
| $p_{out,mount}$ | Output shaft pin pressure on output shaft         |       | MPa  |                                                       |

