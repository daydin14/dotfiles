# Git & GitHub CLI

## One-Time Setup & Diagnostics

```bash
git config --list --show-origin
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

## Git Version and Updates

```bash
git -v
git update-git-for-windows               # Windows only
```

## Daily Workflow

```bash
git add .
git commit -m "message"
git push -u origin main                  # Use 'master' if repo uses master
```

## Remotes

```bash
git remote -v
git remote add origin [https://github.com/](https://github.com/)<username>/<repo>.git
git remote rename origin upstream
```

## History & Undoing Commits

```bash
git log --graph --oneline

# Move back N commits (destructive — discards uncommitted changes)
git reset --hard HEAD~1
git push --force-with-lease              # Safer alternative to --force
```
