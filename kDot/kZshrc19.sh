#=============================================================
# i dont see Collor ?
#=============================================================
export EDITOR="vim"
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
setopt vi
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
#=============================================================
# Dircolors
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
#=============================================================
export PATH=${PATH}:/home/red/nvim-linux64/bin/
export PATH=${PATH}:/home/red/.fzf/bin/
export PATH=${PATH}:/home/red/Komodo-Edit-11/bin/

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
export PYTHONPATH=${PYTHONPATH}:/home/red/git/aTest/dotFiles/nVim/swamPython3/
#=============================================================
export LS_COLORS


alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias hh='history'
alias so="source ~/.zshrc"
alias nv='nvim'
alias ni1='nvim -U NONE -u ~/git/aTest/dotFiles/nVim/ninitOkt18.vim'
alias ni2='nvim -U NONE -u ~/git/aTest/dotFiles/nVim/start1ninit19.vim'

alias py='python'
alias py3='python3'
alias ca='ccat'
###############################################################
### cd vim-master-82/src
### --OR--
### cd git/vim82/vim/src
### ./configure --prefix =/home/red/82vim
### make install
### cd ~/nvim-linux64/bin
### cp nvim deonvim
### ./deonvim -u ~/git/aTest/dotFiles/nVim/minit.vim
###############################################################

alias de='deonvim NONE -u ~/git/bTest/kDot/kMinit.vim'
alias deo='deonvim NONE -u ~/git/bTest/kDot/kMinit.vim'
alias kdeo='deonvim NONE -u ~/git/bTest/kDot/kMinit.vim'
alias deless='deonvim NONE -u ~/git/bTest/kDot/kLess.vim'



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
SAVEHIST=1717

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
zplug load --verbose


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

#==========================================
# SPACESHIP_BATTERY_SHOW="always"
# SPACESHIP_USER_SHOW="true"
# SPACESHIP_USER_SHOW="always"
# SPACESHIP_USER_PREFIX="user:"
# SPACESHIP_USER_COLOR="red"
#======================================================
# spaceship_vi_mode_enable="true"
# SPACESHIP_VI_MODE_SHOW="true"
# SPACESHIP_VI_MODE_COLOR="cyan"
# SPACESHIP_VI_MODE_INSERT="InMODE"
# SPACESHIP_VI_MODE_NORMAL="NMODE"
#======================================================
SPACESHIP_GIT_STATUS_SHOW="true"
SPACESHIP_GIT_BRANCH_SUFFIX=":"
SPACESHIP_GIT_STATUS_COLOR="cyan"
SPACESHIP_GIT_STATUS_COLOR="red"
SPACESHIP_DIR_COLOR="green"

#===============================================================
SPACESHIP_PROMPT_ORDER=(
  vi_mode       # Vi-mode indicator (Disabled)
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  pyenv         # Pyenv section
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

#===FIN==STOP==============================================================================
zplug check || zplug install
zplug load

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
