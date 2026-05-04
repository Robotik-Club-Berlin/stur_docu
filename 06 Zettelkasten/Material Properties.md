---
Topic:
related:
contributor:
date: "2026-04-28 09:29"
tags:
---
# Material Properties

## Mechanical Properties

| Material                       | E [MPa] | ν     | σ_y [MPa] | UTS [MPa] | Notes                  |
| ------------------------------ | ------- | ----- | --------- | --------- | ---------------------- |
| Steel                          | 200000  | 0.30  | -         | -         | Pin material           |
| Nylon 12 Tough (Formlabs SLS)  | 1450    | 0.40* | -         | 42        | ν from PA12 literature |
| Cast PA6 (dry)                 | 3000    | 0.39  | 65        | -         |                        |
| Cast PA6 (humid)               | 1000    | 0.39  | 45        | -         |                        |
| POM                            | 2700    | 0.39  | 66        | -         |                        |
| EN AW-5083<br>(AlMg4,5Mn0,7)   | 70000   | 0.33  | 145       | 270       |                        |
| EN AW-6060 T66 (AlMgSi0.5)     | 70000   | 0.33  | 160       | 215       |                        |
| EN AW-2007 T3<br>(AlCu4PbMgMn) | 70000   | 0.33  | 300       | 370       | Great Machinability    |


## Reduced Contact Modulus E* (paired with steel pin, E=210 GPa, ν=0.30)

| Material                        | E* [MPa] |
| ------------------------------- | -------- |
| Nylon 12 Tough                  | 1713     |
| Cast PA6 (dry)                  | 3485     |
| Cast PA6 (humid)                | 1173     |
| POM                             | 3141     |
| Aluminium (all alloys, ~70 GPa) | ~58000   |
| Steel-on-steel (reference)      | 115400   |

## Load Case Reference — Which Limit to Compare Against

Different failure modes require different allowables. Pick the one matching your loading.

| Load type                                            | Compare against                  | Notes                                   |
| ---------------------------------------------------- | -------------------------------- | --------------------------------------- |
| Tension / compression (uniaxial, ductile metal)      | $\sigma_y$                       | Yield = onset of plastic deformation    |
| Tension (brittle material, e.g. cast iron, ceramics) | UTS / safety factor              | No meaningful yield, fracture-dominated |
| Tension (polymers)                                   | UTS or yield, whichever is lower | Many polymers yield ≈ UTS               |
| Pure shear                                           | $0.5 \cdot \sigma_y$             | Or 0.5 · σ_y (Tresca, conservative)     |
| Hertzian contact (line, point)                       | p_max ≈ 1.6 · σ_y (static)       | Hydrostatic component allows higher p   |
| Hertzian contact (rolling/repeated)                  | p_max ≈ 1.0 · σ_y                | Shakedown limit, no plastic ratcheting  |



### Safety factors — typical ranges

| Application context                        | Safety factor on σ_y          |
| ------------------------------------------ | ----------------------------- |
| Well-known loads, ductile material, static | 1.5 – 2.0                     |
| Variable loads, fatigue concerns           | 2.0 – 4.0                     |
| Impact / shock loading                     | 3.0 – 5.0                     |
| Brittle materials                          | 4.0 – 8.0 (apply on UTS)      |


### Quick decision tree

1. **Is it metal or polymer?** Polymers: usually compare to UTS, expect creep. Metals: σ_y is the primary allowable.
2. **Static or dynamic?** Dynamic → fatigue analysis, not just σ_y.
3. **Multiaxial?** Use von Mises (ductile) or max principal stress (brittle).
4. **Contact / bearing?** Use Hertzian or bearing-specific allowables, not direct σ_y comparison.
5. **Long duration at temperature?** Creep dominates → use time-dependent allowables.

## Formulas

Reduced contact modulus:

$$E^* = \frac{E_1 \cdot E_2}{E_2(1-\nu_1^2) + E_1(1-\nu_2^2)}$$

Equivalent radius (convex pin in concave hole):

$$R_{eq} = \frac{R_{pin} \cdot R_{hole}}{R_{hole} - R_{pin}}$$

Maximum Hertzian line contact pressure:

$$p_{max} = \sqrt{\frac{F \cdot E^*}{\pi \cdot b \cdot R_{eq}}}$$

Von Mises equivalent stress (3D):

$$\sigma_v = \sqrt{\tfrac{1}{2}\left[(\sigma_1-\sigma_2)^2 + (\sigma_2-\sigma_3)^2 + (\sigma_3-\sigma_1)^2\right]}$$