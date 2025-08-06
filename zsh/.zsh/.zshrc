# PATH
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

## ZSH Home
export ZSH=$HOME/.zsh

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

### PLUGINS AND THEMES ###
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme

## SPACESHIP CONFIG
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### Autojump ###
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

### Autosuggestions ###
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

### Fast Syntax Highlighting ###
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

### Completions ###
fpath=($ZSH/plugins/zsh-completions/src $fpath)

################################################################################### ALIASES ###
alias python=/usr/bin/python3
alias nrfutil=~/Downloads/nrfutil
