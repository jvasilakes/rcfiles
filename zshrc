if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi
# Path to your oh-my-zsh installation.
export ZSH=/home/u14498jv/.oh-my-zsh

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
plugins=(history-substring-search)

# User configuration
export PATH=$PATH:/home/u14498jv/miniconda3/bin

source $ZSH/oh-my-zsh.sh

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

export LANG=en_US.UTF-8

# VIM mode
bindkey -v
export KEYTIMEOUT=1

# PROMPT
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
function subprompt { echo; echo '∇ ' }
function set_prompt {
PROMPT='%{$bg[red]%}%{$fg[black]%} %n %{$reset_color%}%{$bg[cyan]%}%{$fg[black]%} $(pwd) %{$reset_color%}%{$fg[cyan]%}$(subprompt)%{$reset_color%}'
RPROMPT='%{$fg[green]%}⎇  ${vcs_info_msg_0_} %{$reset_color%}'
}

autoload -U colors && colors
setopt promptsubst
autoload add-zsh-hook
add-zsh-hook precmd set_prompt

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/u14498jv/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/u14498jv/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/u14498jv/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/u14498jv/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

