#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_git.yaml and re-run YAFFA generator.

# Show all git related aliases (pretty)
alias a4g='_YaffaCall a4g '\''alias-match git | pretty_aliases'\'' '\''Show all git related aliases (pretty)'\'''

# Show all NONE git related aliases (pretty)
alias a4g-='_YaffaCall a4g- '\''alias-match - git | pretty_aliases'\'' '\''Show all NONE git related aliases (pretty)'\'''

# Short alias for git add
alias ga='_YaffaCall ga '\''git add'\'' '\''Short alias for git add'\'''

# Show all branches, both local and remote
alias gbra='_YaffaCall gbra '\''git branch -a'\'' '\''Show all branches, both local and remote'\'''

# Show all branches, both local and remote
alias branches='_YaffaCall branches '\''git branch -a'\'' '\''Show all branches, both local and remote'\'''

# Show all branches, both local and remote
alias gbr='_YaffaCall gbr '\''git branch -a'\'' '\''Show all branches, both local and remote'\'''

# Short alias for git commit
alias gc='_YaffaCall gc '\''git commit'\'' '\''Short alias for git commit'\'''

# Compact decorated git log
alias gl='_YaffaCall gl '\''git log --oneline --graph --decorate'\'' '\''Compact decorated git log'\'''

# Detailed decorated git log with author and relative date
alias glg='_YaffaCall glg '\''git log --pretty=format:'\''\'\'''\''%C(red)%h%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(bold blue)<%an>%Creset'\''\'\'''\'' --abbrev-commit --date=relative'\'' '\''Detailed decorated git log with author and relative date'\'''

# Short alias for git push
alias gp='_YaffaCall gp '\''git push'\'' '\''Short alias for git push'\'''

# Displays the current state of your Git working directory and staging area
alias gs='_YaffaCall gs '\''git status'\'' '\''Displays the current state of your Git working directory and staging area'\'''

# Displays in short form the current state of your Git working directory and staging area
alias gss='_YaffaCall gss '\''git status -sb'\'' '\''Displays in short form the current state of your Git working directory and staging area'\'''

# Changes in the working tree not yet staged for the next commit
alias gd='_YaffaCall gd '\''git diff'\'' '\''Changes in the working tree not yet staged for the next commit'\'''

# Show all changes since the last commit (staged and unstaged combined)
alias gdh='_YaffaCall gdh '\''git diff HEAD'\'' '\''Show all changes since the last commit (staged and unstaged combined)'\'''

# Show staged changes (difference between the index and the last commit) — what would be committed
alias gds='_YaffaCall gds '\''git diff --staged'\'' '\''Show staged changes (difference between the index and the last commit) — what would be committed'\'''

# Show staged changes (difference between the index and the last commit) — what would be committed
alias gdc='_YaffaCall gdc '\''git diff --staged'\'' '\''Show staged changes (difference between the index and the last commit) — what would be committed'\'''

# Show the total amount of additions or deletions
alias gdss='_YaffaCall gdss '\''git diff --staged --stat'\'' '\''Show the total amount of additions or deletions'\'''

# Switch branches or restore working tree files
alias gco='_YaffaCall gco '\''git checkout'\'' '\''Switch branches or restore working tree files'\'''

# Create and switch to a new branch
alias gcob='_YaffaCall gcob '\''git checkout -b'\'' '\''Create and switch to a new branch'\'''

# Create and switch to a new branch
alias gcb='_YaffaCall gcb '\''git checkout -b'\'' '\''Create and switch to a new branch'\'''

# List, create, or delete branches
alias gb='_YaffaCall gb '\''git branch'\'' '\''List, create, or delete branches'\'''

# List all branches, including remotes
alias gba='_YaffaCall gba '\''git branch -a'\'' '\''List all branches, including remotes'\'''

# Fetch from all remotes and remove stale remote-tracking refs
alias gf='_YaffaCall gf '\''git fetch --all --prune'\'' '\''Fetch from all remotes and remove stale remote-tracking refs'\'''

# Fetch and integrate changes from the remote branch
alias gpl='_YaffaCall gpl '\''git pull'\'' '\''Fetch and integrate changes from the remote branch'\'''

# Merge a branch into the current branch
alias gm='_YaffaCall gm '\''git merge'\'' '\''Merge a branch into the current branch'\'''

# Reapply commits on top of another base tip
alias grb='_YaffaCall grb '\''git rebase'\'' '\''Reapply commits on top of another base tip'\'''

# Interactive rebase
alias grbi='_YaffaCall grbi '\''git rebase -i'\'' '\''Interactive rebase'\'''

# Stash uncommitted changes
alias gst='_YaffaCall gst '\''git stash'\'' '\''Stash uncommitted changes'\'''

# Re-apply and remove the most recent stash
alias gstp='_YaffaCall gstp '\''git stash pop'\'' '\''Re-apply and remove the most recent stash'\'''

# Commit with an inline message
alias gcm='_YaffaCall gcm '\''git commit -m'\'' '\''Commit with an inline message'\'''

# Amend the most recent commit
alias gca='_YaffaCall gca '\''git commit --amend'\'' '\''Amend the most recent commit'\'''

# Show the most recent commit
alias glast='_YaffaCall glast '\''git log -1 HEAD'\'' '\''Show the most recent commit'\'''

# Undo the last commit but keep the changes staged
alias gundo='_YaffaCall gundo '\''git reset --soft HEAD~1'\'' '\''Undo the last commit but keep the changes staged'\'''

# Remove untracked files and directories — irreversible
alias gclean='_YaffaCall gclean '\''git clean -fd'\'' '\''Remove untracked files and directories — irreversible'\'''
