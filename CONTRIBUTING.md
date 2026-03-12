# Contributing Guide

This repository uses two primary branches: `main` and `master`.

- `main`: Default branch for initialization and general changes
- `master`: Primary branch for production-ready code

## Committing Changes to master

1. Create a new feature branch from `master`:
   ```bash
   git checkout master
   git pull origin master
   git checkout -b feature/your-change
   ```

2. Make your changes and commit with a clear message:
   ```bash
   git add .
   git commit -m "feat: concise description of your change"
   ```

3. Push your feature branch:
   ```bash
   git push -u origin feature/your-change
   ```

4. Open a Pull Request (PR) targeting `master`:
   - Title: short summary (e.g., "feat: add X")
   - Description: what, why, any notes for reviewers

5. After review and checks pass, merge the PR into `master`.

## Direct Commits to master (not recommended)

If you must commit directly (e.g., emergency hotfix):
```bash
git checkout master
git pull origin master
# make changes
git add .
git commit -m "fix: hotfix description"
git push origin master
```

## Sync master with main (optional)

If you keep `main` as default but ship from `master`, periodically sync:
```bash
# From local
git checkout master
git pull origin master

git checkout main
git pull origin main

git merge master
# Resolve conflicts if any, then
git push origin main
```

## Commit Message Convention

- feat: new feature
- fix: bug fix
- docs: documentation changes
- chore: tooling/config/no production code changes
- refactor: code change that neither fixes a bug nor adds a feature

## Pre-merge Checklist

- [ ] Lint passes locally
- [ ] Tests (if any) pass
- [ ] PR description updated
- [ ] At least one review approval
