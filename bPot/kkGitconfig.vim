[user]
email = berman.albert@gmail.com
name = Albert
username = alf

[github]
user = albert4git
token = token

[alias]
# aliases starting with !sh
aliases = !git config --get-regexp 'alias.*' | colrm 1 6 | sed 's/[ ]/ = /' | sort    # list all aliases
tst = status
tci = commit
tcie = commit --allow-empty-message -m ''
tdf = diff -C --color-words
tfind = !sh -c 'git lg --grep="$@"'    # search for a string in the commit message log
l = log --oneline --graph

[core]
editor = vim
whitespace = fix,-indent-with-non-tab,trailing-space,cr-at-eol
excludesfile = /home/red/.gitignore

[web]
browser = google-chrome

[rerere]
enabled = 1
autoupdate = 1

[push]
default = matching

[color]
ui = auto

[color "branch"]
current = yellow bold
local = green bold
remote = cyan bold

[color "diff"]
meta = yellow bold
frag = magenta bold
old = red bold
new = green bold
whitespace = red reverse

[color "status"]
added = green bold
changed = yellow bold
untracked = red bold

[diff]
tool = vimdiff

[difftool]
prompt = false

