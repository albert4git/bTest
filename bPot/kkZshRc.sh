#---START--START----
#-----NAUTILUS-----5
#--FIN--FIN--FIN--FI
#******************************************************************************************
/bin/setfont /usr/share/consolefonts/Lat2-Terminus28x14.psf.gz
#******************************************************************************************

#=============================================================
# cprof
#----------
# python -m cProfile -o myscript.cprof myscript.py
# ???
# pyprof2calltree -k -i
# python -m cProfile -s cumtime lwn2pocket.py
# pyprof2calltree -i prof.out -o prof.calltree
# kcachegrind prof.calltree # or qcachegrind prof.calltree
#=============================================================
#=============================================================
# KCacheGrind
# If you did any C programming and profiling these last years, you
# may have used it as it is primarily designed as front-end for
# Valgrind
# line_profiler and the memory_profiler projects.

#=============================================================
# export PATH="$PATH:$HOME/bin:$HOME/.config/local/bin"
# export MANPATH="$MANPATH:$HOME/.config/local/share/man"
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.config/local/lib"
#=============================================================
setopt histignorealldups
setopt autocd
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
setopt nohup
setopt extendedglob
#=============================================================
setopt inc_append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_allow_clobber
#=============================================================
# setopt noclobber
# setopt correct
setopt autolist
setopt auto_resume
unset beep
set nobeep
setopt vi
set editing-mode vi
#=============================================================
# export PATH=${PATH}:/home/red/nvim-linux64/bin/
export PATH=${PATH}:/home/red/git/bTest/bPot/bbin/
#=============================================================
export PATH=${PATH}:/home/red/.fzf/bin/
export PATH=${PATH}:/home/red/Komodo-Edit-11/bin/
export PATH=${PATH}:/media/red/124Black/git/mySoft/
export PATH=${PATH}:/media/red/124Black/git/mySoft/nvim64/bin/
export PATH=${PATH}:/home/red/bin/
export PATH=${PATH}:/home/red/bin/better-ls-master/
export PATH=${PATH}:/home/red/bin/devicons-shell/
export PATH=${PATH}:/home/red/git/bTest/sPot/82vim/bin/
export PATH=${PATH}:/snap/bin/

#=============================================================
#GOPATH is the location of your work directory
#For example my project directory is ~/Projects/Proj1
#export GOPATH=/home/red/git/aTest/dotFiles/nVim/goLab
export GOROOT=/usr/lib/go-1.10
export GOPATH=/home/red/go
#=============================================================
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
#=============================================================
export JAVA_HOME="/usr/lib/jvm/java-8-oracle/"
export PATH=$PATH:$JAVA_HOME/bin
#=============================================================
export JYTHON_HOME=/home/red/jython2.7.0
export PATH=$JYTHON_HOME/bin:$PATH
#=============================================================
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0
#=============================================================
#PYTHONPATH=${PYTHONPATH}:/home/red/git/aTest/dotFiles/nVim/swamPython3/
#============================================================
alias pyconda='/media/red/124Black/3conda/bin/python3'
#export PATH=/media/red/124Black/3conda/bin:$PATH
#=============================================================
export LS_COLORS

#=============================================================
alias ni='nvim'
alias lnv='nvim -c "normal '\''0"'
alias mux='tmuxinator'
alias q='exit'
alias c='clear'
alias pd='pwd'
alias t='time'
alias k='kill'
alias l='exa -l'
alias d='dirs -v | head -10'
alias exat='exa -lT'
alias xx='exa -lT'
alias lst='exa -lT'

#==========================================================================================
#-Pretty print the path--------------------------------------------------------------------
alias ips="ip a | grep 'inet ' | sed -e 's/^.*inet //g' -e 's/\/.*//g' | grep -v '127.0.0.1'"
alias lss='LC_COLLATE=C ls -A --color -h --group-directories-first'
alias addr="ip -o a | cut -d ' ' -f2,7"
alias mpath='echo $PATH | tr -s ":" "\n"'

alias ggt="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gil="git log --oneline --graph"
#=============================================================
#export GREP_OPTIONS='--color=auto'
alias grep= 'grep--color=auto'
#=============================================================
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias hh='history'
alias so="source ~/.zshrc"

###############################################################
alias py='python'
alias py3='python3'
alias ca='ccat'
###############################################################
alias grey-grep="GREP_COLOR='1;30' grep -E --color=always --line-buffered"
alias red-grep="GREP_COLOR='1;31' grep -E --color=always --line-buffered"
alias green-grep="GREP_COLOR='1;32' grep -E --color=always --line-buffered"
alias yellow-grep="GREP_COLOR='1;33' grep -E --color=always --line-buffered"
alias cyan-grep="GREP_COLOR='1;36' grep -E --color=always --line-buffered"

###############################################################
alias nv='nvim'
alias vim='vim  -u ~/git/bTest/bPot/cc1CleanRC.vim'

###############################################################
alias de='deonvim  -u ~/git/bTest/kDot/kMinit.vim'
alias deo='deonvim  -u ~/git/bTest/kDot/kMinit.vim'

###############################################################
alias de1less='deonvim  -u ~/git/bTest/bPot/kkLess.vim'
alias de2less='deonvim  -u ~/git/bTest/bPot/kkLess2.vim'
alias vim2less='vim  -u ~/git/bTest/bPot/kkLess2.vim'

###############################################################

#============================================================
#=====================NEW====================================
#============================================================
alias s9='402nv.app  -u ~/git/bTest/sPot/s9DeoLc.vim'
alias s10='402nv.app  -u ~/git/bTest/sPot/s10DeoLc.vim'
alias s11='402nv.app  -u ~/git/bTest/sPot/s11DeoLc.vim'
alias s12='402nv.app  -u ~/git/bTest/sPot/s12SynDeoLc.vim'
alias s13='402nv.app  -u ~/git/bTest/sPot/s13TagDeoLc.vim'
alias s14='402nv.app  -u ~/git/bTest/sPot/s14ActTagDeoLc.vim'
alias s15='402nv.app  -u ~/git/bTest/sPot/s15ActTagDeoLc.vim'
alias s16='402nv.app  -u ~/git/bTest/sPot/s16TitanDeoLc.vim'
alias s17='402nv.app  -u ~/git/bTest/sPot/s17TitanDeoLc.vim'
alias s18='402nv.app  -u ~/git/bTest/sPot/s18TitanDeoLc.vim'
alias s19='402nv.app  -u ~/git/bTest/sPot/s19TitanDeoLc.vim'
alias s20='402nv.app  -u ~/git/bTest/sPot/s20TitanDeoLc.vim'
alias s21='402nv.app  -u ~/git/bTest/sPot/s21TitanDeoLcOrg.vim'
###############################################################
alias s022='402nv.app  -u ~/git/bTest/sPot/s22TitanDeoLcOrgMux.vim'

###############################################################
#########################TARGET################################
###############################################################
alias a22='402nv.app  -u ~/git/bTest/bPot/22DeoMuxOrg.vim'
#============================================================
alias n4='402neo.app  -u ~/git/bTest/bPot/22DeoMuxOrg.vim'
alias n5='500neo.app  -u ~/git/bTest/bPot/22DeoMuxOrg.vim'
alias n51='500neo14  -u ~/git/bTest/bPot/22DeoMuxOrg.vim'
#============================================================
alias v82='vi82  -u ~/git/bTest/bPot/cc1CleanRC.vim'
#============================================================
alias svim='vim -u ~/.SpaceVim/vimrc'
###############################################################

#============================================================
alias g1='402nv.app  -u ~/git/bTest/sPot/galore.vim'
alias g3='402nv.app  -u ~/git/bTest/sPot/g3fzf.vim'
alias g4='402nv.app  -u ~/git/bTest/sPot/g4Kim.vim'
#============================================================

###############################################################
# alias vi1='vim  -u ~/git/bTest/sPot/galore.vim'
# alias vi2='vim  -u ~/git/bTest/kDot/inkPreRc19.vim'
# alias vi82='82vim  -u ~/git/bTest/kDot/inkPreRc19.vim'
# alias vi83='82vim  -u ~/git/bTest/kDot/kill1rc.vim'
###############################################################
# alias p1='500nv.app  -u ~/git/bTest/kDot/p1Deo.vim'
# alias p2='50nv  -u ~/git/bTest/kDot/p1Deo.vim'
# alias p3='deonvim  -u ~/git/bTest/kDot/p1Deo.vim'
# alias p4='401nv.app  -u ~/git/bTest/kDot/p1Deo.vim'
###############################################################
# alias d50='nvim500  -u ~/git/bTest/kDot/k3MinFF.vim'
# alias d42='nvim402  -u ~/git/bTest/kDot/k3MinFF.vim'
# alias d41='nvim401  -u ~/git/bTest/kDot/k3MinFF.vim'
# alias d40='nvim400  -u ~/git/bTest/kDot/k3MinFF.vim'
###############################################################


#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""""""""""""""""""""""""""""""""""""FZF"""""""""""""""""""""""""""""""""""""""""""""""""
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
alias vif='vim $(fzf)'
alias def='deo $(fzf)'
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

alias fde='de $(fzf --height 40%)'
alias deless='deonvim NONE -u ~/git/bTest/kDot/kLess.vim'
#export EDITOR="vim"
export EDITOR="deonvim NONE -u ~/git/bTest/kDot/kMinit.vim"

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
alias b5deo='deo64nvim NONE -u /media/red/124Black/git/bTest/kDot/bMinit.vim'
alias b124='deo64nvim NONE -u /media/red/124Black/git/bTest/kDot/bMinit.vim'

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


###########################################################################################
# Setup fzf
#--------------
if [[ ! "$PATH" == */home/red/.fzf/bin* ]]; then
  export PATH="$PATH:/home/red/.fzf/bin"
fi
# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/red/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
#---------------
source "/home/red/.fzf/shell/key-bindings.zsh"
###########################################################################################
#export FZF_DEFAULT_OPTS='--height=70% --preview="ccat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_OPTS='--height=70% --preview="ccat {}" --preview-window=up:3:wrap'
#---------------------
#export FZF_TMUX=1
#---------------------
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --color light --margin 1,1 --preview-window=right:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--inline-info --color=light,bg+:2,info:27,fg:32 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --color light --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --color light --margin 1,1 --preview-window=right:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--inline-info --color=light,bg+:2,info:27,fg:32 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#--------------------#
#--PINK fg:5---------#
#--------------------#
export FZF_DEFAULT_OPTS="--inline-info --color=dark,fg:5,fg+:7,hl:1,hl+:32,prompt:1,spinner:2,pointer:5 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
#--CYAN fg:80----
#---------------------
export FZF_DEFAULT_OPTS="--inline-info --color=dark,fg:80,fg+:7,hl:1,hl+:32,prompt:1,spinner:2,pointer:5 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
export FZF_DEFAULT_OPTS="--inline-info --color=dark,fg:80,fg+:7,hl:1,hl+:32,prompt:1,spinner:2,pointer:1,header:2,marker:5,info:1 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
#--bind "F2:toggle-preview"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_COMMAND='rg --files'
#==============================================================
#export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'
#export FZF_ALT_C_COMMAND="cd ~/; bfs -type d -nohidden | sed s/^\./~/"
#export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
#export FZF_COMPLETION_TRIGGER='~~'
#--!!! BINGO A-C !!!--
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#==============================================================
#export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

###############################################################
#======================-ReFZF-=================================
###############################################################
#alias ffl='fzf --preview="less -f {}|ccze"'
alias fff='fzf --preview="head -$LINES {}"'
alias ffc='fzf --preview="ccat --color=always {}"'
#==============================================================
# Press F1 to open the file with less without leaving fzf
# Press CTRL-Y to copy the line to clipboard and aborts fzf (requires pbcopy)
#==============================================================
alias ff1='fff --bind "f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort"'
#==============================================================
alias ff3='fff --bind "f1:execute(vi {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort"'
#==============================================================
alias ff4='fff --bind "f1:execute(deonvim NONE -u ~/git/bTest/kDot/kMinit.vim {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort"'
#==============================================================


#################FFERUM########################################
#==============================================================
alias ffv='vim $(ffc)'
alias ffe='de $(ffc)'
alias ff2='d2 $(ffc)'
#==============================================================
###############################################################

#==============================================================
# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

#==============================================================
ffd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf --preview 'tree -C {} | head -200' ) &&
  cd "$dir"
}

#==============================================================
fft() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf --preview 'tree -C {} | head -200') && cd "$dir"
}

#==============================================================
ffa() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

#==============================================================
ffh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

#==============================================================
ffgshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}
#==============================================================
ffglog() {
  hash=$(git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |  fzf | awk '{print $1}')
  echo $hash | xclip
  echo $hash
}

###############################################################
fkill() {
    local pid
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi
}

###############################################################
extract1 () {
        if [ -f $1 ] ; then
                case $1 in
                        *.tar.bz2) tar xvjf $1 ;;
                        *.tar.gz) tar xvzf $1 ;;
                        *.bz2)
                                bunzip2 $1 ;;
                        *.rar)
                                unrar x $1
                                ;;
                        *.gz)
                                gunzip $1
                                ;;
                        *.tar)
                                tar xvf $1 ;;
                        *.tbz2)
                                tar xvjf $1 ;;
                        *.tgz)
                                tar xvzf $1 ;;
                        *.zip)
                                unzip $1
                                ;;
                        *.Z)
                                uncompress $1 ;;
                        *.7z)
                                7z x $1
                                ;;
                        *)
                                echo "don't know how to extract '$1'..." ;;
                esac
        else
                echo "'$1' is not a valid file!"
        fi
}
###############################################################
### dict -d fd-eng-spa "how"
### apt-get install dict-gcide
### apt-get install dict-wn
### apt-get install dict-moby-thesaurus
###############################################################



#==========================================================================================
function mkd() {
        mkdir -p "$@" && cd "$_";
}
#==========================================================================================
function tre() {
        tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}

#==========================================================================================
fkill() {
        pid=$(ps -ux | sed 1d | fzf -m | awk '{print $2}')

        if [ "x$pid" != "x" ]
        then
                kill -${1:-9} $pid
        fi
}

#==========================================================================================
#turn on tab completion and make it fancy
autoload -U compinit
compinit -C
autoload -U compinit && compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#==========================================================================================
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char
# Common emacs bindings for vi mode
bindkey '\e[3~'   delete-char
bindkey '^A'      beginning-of-line
bindkey '^E'      end-of-line
bindkey '^R'      history-incremental-pattern-search-backward
# Tmux home/end
bindkey '\e[1~'      beginning-of-line
bindkey '\e[4~'      end-of-line
# user-friendly command output
export CLICOLOR=1
ls --color=auto &> /dev/null && alias ls='ls --color=auto'
#==========================================================================================
#HISTFILE=~/.histfile
HISTSIZE=9000
SAVEHIST=9000

###########################################################################################
#=============================================================
export ZPLUG_HOME=$HOME/.zplug
# zplug initialization
[[ ! -f $ZPLUG_HOME/init.zsh ]] && git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh
#=============================================================
###########################################################################################
# zplug "lib/completion",   from:oh-my-zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "lib/history",      from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh
#=============================================================
zplug "plugins/git", from:oh-my-zsh
# zplug "plugins/history", from:oh-my-zsh
# zplug "plugins/tmux", from:oh-my-zsh
# zplug "plugins/z", from:oh-my-zsh

#=============================================================
#-???-source ~/.dotfiles/zsh/vi-mode.zsh
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search', defer:3
#=============================================================
# warn when running command you have an alias for
# zplug "djui/alias-tips", from:github
zplug "plugins/colored-man-pages", from:oh-my-zsh
# zplug 'zdharma/fast-syntax-highlighting', defer:2, hook-load:'FAST_HIGHLIGHT=()'
# zplug "unixorn/git-extra-commands", from:github

#=============================================================
###zplug 'modules/environment', from:prezto
###zplug 'modules/terminal', from:prezto
###zplug 'modules/directory', from:prezto
###zplug 'modules/utility', from:prezto
###zplug 'modules/completion', from:prezto
###zplug 'modules/history', from:prezto
#=============================================================
###zplug "lukechilds/zsh-better-npm-completion"
###zplug "BuonOmo/yarn-completion"
###zplug "hlissner/zsh-autopair"
### zplug "MikeDacre/careful_rm"
#==========================================================================================
DISABLE_AUTO_TITLE="true"
# Grab binaries from GitHub Releases
# and rename to use "file:" tag

#==========================================================================================
### zplug "skx/sysadmin-util", from:github
### zplug "peterhurford/git-it-on.zsh", from:github
###########################################################################################
#============================DENISOSOVAN===================================================
###########################################################################################

zplug denysdovhan/spaceship-zsh-theme, use:spaceship.zsh, from:github, as:theme

#==========================================================================================
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
#==========================================================================================

#==========================================================================================
# define RPS1 in order to avoid the annoying vim status
# export RPS1=" "
# zplug 'plugins/vi-mode', from:oh-my-zsh
#==========================================================================================

###########################################################################################
#======================================================
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="red"
SPACESHIP_CHAR_COLOR_SECONDARY="yellow"

SPACESHIP_DIR_SHOW="true"
SPACESHIP_DIR_COLOR="green"
SPACESHIP_DIR_TRUNC=7

SPACESHIP_BATTERY_SHOW="true"
SPACESHIP_BATTERY_SHOW="always"
SPACESHIP_BATTERY_COLOR="red"

SPACESHIP_USER_SHOW="true"
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_PREFIX="user:"
SPACESHIP_USER_COLOR="red"

#======================================================
# spaceship_vi_mode_enable="true"
# SPACESHIP_VI_MODE_SUFFIX="#"
#======================================
SPACESHIP_VI_MODE_SHOW="true"
SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VI_MODE_INSERT="[I]"
SPACESHIP_VI_MODE_NORMAL="[N]"
SPACESHIP_VI_MODE_COLOR="yellow"
#======================================================

#======================================================
SPACESHIP_GIT_STATUS_SHOW="true"
SPACESHIP_GIT_BRANCH_SUFFIX=""
SPACESHIP_GIT_STATUS_COLOR="cyan"
SPACESHIP_GIT_STATUS_COLOR="red"

#======================================================
# SPACESHIP_EXEC_TIME_SHOW true
# SPACESHIP_EXEC_TIME_PREFIX took·
# SPACESHIP_EXEC_TIME_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX
# SPACESHIP_EXEC_TIME_COLOR yellow
#======================================================

# vi_mode       # Vi-mode indicator (Disabled)
###########################################################################################
#===============================================================
SPACESHIP_PROMPT_ORDER=(
  user
  vi_mode
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package
  node
  pyenv         # Pyenv section
  conda
  venv
  docker
  julia
  golang
  ruby
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
#===============================================================
###############ZPLUG########################################################################
# plugins=(
#         git
#         dotenv
#         zsh-completions
#         alias-tips
# )
# autoload -U compinit && compinit
#===============================================================
# plugins=(… zsh-completions)
# plugins=(
#   git
#   bundler
#   dotenv
#   osx
#   rake
#   rbenv
#   ruby
# )
###########################################################################################
#===FIN==STOP==============================================================================
zplug check || zplug install
zplug load --verbose
###########################################################################################


###########################################################################################
#==========================================================================================
# export PATH="~/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

export PYENV_ROOT="$HOME"/.pyenv
export PATH="$PYENV_ROOT"/bin:"$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
#==========================================================================================
# go to a path relative to the top directory
# of the current git worktree.
function gcd() {
  topdir=$(git rev-parse --show-toplevel)
  if [[ $? -ne 0 ]]; then
    return 1
  fi
  cd "${topdir}/${1}"
}


#===PET===PET==============================================================================
function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

# !/usr/bin/env bash
 is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
     | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
 tmux bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
 tmux bind-key -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D"
 tmux bind-key -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
 tmux bind-key -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"
 tmux bind-key -n C-\\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
 tmux bind-key -T copy-mode-vi C-h select-pane -L
 tmux bind-key -T copy-mode-vi C-j select-pane -D
 tmux bind-key -T copy-mode-vi C-k select-pane -U
 tmux bind-key -T copy-mode-vi C-l select-pane -R
 tmux bind-key -T copy-mode-vi C-\\ select-pane -l
#==========================================================================================
#==========================================================================================
# zplug "junegunn/fzf-bin", \
#     as:command, \
#     from:gh-r, \
#     file:fzf
#==========================================================================================
# # Setting ag as the default source for fzf - include hidden files
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# # To apply the command to CTRL-T as well
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# # Preview files when highlighting
# export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
# # Default options
# export FZF_DEFAULT_OPTS="--multi --inline-info --height 40%"
# # Use a split pane in tmux
# export FZF_TMUX=1
# export FZF_TMUX_HEIGHT=40%
# Shell integration
# [ -s ~/.fzf.zsh ] && source ~/.fzf.zsh

#==========================================================================================
# export PATH=${PATH}:/bin
# export PATH=${PATH}:/usr/bin
# export PATH=${PATH}:/usr/local/bin
# export PATH=${PATH}:/sbin
# export PATH=${PATH}:/usr/sbin
# export PATH=${PATH}:/usr/local/sbin
# export PATH=${PATH}:/usr/local/git/bin
# export PATH=${PATH}:~/.composer/vendor/bin
# export PATH=${PATH}:/home/vagrant/bin
# export PATH=${PATH}:vendor/bin

#===LOAD===PROFILE========================================================================
#if [ -x /etc/profile ]; then
#    setopt -G
#    . /etc/profile
#    setopt +G
#fi

#==========================================================================================
# mkdir -p = md
# git add = ga
# git add --all = gaa
# git branch = gb
# git commit -m = gcmsg
# git checkout = gco
# git pull origin currentbranch = ggpull
# git push origin currentbranch = ggpush
# systemctl start = sc-start
# systemctl stop = sc-stop
# systemctl status = sc-status
# systemctl enable = sc-enable
#==========================================================================================
#=If you want to check out the whole list, again the=======================================

# https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet
#==========================================================================================
#################################NVIM-make#################################################
### cd vim-master-82/src
### --OR--
### cd git/vim82/vim/src
### ./configure --prefix =/home/red/82vim
### ./configure --prefix =/media/red/124Black/git/mySoft
# ./configure --prefix =/media/red/124Black/git/mySoft/vim81/
# ./configure --prefix =/media/red/124Black/git/mySoft/vim81/
### Unix: PUTTING vimrc IN /etc
### Some Linux distributions prefer to put the global vimrc file in /etc, and the
### Vim runtime files in /usr.  This can be done with:
### 	./configure --prefix=/usr
### 	make VIMRCLOC=/etc VIMRUNTIMEDIR=/usr/share/vim MAKE="make -e"
# ./configure --prefix =/media/red/124Black/git/mySoft
# ./configure --prefix =/media/red/124Black/git/mySoft/
# make CMAKE_INSTALL_PREFIX=/media/red/124Black/git/mySoft/
# make CMAKE_INSTALL_PREFIX=/media/red/124Black/git/mySoft/
# make CMAKE_BUILD_TYPE=RelWithDebInfo USE_BUNDLED=OFF
# To install to a non-default location:
#     make CMAKE_INSTALL_PREFIX=/full/path/
#     make install
# To skip bundled (`third-party/*`) dependencies:
# 1. Install the dependencies using a package manager.
#    ```
#    sudo apt install gperf luajit luarocks libuv1-dev libluajit-5.1-dev libunibilium-dev libmsgpack-dev libtermkey-dev libvterm-dev
#    sudo luarocks build mpack
#    sudo luarocks build lpeg
#    sudo luarocks build inspect
#    ```
# 2. Build with `USE_BUNDLED=OFF`:
#    ```
#    make CMAKE_BUILD_TYPE=RelWithDebInfo USE_BUNDLED=OFF
#    sudo make install
### make install
### cd ~/nvim-linux64/bin
### cp nvim deonvim
### ./deonvim -u ~/git/aTest/dotFiles/nVim/minit.vim
#############################################################
#############################################################
#############################################################

#?? source ~/.config/up/up.sh

###################################TAR##############################################################################
#-----DUDA-bdm-------
# tar -P --listed-incremental=/media/red/124Black/TAR/TarTopX2Py/x2Snap.file -cJpf /media/red/124Black/TAR/TarTopX2Py/x2PyBack-`date +%d-%b-%Y-%H-%M-%S`.tar.xz /home/red/git/bTest/kDot/x2PyCalc/ >> /dev/null 2>&1
#--------------------------------------------------------------------------------------------------
#----DotK------------------------------------------------------------------------------------------
# tar -P --listed-incremental=/media/red/124Black/TAR/TarDotK/kDot2Snap.file -cJpf /media/red/124Black/TAR/TarDotK/kDot2BCK-`date +%d-%b-%Y-%H-%M-%S`.tar.xz /home/red/git/bTest/kDot/
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#----sPot------------------------------------------------------------------------------------------
# tar -P --listed-incremental=/media/red/124Black/TAR/TarDotK/kSPot2Snap.file -cJpf /media/red/124Black/TAR/TarSPot/kDot2BCK-`date +%d-%b-%Y-%H-%M-%S`.tar.xz /home/red/git/bTest/sPot/
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
####################################################################################################################
#---.Config-----------------------------------------------------------------------------------------
# tar -P --listed-incremental=/media/red/124Black/TAR/TarRedConfig/RedConfig2Snap.file -cJpf /media/red/124Black/TAR/TarRedConfig/TarRedConfig-`date +%d-%b-%Y-%H-%M-%S`.tar.xz /home/red/.config/
#----bPot------------------------------------------------------------------------------------------
# tar -P --listed-incremental=/media/red/124Black/TAR/TarBPot/kBPot2Snap.file -cJpf /media/red/124Black/TAR/TarBPot/bPot2BCK-`date +%d-%b-%Y-%H-%M-%S`.tar.xz /home/red/git/bTest/bPot/
####################################################################################################################

set -o vi

#--------------------------------------------------------------------------------------------------
# cd ~/git/bTest/kDot/
#--------------------------------------------------------------------------------------------------
# cd ~/git/bTest/bPot/
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/red/.sdkman"
[[ -s "/home/red/.sdkman/bin/sdkman-init.sh" ]] && source "/home/red/.sdkman/bin/sdkman-init.sh"
