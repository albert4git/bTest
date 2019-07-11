#! /bin/sh
#
#opeGitconfig.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



[advice]
	statusHints = false
[alias]
	cherry-lick = !sh -c 'hub checkout HEAD^{} -- && hub cherry-pick \"$@\"' _
	ctags = "!sh -c '[ -f .git/hooks/ctags ] || git init; .git/hooks/ctags' git-ctags"
	one = show -s --pretty='format:%h (%s)'
	recursive-update = "!sh -c 'find \"${@:-.}\" -type d -name .git -exec dirname {} \\; -exec git --git-dir={} remote update \\;' _"
	rlog = !sh -c 'git log --color \"$@\"|fmt -s -w 79|less -FRSX' _
	summary = log --abbrev-commit --pretty=oneline --author="im.ope" --since=last.mon --reverse
	trust = "!mkdir -p .git/safe .git/$LOGNAME@`ope host name`"
[branch]
	autosetupmerge = always
	autosetuprebase = always
[core]
	excludesfile = ~/.cvsignore
	pager = less -S
[diff "ruby"]
	funcname = "^ *\\(\\(def\\) .*\\)"
[diff "image"]
	textconv = identify
[color]
	ui = auto
	diff = auto
	status = auto
	branch = auto
	interactive = auto
	grep = auto
[github]
	user = ope
[init]
	templatedir = ~/.git_template
[interactive]
	singlekey = true
[help]
	autocorrect = 10
[merge]
	summary = true
[merge "bundle"]
	name = bundle
	driver = bundle
[merge "railsschema"]
	name = newer Rails schema version
	driver = hookup resolve-schema %A %O %B %L
[pull]
	rebase = true
[push]
	default = tracking
[rebase]
	autosquash = true
[user]
	name = ope
	email = code@tpop"e.ne"t
[web]
	browser = ope
[browser "ope"]
	cmd = ope open
[include]
	path = .gitconfig.local
