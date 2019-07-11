#=============================================================
# i dont see Collor ?
#
#=============================================================
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
export ZPLUG_HOME=$HOME/.zplug
# zplug initialization
[[ ! -f $ZPLUG_HOME/init.zsh ]] && git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
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
# Dircolors
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
#=============================================================
export PATH=${PATH}:/home/red/nvim-linux64/bin/
export PATH=${PATH}:/home/red/.fzf/bin/
export PATH=${PATH}:/home/red/Komodo-Edit-11/bin/
export PATH=${PATH}:/media/red/124Black/git/mySoft/
export PATH=${PATH}:/media/red/124Black/git/mySoft/nvim64/bin/

#GOPATH is the location of your work directory
#For example my project directory is ~/Projects/Proj1
#export GOPATH=/home/red/git/aTest/dotFiles/nVim/goLab
export GOROOT=/usr/lib/go-1.10
export GOPATH=/home/red/go
#=============================================================
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

#=============================================================
export JYTHON_HOME=/home/red/jython2.7.0
export PATH=$JYTHON_HOME/bin:$PATH

#=============================================================
#PYTHONPATH=${PYTHONPATH}:/home/red/git/aTest/dotFiles/nVim/swamPython3/
#============================================================
alias pyconda='/media/red/124Black/3conda/bin/python3'
#export PATH=/media/red/124Black/3conda/bin:$PATH
#=============================================================
export LS_COLORS
#=============================================================
#export GREP_OPTIONS='--color=auto'
alias grep= 'grep--color=auto'
# Add some colour to LESS/MAN pages
###-DEPRICATED-
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;33m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m' 
# export LESS_TERMCAP_so=$'\E[01;42;30m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;36m'
#=============================================================

alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias hh='history'
alias so="source ~/.zshrc"
###############################################################
alias nv='nvim'
alias wi1='vim -U NONE -u ~/git/bTest/kDot/WIMRC/wimrc-deopl-tern-min.vim'

###############################################################
# alias ni1='nvim -U NONE -u ~/git/aTest/dotFiles/nVim/ninitOkt18.vim'
# alias ni2='nvim -U NONE -u ~/git/aTest/dotFiles/nVim/start1ninit19.vim'
# alias wi2='vim -U NONE -u ~/git/aTest/dotFiles/inkWim/xvim-Marius.vim'
# alias wi3='vim -U NONE -u ~/git/aTest/dotFiles/inkWim/xvim-tinyX.vim'
# alias wi4='vim -U NONE -u ~/git/aTest/dotFiles/inkWim/wimrc-erik.vim'
# alias wi5='vim -U NONE -u ~/git/aTest/dotFiles/inkWim/wim-nakamura.vim'
###############################################################

# tail -f InPlayLog20190419.log | perl -pe 's/DEBUG/\e[1;31;43m$&\e[0m/g' 
# tail -f InPlayLog20190419.log | perl -pe 's/INFO/\e[1;30;43m$&\e[0m/g'

alias grey-grep="GREP_COLOR='1;30' grep -E --color=always --line-buffered"
alias red-grep="GREP_COLOR='1;31' grep -E --color=always --line-buffered"
alias green-grep="GREP_COLOR='1;32' grep -E --color=always --line-buffered"
alias yellow-grep="GREP_COLOR='1;33' grep -E --color=always --line-buffered"
alias cyan-grep="GREP_COLOR='1;36' grep -E --color=always --line-buffered"

# tail -f InPlayLog20190419.log | grey-grep ".*DEBUG*|$" | cyan-grep "INFO|$" | yellow-grep "WARN|$" | red-grep "[ERROR].*|[FATAL].*|$" | green-grep "***|$"

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
alias py='python'
alias py3='python3'
alias ca='ccat'

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
alias de='deonvim NONE -u ~/git/bTest/kDot/kMinit.vim'
alias deo='deonvim NONE -u ~/git/bTest/kDot/kMinit.vim'
alias kdeo='deonvim NONE -u ~/git/bTest/kDot/kMinit.vim'
alias fde='de $(fzf --height 40%)'
alias deless='deonvim NONE -u ~/git/bTest/kDot/kLess.vim'
#export EDITOR="vim"
export EDITOR="deonvim NONE -u ~/git/bTest/kDot/kMinit.vim"

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
alias b5deo='deo64nvim NONE -u /media/red/124Black/git/bTest/kDot/bMinit.vim'
alias b124='deo64nvim NONE -u /media/red/124Black/git/bTest/kDot/bMinit.vim'
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
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --color light --margin 1,1 --preview-window=right:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--inline-info --color=light,bg+:2,info:27,fg:32 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --color light --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --color light --margin 1,1 --preview-window=right:50%:wrap --bind 'F2:toggle-preview'"
#export FZF_DEFAULT_OPTS="--inline-info --color=light,bg+:2,info:27,fg:32 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
#---------------------
#--PINK fg:5------
#---------------------
export FZF_DEFAULT_OPTS="--inline-info --color=dark,fg:5,fg+:7,hl:1,hl+:32,prompt:1,spinner:2,pointer:5 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
#--CYAN fg:80----
#---------------------
export FZF_DEFAULT_OPTS="--inline-info --color=dark,fg:80,fg+:7,hl:1,hl+:32,prompt:1,spinner:2,pointer:5 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
#--CYAN fg:80----
#---------------------
export FZF_DEFAULT_OPTS="--inline-info --color=dark,fg:80,fg+:7,hl:1,hl+:32,prompt:1,spinner:2,pointer:1,header:2,marker:5,info:1 --margin 1,1 --preview-window=up:50%:wrap --bind 'F2:toggle-preview'"
#---------------------
#---------------------
#---------------------

#--bind "F2:toggle-preview"
#export FZF_DEFAULT_OPTS='--no-height --no-reverse'
#export FZF_TMUX=1
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
#alias ffl='fzf --preview="less -f {}|ccze"'
alias fff='fzf --preview="head -$LINES {}"'
alias ffc='fzf --preview="ccat --color=always {}"'
# Press F1 to open the file with less without leaving fzf
# Press CTRL-Y to copy the line to clipboard and aborts fzf (requires pbcopy)
alias ff1='fff --bind "f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort"'
alias ff2='fff --bind "f1:execute(deonvim NONE -u ~/git/bTest/kDot/kMinit.vim {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort"'
alias ff3='fff --bind "f1:execute(vi {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort"'
alias ffv='vim $(fzf)'
alias ffe='de $(fff)'
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
# fh - repeat history
ffh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
#==============================================================
# fshow - git commit browser
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
# fkill - kill processes - list only the ones you can kill. Modified the earlier script.
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
### dict -d fd-eng-spa "how"
### apt-get install dict-gcide
### apt-get install dict-wn
### apt-get install dict-moby-thesaurus
###############################################################

# alias deo1='deonvim NONE -u ~/git/aTest/dotFiles/nVim/minit.vim'

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

#-Pretty print the path--------------------------------------------------------------------
alias ips="ip a | grep 'inet ' | sed -e 's/^.*inet //g' -e 's/\/.*//g' | grep -v '127.0.0.1'"
alias lss='LC_COLLATE=C ls -A --color -h --group-directories-first'
alias addr="ip -o a | cut -d ' ' -f2,7"
alias mpath='echo $PATH | tr -s ":" "\n"'


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

#==========================================================================================
zplug "lib/completion",   from:oh-my-zsh
zplug "lib/history",      from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh
#=============================================================
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh

#=============================================================
#-???-source ~/.dotfiles/zsh/vi-mode.zsh
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search', defer:3

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
#=============================================================
#==========================================================================================
# warn when running command you have an alias for
zplug "djui/alias-tips", from:github
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug 'zdharma/fast-syntax-highlighting', defer:2, hook-load:'FAST_HIGHLIGHT=()'
zplug "unixorn/git-extra-commands", from:github
#==========================================================================================
DISABLE_AUTO_TITLE="true"
# Grab binaries from GitHub Releases
# and rename to use "file:" tag



#==========================================================================================
### # MMM git helper scripts
### # sysadmin helpers
### zplug "skx/sysadmin-util", from:github
### # open branch/files in github
### zplug "peterhurford/git-it-on.zsh", from:github
#==========================================================================================

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
zplug denysdovhan/spaceship-zsh-theme, use:spaceship.zsh, from:github, as:theme

#======================================================
# red:dirty, white:ahead, and green:clean.
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="red"
SPACESHIP_CHAR_COLOR_SECONDARY="yellow"

SPACESHIP_DIR_SHOW="true"
SPACESHIP_DIR_COLOR="green"
SPACESHIP_DIR_TRUNC=7 

#======================================================================
# SPACESHIP_DIR_SHOW true Show directory section
# SPACESHIP_DIR_PREFIX in· Prefix before current directory
# SPACESHIP_DIR_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix after
# current directory
# SPACESHIP_DIR_TRUNC 3 Number of folders of cwd to show in prompt, 0 to
# show all
# SPACESHIP_DIR_TRUNC_PREFIX Prefix before cwd when it's truncated. For
# example …/ or .../, empty to disable
# SPACESHIP_DIR_TRUNC_REPO true While in git repo, show only root
# directory and folders inside it
# SPACESHIP_DIR_COLOR cyan Color of directory section
# SPACESHIP_DIR_LOCK_SYMBOL 
# write-protected (requires powerline patched font)
# SPACESHIP_DIR_LOCK_COLOR red Color for the lock symbol
#======================================================================

SPACESHIP_BATTERY_SHOW="true"
SPACESHIP_BATTERY_SHOW="always"
SPACESHIP_BATTERY_COLOR="red"

SPACESHIP_USER_SHOW="true"
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_PREFIX="user:"
SPACESHIP_USER_COLOR="red"

#======================================================
spaceship_vi_mode_enable="true"
SPACESHIP_VI_MODE_SHOW="true"
#======================================================
SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VI_MODE_NORMAL="[n]"
SPACESHIP_VI_MODE_INSERT="[i]"
SPACESHIP_VI_MODE_COLOR="yellow"

#======================================================
SPACESHIP_TIME_SHOW="true" 
SPACESHIP_TIME_PREFIX="at:"
SPACESHIP_TIME_COLOR="blue"
# SPACESHIP_TIME_FORMAT false Custom date formatting [67]ZSH date formats
# SPACESHIP_TIME_12HR false Format time using 12-hour clock (am/pm)
#======================================================
SPACESHIP_GIT_STATUS_SHOW="true"
SPACESHIP_GIT_BRANCH_SUFFIX=":::"
SPACESHIP_GIT_STATUS_COLOR="cyan"
SPACESHIP_GIT_STATUS_COLOR="red"

#===============================================================
SPACESHIP_PROMPT_ORDER=(
  time
  user
  battery
  vi_mode       # Vi-mode indicator (Disabled)
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




#===FIN==STOP==============================================================================
zplug check || zplug install
#zplug load
zplug load --verbose

set -o vi
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
# export PATH="${PATH}:${HOME}/bin:${HOME}/.cabal/bin"
# export GOPATH="$HOME/go"
#==========================================================================================
# returning command and folder completion when line is empty like a bash, but better
# blanktab() { [[ $#BUFFER == 0 ]] && CURSOR=3 zle list-choices || zle expand-or-complete }
# zle -N blanktab && bindkey '^I' blanktab
#==========================================================================================
# We have environment variables available in our shells. Sometimes we want to
# manipulate the value of these variables or just visually inspect them
#==========================================================================================
# cd ../.. = ...
# cd ../../.. = ....
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
###############################################################
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
#" If installed using git
#set rtp+=~/.fzf

# tig on  master: 
#  make install
#    INSTALL  src/tig -> /home/red/bin
#    INSTALL  tigrc -> /home/red/etc
