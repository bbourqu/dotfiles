# What this is for

Just a place for me to share my current "dot files" with everyone and a easy way to make sure i stay in sync accrost multiple devices.  
Feel free to take any or all of them, tweek them to your desire and distribute them!  
I also have a "[templates_dotfiles][template_dotfiles]" repo if you want to use that, these files have no plugins, and a lot less "personalized" stuff in them, they are designed to be used a templates, but nothing stopps you from useing them just as they are :D  
If you do something new with one of them, and you think someone else might benefit from it, please push it back to me! I will happily give you credit for what you commited back.  

## Other Downloads you will need

If you want to use ZSH you will need to download [Oh-My-ZSH][zsh] for pieces of my config

If you are using vim, please download [vim-plug][plug] by following the instructions on his github.

[TMux Plugin Manager][tpm] is needed if you want to use my TMux Files. You dont NEED it, but you'll want it and once you realise what it offers, its very very helpful. Requires that your 'tmux' version is 1.9 or higher.

**Warning Expirimental** I am playing around with mutt again, the files here are not fully functioning and possibly will change. Documenting now more for my self then others.

## Installation

You will need git installed, and if you want to use these you will also need `vim`, `zsh`, `curl`(and/or `wget`) as well as if your useing the i3 or awesome files, youll need those.
So, if your on ubuntu, you could copy this (does not include Window Managers)
* `sudo apt-get install git vim zsh curl wget tmux`

Now you will need to clone my repository, I suggest that you put it inside of a folder under your home directory, i personally use a folder called "git" but this is up to you, and optional.
If you want to make a folder first you can do this:
* `mkdir -p ~/git && cd ~/git`

If you created the folder make sure you cd into it, then run the next command
* `git clone https://github.com/hackinginformation/dotfiles.git`

[**ZSH**][ZSH_WIKI]  
If you have `zsh` installed, and you have already downloaded [Oh-My-Zsh][zsh] from above. You will need to run this to use my config:
* `ln -sf ~/git/dotfiles/zsh/zshrc.symlink ~/.zshrc`
* If you didnt use the ~/git folder, or you used a different one then you need to update this line, you will also need to open the ~/.zshrc and edit line number 32 to your correct path.
Once that is complete, you will need to run:
* `source ~/.zshrc` and your complete! Your zsh will change and you'll notice a few new features.

[**VIM**][VIM_WIKI]  
If you have `vim` installed, and you have already downloaded [vim-plug][plug] from above. You will need to run this to use my config:
* `ln -sf ~/git/dotfiles/vim/vimrc.symlink ~/.vimrc`
* If you didnt use the ~/git folder, or you used a different one then you need to update this line
Once that is complete open your vimrc in vim:
* `vim ~/.vimrc`
* **VIM WILL THROW AN ERROR** this is normal the first time. Just hit enter.
* Once vim is up type `:PlugInstall`, this will cause a new pane to open in your vim window on the left, depending on your connection speed it will download a bunch of plugins from the internet and put them where they belong.
* One of the last plugins is called "molokai". At the moment there is a bug where molokai installs using the "light" theme by default. It will cause your screen to go very bright and white. But we can fix this!
* Type `:q` then `:wq` this will exit the new pane, then exit vim.
* We need to symlink the molokai plugin into the colors directory which we need to create.

**FIXING MOLOKAI**
* `mkdir -p ~/.vim/colors/`
* `ln -sf ~/.vim/plugged/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim`

Now if we open any file in vim again, for example `vim ~/.vimrc` you will see that molokai works perfectly :D
I have a plan to fork molokai and replace my call to my own molokai that dose not include the light version soon.

[**NVim**][NVIM_WIKI]  
Following everything above except the .vimrc symlink, you will need to make the following additional changes:  
* `mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}`
* `ln -s ~/.vim $XDG_CONFIG_HOME/nvim`
* `ln -s ~/git/dotfiles/nvim/nvimrc.symlink $XDG_CONFIG_HOME/nvim/init.vim`

[**TMUX**][TMUX_WIKI]  
If you have `tmux` installed (bonus if its higher then 1.9!), and you want to use my tmux config, then you will need to copy my tmux.conf.
* If your using 2.0 or older then you'll need to use the "PRE" file
  * `ln -sf ~/git/dotfiles/tmux/tmux.conf.symlink.PRE ~/.tmux.conf`
* If your using the latest and greatest (2.1+)
  * `ln -sf ~/git/dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf`

* Open a new tmux session for validation (if you dont already have one open)
  * (for example) `tmux new -s random`

If you want to use [TMux Plugin Manager][tpm](I suggest it, but nothing "requires" it then added functionality)
* Download [TPM][tpm] from its site, as of right now the command do that is
  * git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  * This will drop it directly into the folder it needs to go, if you have issues, please consult the original GH!
* Open a new tmux session (if your not already in one)
  * (for example) `tmux new -s random`
* Once inside a tmux session, press `$PREFIX + I`
  * If your using my tmux.conf then this will be `Ctrl+A` (Release the keys) `Shift i`
    * This will cause the screen to change, you'll see an attempt to download plugins (if you have internet access and access to connect to GH then you should be ok)

[**Mutt**][MUTT_WIKI]  
As mentioned above, this section is expirimental and subject to change  
This is being preformed fully on Arch Linux right now, not sure what extras are needed on other disros.  
* Packages to install
  * `mutt` - the base package
  * `cyrus-sasl` - needed for Gmail SMTP
* `ln -s ~/git/dotfiles/mutt ~/.mutt`
  * Yes, symlink the whole directory!!
* ln -s ~/git/dotfiles/MAIL/procmailrc ~/.procmailrc
* ln -s ~/git/dotfiles/MAIL/msmtprc.. ~/.msmtprc
* ln -s ~/git/dotfiles/MAIL/fetchmailrc ~/.fetchmailrc

## Contact the author

Professional  Twitter [@hackinginfo][tweet]

My Blog    [masammich's][blog]


[plug]:         https://github.com/junegunn/vim-plug
[zsh]:          https://github.com/robbyrussell/oh-my-zsh
[tpm]:          https://github.com/tmux-plugins/tpm
[tweet]:        https://twitter.com/MaSammchs
[blog]:         http://masammich.technoanomaly.com/
[TMUX_WIKI]:    ../../wiki/TMux
[VIM_WIKI]:     ../../wiki/VIM
[ZSH_WIKI]:     ../../wiki/ZSH
[I3_WIKI]:      ../../wiki/i3
[NVIM_WIKI]:    ../../wiki/NVim
[MUTT_WIKI]:    ../../wiki/Mutt
[template_dotfiles]: https://github.com/hackinginformation/template_dotfiles

TODO:  
* Add how to get agnoster to work
  * Include Powerline Setup and Install
  * Include on Mac how the shell font needs to be changed
* Add how to use custom prompts
  * Create a custom prompt!!! Agnoster alone isnt what I want!!
* Remove non-personalized stuff from files!
