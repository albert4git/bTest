#/bin/bash

#==============================================================
TAG="PreLabPuDB"
NOW=$(date +"%m-%d-%Y-%T")
NW=$(date +"%m-%d-%Y-%H-%M-%S")
cp -r ~/git/bTest/ /media/red/yellow/BBBLock/"bTest$NW$TAG"
pwd
#==============================================================

##########################################################################################
# rm ~/.tmuxinator/kBank21.yml
# rm ~/.tmuxinator/kBank20.yml
# rm ~/.tmuxinator/kBank19.yml
#==============================================================
pwd
# rm ~/.config/nvim/init.vim
# rm ~/.config/vifm/vifmrc

###########################################################################################
#------------------------------VICTOR------------------------------------------------------
###########################################################################################
# rm ~/.profile
ln -s ~/git/bTest/bPot/kkProfile        ~/.profile

#--0-------------------ZSH-----------------------------------------------------------------
# rm ~/.zshrc
ln -s ~/git/bTest/bPot/kkZshRc.sh        ~/.zshrc

#--?-------------------BASH-----------------------------------------------------------------
# ln -s ~/git/bTest/kDot/kBashColor.sh      ~/.bashrc
# ln -s ~/git/bTest/kDot/kCtags19           ~/.ctags
# rm ~/.ctags
# rm ~/.bashrc
#------------------------------------------------------------------------------------------

#--2-------------------MUX----------------------------------------------------------------
rm ~/.tmux.conf
ln -s ~/git/bTest/bPot/kkTmux.conf       ~/.tmux.conf
ln -s ~/git/bTest/bPot/ttBank.yml        ~/.tmuxinator/ttBank.yml
ln -s ~/git/bTest/bPot/ttBank42.yml         ~/.tmuxinator/ttBanki42.yml

#--3-------------------GIT-----------------------------------------------------------------
rm ~/.gitconfig
rm ~/.gitignore
ln -s ~/git/bTest/bPot/kkGitconfig.vim     ~/.gitconfig
ln -s ~/git/bTest/bPot/kkGitignore         ~/.gitignore

#--4-------------------Coc-----------------------------------------------------------------
rm ~/.config/nvim/coc-settings.json
ln -s  ~/git/bTest/bPot/kkCoc-settings.json  ~/.config/nvim/coc-settings.json
pwd

#--5-------------------FVWM----------------------------------------------------------------
rm ~/.fvwm/config
ln -s ~/git/bTest/bPot/kkFVWMdef.sh        ~/.fvwm/config
pwd

#--6-------------------Xsession--------------------------------------------
rm ~/.xsession
ln -s ~/git/bTest/bPot/kkXsession         ~/.xsession
pwd

#-------------------nn-PET-----------------------------------------------------------------
rm ~/.config/pet/snippet.toml
ln -s ~/git/bTest/bPot/nnPetSnippet.toml ~/.config/pet/snippet.toml

#-------------------nn-HYPER---------------------------------------------------------------
rm ~/.hyper.js
ln -s ~/git/bTest/bPot/nnHyper.js         ~/.hyper.js

#----------------------VIM-----------------------------------------------------------------
# rm ~/.vimrc
# ln -b ~/git/bTest/kDot/inkPreRc19.vim     ~/.vimrc
# ln -b ~/git/bTest/kDot/kVifmrc.vim        ~/.config/vifm/vifmrc
# ln -b ~/git/bTest/kDot/kMinit.vim         ~/.config/nvim/init.vim

#----------------------Spf-----------------------------------------------------------------
# rm ~/.vimrc
# rm ~/.vimrc.before
# rm ~/.vimrc.bundles
# ln -s ~/git/bTest/kDot/kSpf13vimrc         ~/.vimrc
# ln -s ~/git/bTest/kDot/kSpf13vimrc.before         ~/.vimrc.before
# ln -s ~/git/bTest/kDot/kSpf13vimrc.bundles         ~/.vimrc.bundles

#----SPACE-VIM-----------------------------------------------------------------------------
# rm ~/.SpaceVim.d/init.toml
# ln  ~/git/bTest/kDot/kSpaceInit.toml  ~/.SpaceVim.d/init.toml
# ls ~/.SpaceVim.d/
#----------------------------------------------------------
# rm ~/.SpaceVim.d/init.vim
# ln -s  ~/git/bTest/kDot/k-init.toml  ~/.SpaceVim.d/init.vim



#------------------------------------------------------------------------------------------
#------------------------------EndVICTOR------------------------------------------------------
#------------------------------------------------------------------------------------------
