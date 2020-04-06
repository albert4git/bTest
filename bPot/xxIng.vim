#/bin/bash
##1#######################################################################################
# ln -sf /full/path/to/parent/child/child ../child1
# ln -sf /full/path/to/parent/child/child ../child2
# To make a link to a file in another user's home directory:
# ln ~sandra/prog.c .
# ln -s ~/atest/dotFiles/bashrc_color ~/.bashrc
# ln -s ~/atest/dotFiles/bashrc_help_color ~/.bashrc_help
# ln -s ~/atest/dotFiles/vimrc2008 ~/.vimrc
##########################################################################################

##2#######################################################################################
# mv ~/.bashrc ~/"1bashrc-$(date +"%m-%d-%y-%r")"
#
# mv ~/.bashrc_help ~/"1bashrc_help-$(date +"%m-%d-%y-%r")"
# cp ~/.emacs.d/init.el ~/.emacs.d/"1emacs-$(date +"%m-%d-%y-%r")"
# cp ~/.vimrc ~/"1vimrc-$(date +"%s")"
##########################################################################################

