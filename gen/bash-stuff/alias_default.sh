# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_default.yaml and re-run YAFFA generator.

# Go up one level
alias ..='_YaffaCall .. '\''cd ..'\'' '\''Go up one level'\'''

# Go up two levels
alias ...='_YaffaCall ... '\''cd ../..'\'' '\''Go up two levels'\'''

# Clear the terminal screen
alias c='_YaffaCall c '\''clear'\'' '\''Clear the terminal screen'\'''

# Display environment variables as a sorted table
alias env_='_YaffaCall env_ '\''while IFS="=" read -r key value; do printf "%-40s>_%s\n" "${key// /_}_" "$value" | sed "s/ /─/g" | sed "s/_/ /g"; done < <(env | sort)'\'' '\''Display environment variables as a sorted table'\'''

# Display command history
alias hist='_YaffaCall hist '\''history'\'' '\''Display command history'\'''

# Clear command history (current session and saved history file) — irreversible
alias rm_hist='_YaffaCall rm_hist '\''history -c && history -w'\'' '\''Clear command history (current session and saved history file) — irreversible'\'''
alias hist-c='_YaffaCall hist-c '\''history -c && history -w'\'' '\''Clear command history (current session and saved history file) — irreversible'\'''

# Long listing including hidden files
alias ll='_YaffaCall ll '\''ls -la --color=auto'\'' '\''Long listing including hidden files'\'''

# Display shell version information
alias shell_='_YaffaCall shell_ '\''bash --version'\'' '\''Display shell version information'\'''
alias term_='_YaffaCall term_ '\''bash --version'\'' '\''Display shell version information'\'''
