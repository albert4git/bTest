#/bin/bash
##########################################################################################
# ln -sf /full/path/to/parent/child/child ../child1
# ln -sf /full/path/to/parent/child/child ../child2
# To make a link to a file in another user's home directory:
# ln ~sandra/prog.c .
##########################################################################################
##########################################################################################
# mv ~/.bashrc ~/"1bashrc-$(date +"%m-%d-%y-%r")"
# ln -s ~/atest/dotFiles/bashrc_color ~/.bashrc
#
# mv ~/.bashrc_help ~/"1bashrc_help-$(date +"%m-%d-%y-%r")"
# ln -s ~/atest/dotFiles/bashrc_help_color ~/.bashrc_help
##########################################################################################

##########################################################################################
#rsync -r dir1/ dir2
# List tar.gz contents short command
tar -ztvf archive.tar.gz
# List tar.gz contents short command
tar -ztvf archive.tar.gz
# List tar.bz2 contents short command
tar -jtvf archive.tar.bz2
# Task: Search for specific files
tar -tvf projects.tar.bz2 '*.pl'
##########################################################################################
diff <(tar -tvf 1.tar | awk '{printf "%10s %200s %10s\n",$3,$6,$1}'|sort -k2)
<(tar -tvf 2.tar|awk '{printf "%10s %200s %10s\n",$3,$6,$1}'|sort -k2)
##########################################################################################
# rsync -anv dir1/ dir2
# rsync -anv ~/.config/ /media/red/124Black/git/dotRedCong
# rsync -anv ~/git/bTest/ /media/red/124Black/git/bTest
# rsync -av ~/git/bTest/ /media/red/124Black/git/bTest
# rsync -av ~/.config/ /media/red/124Black/git/dotRedConfig
# rsync -av ~/.vim/ /media/red/124Black/git/dotRedVim
##########################################################################################

TAG="MinitTrim3"
TAG="PreLabPuDB"
NOW=$(date +"%m-%d-%Y-%T")
NW=$(date +"%m-%d-%Y-%H-%M-%S")
cp -r ~/git/bTest/ /media/red/yellow/BBBLock/"bTest$NW$TAG"
pwd

#==============================================================
cp -r ~/git/bTest/ /media/red/A5A1-FBC4/BBBLOCK/"bTest$NW$TAG"
cp -r ~/git/bTest/ /media/red/F1E8-C819/BBFBLOCK/"bTest$NW"

#==============================================================
#cp ~/.profile kong18/"18-profile.$NW"

##########################################################################################
rm ~/.tmuxinator/kBank21.yml
rm ~/.tmuxinator/kBank20.yml
rm ~/.tmuxinator/kBank19.yml

#==============================================================
rm ~/.zshrc
rm ~/.ctags
rm ~/.bashrc
pwd
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.vimrc
rm ~/.config/nvim/init.vim
rm ~/.config/vifm/vifmrc
rm ~/.xsession
rm ~/.fvwm/config

###########################################################################################
#------------------------------VICTOR------------------------------------------------------
###########################################################################################
#--0-------------------ZSH-----------------------------------------------------------------
rm ~/.zshrc
ln -s ~/git/bTest/bPot/kkZshRc.sh        ~/.zshrc

#--0-------------------BASH-----------------------------------------------------------------
# ln -s ~/git/bTest/kDot/kBashColor.sh      ~/.bashrc
# ln -s ~/git/bTest/kDot/kCtags19           ~/.ctags
# rm ~/.ctags
# rm ~/.bashrc
#------------------------------------------------------------------------------------------

#--2-------------------MUX----------------------------------------------------------------
rm ~/.tmux.conf
ln -s ~/git/bTest/bPot/kkTmux.conf       ~/.tmux.conf
ln -s ~/git/bTest/bPot/ttBank.yml        ~/.tmuxinator/ttBank.yml

#----------------------GIT-----------------------------------------------------------------
ln -s ~/git/bTest/kDot/kGitconfig.vim     ~/.gitconfig
ln -s ~/git/bTest/kDot/kGitignore         ~/.gitignore

#----------------------VIM-----------------------------------------------------------------
ln -b ~/git/bTest/kDot/inkPreRc19.vim     ~/.vimrc
ln -b ~/git/bTest/kDot/kVifmrc.vim        ~/.config/vifm/vifmrc
# ln -b ~/git/bTest/kDot/kMinit.vim         ~/.config/nvim/init.vim

#----------------------Coc-----------------------------------------------------------------
rm ~/.config/nvim/coc-settings.json
ln -s  ~/git/bTest/kDot/kCoc-settings.json  ~/.config/nvim/coc-settings.json

#----------------------Spf-----------------------------------------------------------------
rm ~/.vimrc
rm ~/.vimrc.before
rm ~/.vimrc.bundles

ln -s ~/git/bTest/kDot/kSpf13vimrc         ~/.vimrc
ln -s ~/git/bTest/kDot/kSpf13vimrc.before         ~/.vimrc.before
ln -s ~/git/bTest/kDot/kSpf13vimrc.bundles         ~/.vimrc.bundles

#----------------------FVWM----------------------------------------------------------------
rm ~/.fvwm/config
ln -s ~/git/bTest/kDot/kFVWMdef.sh        ~/.fvwm/config

#----------------------Xsession--------------------------------------------
ln -s ~/git/bTest/kDot/kXsession         ~/.xsession


#----SPACE-VIM-----------------------------------------------------------------------------
rm ~/.SpaceVim.d/init.toml
ln  ~/git/bTest/kDot/kSpaceInit.toml  ~/.SpaceVim.d/init.toml
ls ~/.SpaceVim.d/
#----------------------------------------------------------
rm ~/.SpaceVim.d/init.vim
ln -s  ~/git/bTest/kDot/k-init.toml  ~/.SpaceVim.d/init.vim


#------------------------------------------------------------------------------------------
#------------------------------VICTOR------------------------------------------------------
#------------------------------------------------------------------------------------------

# cp -r ~/.vim bVimFolderPre2019
# ls -l ~/

# cp -r ~/.config/nvim/ ~/bNvimFolderFeb2019
# ls -l ~/bNvimFolderFeb2019

#------------------------------------------------------------------------------------------
# ls ~/vim-*
# ls ~/git/dot-vim-mpi/
# cp -r ~/git/dot-vim-mpi/                       ~/.vim
# cp -r ~/git/aTest/dotFiles/inkVim      /media/red/A5A1-FBC4/4inkVim
# cp -r ~/git/aTest/dotFiles/inkWim      /media/red/A5A1-FBC4/4inkWim
#########################################################################################
# mount --bind /home/shared/files /home/website/files/
#########################################################################################
# zip -r arch.kong18.zip kong18
#########################################################################################
# cp ~/.emacs.d/init.el ~/.emacs.d/"1emacs-$(date +"%m-%d-%y-%r")"
# rm ~/.emacs.d/init.el
# ln -s ~/atest/dotFiles/initEm2.el ~/.emacs.d/init.el
#########################################################################################
# cp ~/.vimrc ~/"1vimrc-$(date +"%s")"
# rm ~/.vimrc
# ln -s ~/atest/dotFiles/vimrc2008 ~/.vimrc
#########################################################################################
############################################################################################
#if [HOME ]; then
#    mkdir -pHOME/kong18acer/
#fi;
#############################################################################################
#$NOW=$(date +"%m-%d-%Y-%T")
#echo NOW
#############################################################################################
#mkdir -p kong18
#rm *.*~
#ls kong18
#############################################################################################
#cp ~/.profile kong18/"18-profile.$NW"
#cp ~/.bashrc kong18/"18-bashrc.$NW"
#ls kong18
#######################################################################################
## cp -r kong18 king18
##---------------------------------------------------
##---------------------------------------------------
#ls -a ~/
#rm ~/.bashrc
#ln -b king18/bashrc-alf-cc   ~/.bashrc
#ls -a ~/*
##---------------------------------------------------
##---------------------------------------------------
#ls -a ~/
#ln -b king18/18-gitconfig.AB     ~/.gitconfig
#ln -b king18/18-gitignore.AB     ~/.gitignore
#ls -a ~/

#################################################################################
#################################################################################
# rsync -av ~/git/bTest/ /media/red/64black/git/bTest/
# rsync -av  /media/red/124Black/git/ /media/red/64black/git/
#################################################################################

#################################################################################
###---------------------------------------------------------------------------###
#################################################################################

#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

#!!!===1.)===-Dry--Run-========================================================
rsync -anv ~/git/bTest/ /media/red/124Black/git/124Test/
#!!!===2.)=====================================================================
rsync -avz --delete ~/git/bTest/ /media/red/124Black/git/124Test/
#!!!===3.)=====================================================================
rsync -avz --delete ~/git/bTest/ /media/red/pink/125Black/git/pinkTest/


#!!!=== 4.) ==================================================================
rsync -avz --delete ~/git/bTest/ /media/red/noX/124Black/git/124Test/

###---------------------------------------------------------------------------###
rsync -avz --delete ~/.config/ /media/red/124Black/git/dotRedCong
###---------------------------------------------------------------------------###

rsync -avz --delete ~/.config/nvim/plugged/zeavim.vim /media/red/124Black/git/dotRedCong/nvim/plugged/zeavim.vim

###----DRY--------------------------------------------------------------------###
rsync -anv --delete ~/.config/nvim/plugged/ /media/red/124Black/git/dotRedCong/nvim/plugged/
###----PLUG---------------------------------------------------------------------###
rsync -avz --delete ~/.config/nvim/plugged/ /media/red/124Black/git/dotRedCong/nvim/plugged/

ls /media/red/124Black/git/dotRedCong/nvim/plugged/zeavim.vim


grep CRON /var/log/syslog
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

#################################################################################
###---------------------------------------------------------------------------###
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!
# 1. example
tar --listed-incremental=/media/backup/snapshot.file -cJpf /media/backup/home-backup-`date +%d-%m-%Y`.tar.xz /home/user/{Documents,Downloads,Pictures,Music,.config,.Xresources,.xinitrc,.i3,.mozilla,.zshrc}
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!
# 2. Downloads
tar --listed-incremental=/media/red/124Black/SNAR/snapshot.file -cJpf /media/red/124Black/SNAR/h:ome-backup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/Downloads
# NEXT ??? single liner ???
# NEXT ??? single liner !!!YES
tar --listed-incremental=/media/red/124Black/SNAR/bTestSnap.file -cJpf /media/red/124Black/SNAR/bTestBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/git/bTest/

# NEXT SNAR--bTest !!!YES --NO--noX
tar --listed-incremental=/media/red/124Black/SNAR/bTestSnap.file -cJpf /media/red/124Black/SNAR/bTestBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/git/bTest/
# NEXT SNAR--bTest !!!YES --noX
tar --listed-incremental=/media/red/noX/124Black/SNAR/bTestSnap.file -cJpf /media/red/noX/124Black/SNAR/bTestBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/git/bTest/


#--NEXT TaRed-red !!!YES ----noX-FREE----
sudo tar --listed-incremental=/media/red/124Black/TaRed/bRedSnap.file -cJpf /media/red/124Black/TaRed/RedBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/


# NEXT ??? single liner !!!YES -- noX RED
sudo tar --listed-incremental=/media/red/noX/124Black/TaRed/bRedSnap.file -cJpf /media/red/noX/124Black/TaRed/RedBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/
sudo tar --listed-incremental=/media/red/noX/124Black/TaRed/bRedSnap.file -cJpf /media/red/noX/124Black/TaRed/RedBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/



#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

tar --listed-incremental=/dev/null -xvf home-backup-08-01-07-07-2019.tar.xz
tar --listed-incremental=/dev/null -xvf home-backup-* -C ../TMP/

#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

0 * * * * rsync -avz --delete  /media/red/124Black/git/124Test/ /media/red/pink/125Black/git/pinkTest/
*/1 * * * * rsync -avz --delete  /media/red/124Black/2019DocLink/ /media/red/pink/125Black/DocLink/

*/17 * * * * rsync -avz --delete ~/git/bTest/ /media/red/124Black/git/124Test/
*/10 * * * * rsync -avz --delete ~/git/bTest/ /media/red/pink/125Black/git/pinkTest/
#------------------------------------------------------------------------------------------
rm ~/.config/pet/snippet.toml
ln -s ~/git/bTest/kDot/kPetSnippet.toml ~/.config/pet/snippet.toml
#------------------------------------------------------------------------------------------
rm ~/.hyper.js
ln -s ~/git/bTest/kDot/kHyper.js         ~/.hyper.js