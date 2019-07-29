#! /bin/sh
# xFZF.sh

###GIT###GIT###GIT### IT###GIT###GIT###
###Nr1.
git log --pretty=oneline | fzf

###Nr2.
git show $(git log --pretty=oneline | fzf | cut -d=' ' -f1)

###Nr3.
tig show $(git log --pretty=oneline | fzf | cut -d=' ' -f1)

###Nr3.
git checkout $(git recent | fzf)

###Nr3.
You want to edit some non committed file you are working on. I execute this:

vim $(git status -s | fzf -m)
d2 $(git status -s | fzf -m)

###Nr3.
Another useful command. You want to edit some files that were changed in some specific commit and you want to select it. I execute this:

git pamvimlog




# Feed the output of fd into fzf
fd --type f | fzf

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# Now fzf (w/o pipe) will use fd instead of find
fzf

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

If you want the command to follow symbolic links, and don't want it to exclude hidden files, use the following command:

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'



nmap <Leader>s :Filetypes<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>H :Helptags!<CR>
nmap <Leader>a :Ag<Space>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>k :Marks<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>


# 4VIM 4VIM 4VIM 4VIM 4VIM 4VIM 4VIM 4VIM
command! -nargs=0 MyCmd :call SelectSomething()

function! SelectSomething()
call fzf#run({
    \ 'source': "my-cmd",
    \ 'sink': ":DoSomething"
    \})
endfunction

If I want a custom Ag command, which would only "grep" the contents of one
particular folder, and would then pass the selection to a custom
command, what is the best solution to this task? Is there any way to do
this by extending fzf#vim#ag function like it is shown in README, for
example?

As of now, I came up with this:

command! MyFZFList call fzf#run({
            \  'source':  "rg . --no-heading --column --glob '*.txt' '/My/Very/Folder'",
            \  'sink':    'MyCustomCommand',
            \  'options': '-s',
            \  'down':    '40%'})

#==================================================
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
#==================================================
Create your own plug-ins

fzf#run()It’s the core function of vim integration. It accepts a dictionary variable as input, and you must at least pass through it.sinkOptions to tell FZF how to handle selected entries.
For example:

call fzf#run({'sink': 'tabedit', 'options': '--multi --reverse'})

call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})

call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
            \               'fnamemodify(v:val, ":t:r")'),
            \ 'sink': 'colo', 'left': '25%'})

#==================================================

# 4VIM 4VIM 4VIM 4VIM 4VIM 4VIM 4VIM 4VIM



# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

#==point====================================================
# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

#=============================================================
fzf-tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then 
     tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

#=============================================================
fzf-glog() {  
  hash=$(git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |  fzf | awk '{print $1}')
  echo $hash | xclip
  git showtool $hash
}



# fd - cd to selected directory
fcd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# cf - fuzzy cd from anywhere
# ex: cf word1 word2 ... (even part of a file name)
# zsh autoload function
fzd() {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n $file ]]
  then
     if [[ -d $file ]]
     then
        cd -- $file
     else
        cd -- ${file:h}
     fi
  fi
}


#==============================================================
# fd - cd to selected directory
f0d() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
#=============================================================
# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fzf-fe() {
  local files
o IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

#export EDITOR="deonvim NONE -u ~/git/bTest/kDot/kMinit.vim"
#=============================================================
# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fzf-fo() {
  local out file key
  IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

#=============================================================
# AG-GREP
fz-vg() {
  local file
  file="$(ag --nobreak --noheading $@ | fzf -0 -1 | awk -F: '{print $1 " +" $2}')"
  if [[ -n $file ]]
  then
     vim $file
  fi
}


###################
###########################################################################################
#========================================================================================
###########################################################################################
###################
# Key bindings
# ------------
if [[ $- == *i* ]]; then

# CTRL-T - Paste the selected file path(s) into the command line
__fsel() {
  local cmd="${FZF_CTRL_T_COMMAND:-"command find -L . -mindepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
    -o -type f -print \
    -o -type d -print \
    -o -type l -print 2> /dev/null | cut -b3-"}"
  setopt localoptions pipefail 2> /dev/null
  eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
    echo -n "${(q)item} "
  done
  local ret=$?
  echo
  return $ret
}

__fzf_use_tmux__() {
  [ -n "$TMUX_PANE" ] && [ "${FZF_TMUX:-0}" != 0 ] && [ ${LINES:-40} -gt 15 ]
}

__fzfcmd() {
  __fzf_use_tmux__ &&
    echo "fzf-tmux -d${FZF_TMUX_HEIGHT:-40%}" || echo "fzf"
}

fzf-file-widget() {
  LBUFFER="${LBUFFER}$(__fsel)"
  local ret=$?
  zle reset-prompt
  return $ret
}
zle     -N   fzf-file-widget
bindkey '^T' fzf-file-widget

# Ensure precmds are run after cd
fzf-redraw-prompt() {
  local precmd
  for precmd in $precmd_functions; do
    $precmd
  done
  zle reset-prompt
}
zle -N fzf-redraw-prompt

# ALT-C - cd into the selected directory
fzf-cd-widget() {
  local cmd="${FZF_ALT_C_COMMAND:-"command find -L . -mindepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
    -o -type d -print 2> /dev/null | cut -b3-"}"
  setopt localoptions pipefail 2> /dev/null
  local dir="$(eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_ALT_C_OPTS" $(__fzfcmd) +m)"
  if [[ -z "$dir" ]]; then
    zle redisplay
    return 0
  fi
  cd "$dir"
  local ret=$?
  zle fzf-redraw-prompt
  return $ret
}
zle     -N    fzf-cd-widget
bindkey '\ec' fzf-cd-widget

# CTRL-R - Paste the selected command from history into the command line
fzf-history-widget() {
  local selected num
  setopt localoptions noglobsubst noposixbuiltins pipefail 2> /dev/null
  selected=( $(fc -rl 1 |
    FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS --query=${(qqq)LBUFFER} +m" $(__fzfcmd)) )
  local ret=$?
  if [ -n "$selected" ]; then
    num=$selected[1]
    if [ -n "$num" ]; then
      zle vi-fetch-history -n $num
    fi
  fi
  zle reset-prompt
  return $ret
}
zle     -N   fzf-history-widget
bindkey '^R' fzf-history-widget

fi

#=============================================================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export BAT_THEME="TwoDark"
export FZF_COMPLETION_OPTS="--preview '(bat --color=always {} || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_T_OPTS="$FZF_COMPLETION_OPTS"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


#=============================================================================================================
pet is a simple command-line snippet manager (inspired by memo). I always forget commands that I rarely use. Moreover, it is difficult to search them from shell history. There are many similar commands, but they are all different.

$ awk -F, 'NR <=2 {print $0}; NR >= 5 && NR <= 10 {print $0}' company.csv (What I am looking for)
$ awk -F, '$0 !~ "DNS|Protocol" {print $0}' packet.csv
$ awk -F, '{print $0} {if((NR-1) % 5 == 0) {print "----------"}}' test.csv

In the above case, I search by awk from shell history, but many commands hit.

Even if I register an alias, I forget the name of alias (because I rarely use that command).

So I made it possible to register snippets with description and search them easily.



Run pet configure

[General]
  snippetfile = "path/to/snippet" # specify snippet directory
  editor = "vim"                  # your favorite text editor
  column = 40                     # column size for list command
  selectcmd = "fzf"               # selector command for edit command (fzf or peco)
  backend = "gist"                # specify backend service to sync snippets (gist or gitlab, default: gist)
  sortby  = "description"         # specify how snippets get sorted (recency (default), -recency, description, -description, command, -command, output, -output)

[Gist]
  file_name = "pet-snippet.toml"  # specify gist file name
  access_token = ""               # your access token
  gist_id = ""                    # Gist ID
  public = false                  # public or priate
  auto_sync = false               # sync automatically when editing snippets

[GitLab]
  file_name = "pet-snippet.toml"  # specify GitLab Snippets file name
  access_token = "XXXXXXXXXXXXX"  # your access token
  id = ""                         # GitLab Snippets ID
  visibility = "private"          # public or internal or private
  auto_sync = false               # sync automatically when editing snippets

