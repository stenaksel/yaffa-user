# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_git.yaml and re-run YAFFA generator.

# Show all git related aliases (pretty)
alias a4g='_YaffaCall a4g '\''alias-match git | _show_pretty'\'' '\''Show all git related aliases (pretty)'\'''

# Show all NONE git related aliases (pretty)
alias a4g-='_YaffaCall a4g- '\''alias-match - git | _show_pretty'\'' '\''Show all NONE git related aliases (pretty)'\'''

# Short alias for git commit
alias gc='_YaffaCall gc '\''git commit'\'' '\''Short alias for git commit'\'''

# Detailed decorated git log with author and relative date (Use 'Q' to quit listing th log)
alias glg='_YaffaCall glg '\''git log --pretty=format:'\''\'\'''\''%C(red)%h%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(bold blue)<%an>%Creset'\''\'\'''\'' --abbrev-commit --date=relative'\'' '\''Detailed decorated git log with author and relative date (Use '\''\'\'''\''Q'\''\'\'''\'' to quit listing th log)'\'''

# Displays the current state of your Git working directory and staging area
alias gs='_YaffaCall gs '\''git status'\'' '\''Displays the current state of your Git working directory and staging area'\'''

# Displays in short form the current state of your Git working directory and staging area
alias gss='_YaffaCall gss '\''git status -sb'\'' '\''Displays in short form the current state of your Git working directory and staging area'\'''

# Show all changes since the last commit (staged and unstaged combined)
alias gdh='_YaffaCall gdh '\''git diff HEAD'\'' '\''Show all changes since the last commit (staged and unstaged combined)'\'''

# Show staged changes (difference between the index and the last commit) — what would be committed
alias gdc='_YaffaCall gdc '\''git diff --staged'\'' '\''Show staged changes (difference between the index and the last commit) — what would be committed'\'''

# Show the total amount of additions or deletions
alias gdss='_YaffaCall gdss '\''git diff --staged --stat'\'' '\''Show the total amount of additions or deletions'\'''

# Create and switch to a new branch
alias gcob='_YaffaCall gcob '\''git checkout -b'\'' '\''Create and switch to a new branch'\'''

# Stash uncommitted changes
alias gst='_YaffaCall gst '\''git stash'\'' '\''Stash uncommitted changes'\'''

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
