---
Topic:
  - "[[arm]]"
related:
contributor:
  - Andre auf dem Keller
date: 2026-05-02 19:52
tags:
---
# Dyneema
Dyneema, often used as fishing line, is a based on a polymer that possesses an extremely high breaking load relative to its diameter.

## Non-linearity
Dyneema tends toward non-linear elongation and creep (cold flow) at loads exceeding 20% of its breaking strength. Therefore, it is advisable to dimension Dyneema based on 20% of its breaking load. This allows only linear elongation to be incorporated into the robot model.

### Load Ranges
The following are general guidelines for cross-section dimensioning. It needs to be noted that they are very conservative even if adjusting for 20% of the breaking limit. This should just serve as orientation. 

#### Fine Motor Skills
* **Load Range:** 5 N to 50 N
* **Recommended Cross-section:** 0.5 mm to 1.0 mm
* **Body Part:** Wrist, fingers, head
* **Reason:** The cables often must run over extremely small pulleys (radii < 5 mm). A thicker cable would possess too much inherent stiffness (bending resistance) and unnecessarily strain the fine motors.

#### Gross Motor Skills
* **Load Range:** 40 N to 500 N
* **Cross-section:** 1.5 mm to 2.5 mm
* **Body Part:** Forearm, upper arm, shoulder
* **Reason:** Larger cross-sections offer robustness against abrasion, higher limits for linear elasticity, and load capacities suitable for lever arms up to 1 m.

#### High Loads
* **Load Range:** 500 N to 2,500 N
* **Cross-section:** 3 mm to 5 mm
* **Body Part:** Legs, hips, ankles
* **Reason:** The seemingly oversized cross-sections provide full robustness against creep and high safety against failure, as a failure in the legs can cause significant damage.

### Pulleys
When choosing pulleys, it is important to note that they should have approximately 15 to 20 times the diameter of the cable to minimize wear and the cable's inherent stiffness.

### Splicing Attachment
Dyneema should be attached using **splicing**, as knots can reduce the breaking load by up to 50%. Furthermore, splicing maintains linear elongation, whereas a knot acts like a non-linear spring. By twisting the strands into each other during splicing, the material properties regarding elongation are preserved.








