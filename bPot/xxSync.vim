#############################tar##########################################################
# List tar.gz contents short command

tar -ztvf archive.tar.gz
# List tar.gz contents short command
tar -ztvf archive.tar.gz
# List tar.bz2 contents short command
tar -jtvf archive.tar.bz2
# Task: Search for specific files
tar -tvf projects.tar.bz2 '*.pl'
#
##########################################################################################


##########################################################################################
diff <(tar -tvf 1.tar | awk '{printf "%10s %200s %10s\n",$3,$6,$1}'|sort -k2)
<(tar -tvf 2.tar|awk '{printf "%10s %200s %10s\n",$3,$6,$1}'|sort -k2)


#############################$NOW#########################################################
#

NOW=$(date +"%m-%d-%Y-%T")
NW=$(date +"%m-%d-%Y-%H-%M-%S")
echo $NW
echo $NOW

TAG="MinitTrim3"
cp -r ~/git/bTest/ /media/red/yellow/BBBLock/"bTest$NW$TAG"
#
##########################################################################################

###########################rsync##########################################################
#
 rsync -anv dir1/ dir2

 rsync -anv ~/.config/ /media/red/124Black/git/dotRedCong

 rsync -anv ~/git/bTest/ /media/red/124Black/git/bTest

 rsync -av ~/git/bTest/ /media/red/124Black/git/bTest

 rsync -av ~/.config/ /media/red/124Black/git/dotRedConfig

 rsync -av ~/.vim/ /media/red/124Black/git/dotRedVim
#
##########################################################################################

#############################-RealRun???-#########################################
# rsync -av ~/git/bTest/ /media/red/64black/git/bTest/
# rsync -av  /media/red/124Black/git/ /media/red/64black/git/
#################################################################################

#################################################################################
###---------------------------------------------------------------------------###
#################################################################################


#!!!===1.)===-Dry--Run-========================================================
rsync -anv ~/git/bTest/ /media/red/124Black/git/124Test/

#!!!===2.)=====================================================================
rsync -avz --delete ~/git/bTest/ /media/red/124Black/git/124Test/

#!!!===3.)=====================================================================
rsync -avz --delete ~/git/bTest/ /media/red/pink/125Black/git/pinkTest/

#!!!=== 4.) ==================================================================
rsync -avz --delete ~/git/bTest/ /media/red/noX/124Black/git/124Test/

#---------------------------------------------------------------------------
rsync -avz --delete ~/.config/ /media/red/124Black/git/dotRedCong
#---------------------------------------------------------------------------

rsync -avz --delete ~/.config/nvim/plugged/zeavim.vim /media/red/124Black/git/dotRedCong/nvim/plugged/zeavim.vim

#----DRY--------------------------------------------------------------------
rsync -anv --delete ~/.config/nvim/plugged/ /media/red/124Black/git/dotRedCong/nvim/plugged/

#----PLUG-------------------------------------------------------------------
rsync -avz --delete ~/.config/nvim/plugged/ /media/red/124Black/git/dotRedCong/nvim/plugged/

ls /media/red/124Black/git/dotRedCong/nvim/plugged/zeavim.vim

grep CRON /var/log/syslog

#################################################################################
###---------------------------------------------------------------------------###
#################################################################################
# 1. example
tar --listed-incremental=/media/backup/snapshot.file -cJpf /media/backup/home-backup-`date +%d-%m-%Y`.tar.xz /home/user/{Documents,Downloads,Pictures,Music,.config,.Xresources,.xinitrc,.i3,.mozilla,.zshrc}
# 2. Downloads
tar --listed-incremental=/media/red/124Black/SNAR/snapshot.file -cJpf /media/red/124Black/SNAR/h:ome-backup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/Downloads

# NEXT ??? SingleLiner !!!YES
tar --listed-incremental=/media/red/124Black/SNAR/bTestSnap.file -cJpf /media/red/124Black/SNAR/bTestBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/git/bTest/

# NEXT--SNAR--bTest!!!YES--NO--noX
tar --listed-incremental=/media/red/124Black/SNAR/bTestSnap.file -cJpf /media/red/124Black/SNAR/bTestBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/git/bTest/

#--NEXT--TaRed-red !!!YES ----noX-FREE----
sudo tar --listed-incremental=/media/red/124Black/TaRed/bRedSnap.file -cJpf /media/red/124Black/TaRed/RedBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/

#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

tar --listed-incremental=/dev/null -xvf home-backup-08-01-07-07-2019.tar.xz
tar --listed-incremental=/dev/null -xvf home-backup-* -C ../TMP/

############################################################################################################################

0 * * * * rsync -avz --delete  /media/red/124Black/git/124Test/ /media/red/pink/125Black/git/pinkTest/
*/1 * * * * rsync -avz --delete  /media/red/124Black/2019DocLink/ /media/red/pink/125Black/DocLink/

*/17 * * * * rsync -avz --delete ~/git/bTest/ /media/red/124Black/git/124Test/
*/10 * * * * rsync -avz --delete ~/git/bTest/ /media/red/pink/125Black/git/pinkTest/
############################################################################################################################


