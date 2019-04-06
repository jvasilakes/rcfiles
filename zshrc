# Path to your oh-my-zsh installation.
export ZSH=/Users/vasil024/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, history-substring-search)

# User configuration
export LVG_DIR=/Users/vasil024/tools/LVG/lvg2018lite/
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/lindsay/Library/Python/2.7/bin/:/Users/vasil024/tools:/Users/vasil024/tools/MetaMap/public_mm/bin:$LVG_DIR/bin"

source $ZSH/oh-my-zsh.sh

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

export LANG=en_US.UTF-8

# VIM mode
bindkey -v
export KEYTIMEOUT=1

# PROMPT
function subprompt { echo; echo '∴ ' }
function set_prompt {
PROMPT='%{$bg[red]%}%{$fg[black]%} %n %{$reset_color%}%{$bg[cyan]%}%{$fg[red]%}%{$reset_color%}%{$bg[cyan]%}%{$fg[black]%} $(pwd) %{$reset_color%}%{$fg[cyan]%}%{$reset_color%}%{$fg[cyan]%}$(subprompt)%{$reset_color%}'
}

autoload -U colors && colors
setopt promptsubst
autoload add-zsh-hook
add-zsh-hook precmd set_prompt

# PYTHON VIRTUALENV
export WORKON_HOME=$HOME/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
source /usr/local/bin/virtualenvwrapper.sh

# Application specific environment variables.
#export NLTK_DATA=/Volumes/BACKUPS/nltk_data/
export TF_CPP_MIN_LOG_LEVEL=2

# Aliases
alias run_metamap16="metamap16 --silent --term_processing --ignore_word_order --show_cuis --XMLf1"
#
# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
