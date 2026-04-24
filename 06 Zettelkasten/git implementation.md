---
Topic:
  - "[[obsidian]]"
related:
  - "[[readme]]"
  - "[[quick guide]]"
contributor:
  - Andre auf dem Keller
date: 2026-04-19 15:33
---
# git implementation

After Using the [[Git Setup Guide]] you can update the Git repo for this vault using vs code or the terminal directly.

The structur of the git is something like that:
Stur(group)
	StuR (Repo)
		doc (Repo)  *group obsidan vault*
		firmware (group) *protocolls for boards*
			repo
			...
		software (group) *ros, regelung...*
			repo
			...
		cad (group) *3D models*
			repo
			...
		electronics (group) *pcb boards, schematics...*
			repo
			...
			
	
Using [[VCS-Version Control System]] tools, the folders containing our private files are linked to individual repositories. Dividing the files into separate repositories prevents merge conflicts across different topics by creating a separate repository for each topic. 











