---
Topic:
related:
contributor:
date: "2026-04-26 23:48"
tags:
---
# Git onboarding
## 1. Install Git

### Windows

Download and install from [git-scm.com](https://git-scm.com/download/win). Use all default options. After installing, open **Git Bash** for all commands below.

### macOS

```bash
brew install git
```

### Linux (Debian/Ubuntu)

```bash
sudo apt update && sudo apt install git
```

---

## 2. Configure Git

Tell git who you are - this shows up in every commit you make.

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

---

## 3. Create an SSH Key

SSH lets you authenticate with GitLab without typing your password every time.

```bash
ssh-keygen -t ed25519 -C "your@email.com"
```

- Press **Enter** to accept the default file location
- Optionally set a passphrase (press enter to skip)

Now copy your public key:

```bash
# macOS
cat ~/.ssh/id_ed25519.pub | pbcopy

# Linux
cat ~/.ssh/id_ed25519.pub

# Windows (Git Bash)
cat ~/.ssh/id_ed25519.pub | clip
```

---

## 4. Add SSH Key to GitHub

1. Go to **GitHub -> Your avatar (top right) -> Settings -> SSH and GPG keys**
2. Click on `New SSH key`
3. Paste your public key
4. Give it a recognizable title (e.g. `Laptop` or `Home PC`)
5. Click **Add SSH key**

Test that it works:

```bash
ssh -T git@github.com
#Expected: Hi <username>! You've successfully authenticated...
```


---

## 5. Clone the Workspace

```bash
cd your/prefered/directory/to/put/this
git clone git@github.com:Robotik-Club-Berlin/stur_ws.git
cd stur_ws
```

---

## 6. Sync All Repos with Our Tool

We use a small Python script to clone all sub-repos (firmware, software, hardware, docs, etc.) defined in `repos.yaml`. No external tools needed

```bash
python scripts/ws.py
```

This will:

- Clone any repo listed in `repos.yaml` that isn't on your machine yet
- Register any local `.git` repo that isn't in `repos.yaml` yet (adds it automatically)
- Skip everything that's already in sync

Run this whenever someone adds a new sub-repo to the project.

---

## 7. Basic Git Workflow

You can use a UI for interacting with Git. For example:
- [VSCode source control](https://code.visualstudio.com/docs/sourcecontrol/overview)
- [GitHub Desktop](https://desktop.github.com/download/)

But of course you can use the terminal for everything as well :D
### Check what's changed

```bash
git status
git diff
```

### Stage and commit your changes

```bash
git add .                        # stage everything
git add path/to/file             # or stage a specific file
git commit -m "type: short description"
```

### Push to GitHub

```bash
git push
```

### Pull latest changes from others

```bash
git pull
```


---

## 9. Branches

Never work directly on `main`. Always create a branch for your work (For smaller changes or in `docu` you can might also work on `main` directly):

```bash
git checkout -b feature/your-feature-name   # create and switch to new branch
git checkout main                            # switch back to main
git merge feature/your-feature-name         # merge when done
```

---

## 10. Things to NEVER Do

- Never commit binary files (compiled outputs, `.bin`, `.elf`), add them to `.gitignore`
-  Never commit secrets, passwords, or API keys
- Never force push (`git push --force`) unless you really know what you're doing and have told the team

---

## 11. Quick Reference

```bash
git status                     # what's changed?
git pull                       # get latest from remote
git checkout -b feature/xyz    # new branch
git add .                      # stage all changes
git commit -m "feat: ..."      # commit
git push                       # push to GitLab
git log --oneline              # compact history
python scripts/ws.py           # sync all sub-repos
```








