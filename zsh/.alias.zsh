###################
# A single file for all of the alias commands to be in 1 place
###################

#Directory Stuff
alias ll="ls -larth"  #All files, "long" with reverse time sorting and human readable sizes
alias lh="ls -d .*" # ONLY show hidden files/folders this is genius (stolen) 
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'" #Stolen from the Internet, makes a tree out of current dirs 

#OS Specific 
alias ubuntuupdate="sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove"  #Fully Update Ubuntu, assumes yes, except for auto-remove

#ZSH Commands to make editing stuff easier
alias configzsh="vim ~/.zshrc"  #One command to edit main config file from anywhere
alias sourcezsh="source ~/.zshrc"  #One command to source the main config file from anywhere (. .zshrc equivilent from bash) 

#SSH Stuff -- Pulls all of the alias from ~/.ssh/config
#For safety reasons, im not putting that info here
alias sshx="ssh -c arcfour,blowfish -XC" #Add a connection and a thing you want forwarded to user this
alias carter_laptop="ssh -t carter_laptop 'exec zsh'" 
alias drop_roman="ssh drop_roman"
alias chase_laptop="ssh chase_laptop"
alias chase_pi="ssh chase_pi"
alias chase_xpi="ssh -c arcfour,blowfish -XC chase_pi" #Add a program after chase_xpi to have x11 forwarded accrost it

#GIT Stuff
alias gs="git status"
alias ga="git add ." #Add current dir to git queue
alias gc="git commit -m" #Commits current queue to git. Requires you to type a commit message
alias gp="git push" #Pushes current queue to git repo.

#Application Stuff
alias top="htop" #Allows for htop to run if i type top instead
alias nvim="nocorrect nvim" #This is to prevent auto correction of nvim to vim

#TMux Stuff
alias tmux="TERM=screen-256color-bce tmux"

#Add Custom bin dir
export PATH=/home/chase/bin/:$PATH

#Exercism Stuff
alias exef="exercism fetch"
alias exes="exercism submit $2"

#Ruby Stuff
alias be="bundle exec"
