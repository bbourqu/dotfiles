######################
# OMZsh Configuration
# Auto Generated
######################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/mydotfiles/.oh-my-zsh

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git command-not-found sudo vi-mode web-search wd colored-man colorize cp emoji-clock lol nyan rand-quote)

source $ZSH/oh-my-zsh.sh

#########################
# User added source files
#########################

export CUSTZSH=$HOME/$GIT_DIRECTORY/zsh
source $CUSTZSH/.zshalias
source $CUSTZSH/.zshkeybinds
source $CUSTZSH/.zshprompt
source $CUSTZSH/.zshscripts
source $CUSTZSH/.zshsetopts
source $CUSTZSH/.zshssh
