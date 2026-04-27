---
Topic:
  - "[[motor]]"
  - "[[research]]"
related:
contributor:
  - Tobias Reich
date: 2026-04-27 11:05
tags:
---
# FEM Analysis tutorial

Each component of the robot should be as light as possible. To. achieve this goal, we can use FEM analysis to optimize the material distribution in our parts. This is a step by step guide on how to optimize your parts using FEM.

## Step 1 (Create a study):
Open you part in Fusion 360 and switch to the `Simulation` section.
![[Bildschirmfoto 2026-04-27 um 11.16.19.png]]
Then select `Shape Optimization` as study type.![[Bildschirmfoto 2026-04-27 um 11.17.02.png]]
## Step 2 (Prepare the study):

1. Select the Body and Material (Should be already set, but check if you want change these parameters)![[Bildschirmfoto 2026-04-27 um 11.21.01.png]]
2. Hover over `Mesh` and click on the pen icon. In the setting you can define the size of one mesh. A rule of thumb is to hav alt least 4 individual triangles over the shortest span of your part.![[Bildschirmfoto 2026-04-27 um 11.23.51.png]]
   Click on `OK` then right-click `Mesh` and select `Generate Mesh`. The result should look something like this:![[Bildschirmfoto 2026-04-27 um 11.31.11.png]]
   Look how the mesh has 4 segments on the brim of my part.
3. Create a new `Structural Contraint`![[Bildschirmfoto 2026-04-27 um 11.32.48.png]]
   In my case i selected the screw faces my part will be fixed with![[Bildschirmfoto 2026-04-27 um 11.33.39.png]]
4. Add a new `Structural Load` ![[Bildschirmfoto 2026-04-27 um 11.41.10.png]]
5. (Optional) Create regions that will not be affected by the optimization by creating a new `Preserved Region`![[Bildschirmfoto 2026-04-27 um 11.42.59.png]]
   Here you add a body, in which the part will not be changed![[Bildschirmfoto 2026-04-27 um 11.43.49.png]]

## Step 3 (Run the study)
Click on `Solve`![[Bildschirmfoto 2026-04-27 um 11.50.08.png]]and select the studies you want to run![[Bildschirmfoto 2026-04-27 um 11.50.50.png]]
Note: Student accounts have infinite cloud credits.

## Step 4 (View the results and optimize your part)
After the calculations are done, open the result and check if it seem plausible.![[Bildschirmfoto 2026-04-27 um 14.59.14.png]]
On the right side you can adjust the slider to achieve your desired degree of optimization. Once you are happy you can promote the generated mesh to your Design Workspace![[Bildschirmfoto 2026-04-27 um 15.00.01.png]]
There you can overlay it with the original part and optimize your part.![[Bildschirmfoto 2026-04-27 um 15.00.26.png]]
## Step 4 (Optional sanity check)
To be absolutely sure your modified part holds up to the applied load, you can create a new `Static Stress` Study and copy the Load Case from your first study.