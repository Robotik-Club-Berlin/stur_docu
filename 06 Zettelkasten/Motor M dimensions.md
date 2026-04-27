---
Topic:
  - "[[motor]]"
related:
  - "[[Cycloidal Drive]]"
contributor:
  - Tobias Reich
date: 2026-04-27 22:43
tags:
---
# Motor M dimensions

## Cycloidal drive:
Look at [[Cycloidal Drive]] for full explanation of all calculations.
### Validation list

- [ ] Disk material must hold up to $p_{p,max}$ and $p_{p,max}$
- [ ] Input shaft must hold up to $F_{bearing,max}$ (Fusion 360 Study)
- [ ] Bearing must gold up to $F_{bearing,max}$
- [ ] Output shaft pin contacts must hold up to $F_{out,max}$
- [ ] Housing pin contacts must hold up to $F_{p,max}$

### Requirements

- **Target ratio (i):** $20:1$
- **Nominal output torque [Nm]:** $20N$
- **Peak output torque [Nm]:** $80Nm$

### Core Geometry

| Symbol     | Param                                | Value       | Unit | Notes            |
| ---------- | ------------------------------------ | ----------- | ---- | ---------------- |
| $N_{l}$    | Number of lobes (cycloid disc teeth) | 20          | -    |                  |
| $N_{p}$    | Number of ring pins                  | $N_{l} + 1$ | -    | Always lobes + 1 |
| $N_{out}$  | Number of output shaft pins          | 6           | -    |                  |
| $R_{p}$    | Ring pin circle radius               | 42.5        | mm   |                  |
| $R_{out}$  | Output shaft pin radius              | 28.5        | mm   |                  |
| $R_{r}$    | Pin radius                           | 8           | mm   | Roller radius    |
| $e$        | Eccentricity                         | 1.4         | mm   | Typ. 0.5–2 mm    |
| $h_{disk}$ | Disk height                          | 9           | mm   |                  |

```
((42.5)*cos(t))-(4*cos(t+arctan(sin((1-21)*t)/(((42.5)/(1.4*21))-cos((1-21)*t)))))-(1.4*cos(21*t))

(-(42.5)*sin(t))+(4*sin(t+arctan(sin((1-21)*t)/(((42.5)/(1.4*21))-cos((1-21)*t)))))+(1.4*sin(21*t))
```

### Derived Parameters

| Symbol          | Param                          | Value | Unit | Notes           |
| --------------- | ------------------------------ | ----- | ---- | --------------- |
| $\alpha_{min}$  | Minimum pressure angle         | 43.6  | °    |                 |
| $\alpha_{avrg}$ | Average pressure angle         | 61.8  | °    |                 |
| $\eta_{fwd}$    | Forward Efficiency             | 84.3  | %    | For $\mu = 0.1$ |
| $\eta_{back}$   | Backdrive Efficiency           | 94.9  | %    | For $\mu = 0.1$ |
| $N_{eff}$       | Number of engaged rong pins    | 5     | -    |                 |
| $F_{p,max}$     | Maximum ring pin normal force  | 260   | N    |                 |
| $F_{out,max}$   | Maximum output shaft Pin force | 468   | N    |                 |
### Materials

| Part         | Material             |
| ------------ | -------------------- |
| Disk         | Aluminum             |
| Input shaft  | Nylon 12 Tough (SLS) |
| Output shaft | Nylon 12 Tough (SLS) |
| Housing      | Nylon 12 Tough (SLS) |
### Loads
#### Ring and output pin pressure
With $E_{Nylon\_12\_tough} = 1450 MPa$ , $E_{steel} = 200000MPa$ , $\nu_{Nylon\_12\_tough} = 0.4$ and $\nu_{steel} = 0.3$:
$$E^* = 1712MPa$$ For output pin pressure (convex - concave):$$R_{eq} = 15.4$$
Maximum contact pressures:$$p_{p,max} = 62,7MPa$$ $$p_{out,max} = 42.9MPa$$
#### Eccentric bearing load

With safety factor $K = 2$:$$F_{bearing,max} = 1333N$$