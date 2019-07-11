git config --global merge.tool "gvimdiff"
git config --global merge.tool p4merge

git stash 
git stash apply
git stash pop
git stash list
git stash save --patch
prompt> git stash drop <stash name>
Dropped stash@{0} (ea5bd0c...)
git stash clear
git stash branch [<stash name>]



==========================================================================================


This setting lets you write a kind of global .gitignore file. If you create a ~/.gitignore_global file with these contents:

*~
.*.swp
.DS_Store

…and you run:

git config --global core.excludesfile ~/.gitignore_global

Git will never again bother you about those files.


.gitconfig
[user]
	name = Jeremy Helms
	email = digitaljhelms@gmail.com
[alias]
	# aliases starting with !sh
	aliases = !git config --get-regexp 'alias.*' | colrm 1 6 | sed 's/[ ]/ = /' | sort    # list all aliases
	cb = !git branch | grep ^* | cut -d' ' -f2
	branch-name = !git cb    # alias to "cb" alias
	st = status
	ci = commit
	cie = commit --allow-empty-message -m ''
	cp = cherry-pick
	br = branch
	co = checkout
	df = diff -C --color-words
	pl = !git pull --rebase origin $(git cb)
	ps = !git push origin $(git cb)
	lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all
	who = shortlog -s --
	push-hash = !sh -c 'git push origin $1:refs/heads/$(git cb)' -    # requires a SHA or the remote branch will be deleted!!
	reset-tags = "!f() { git tag -l | xargs git tag -d; git fetch; }; f"
	cloner = clone --recursive
	serve = !git daemon --reuseaddr --verbose --base-path=. --export-all ./.git
	save = stash save -u
	prune-local = !git branch --merged | grep -v master | grep -v dev | xargs -n 1 git branch -d
	prune-all = !git remote | xargs -n 1 git remote prune
	find = !sh -c 'git lg --grep="$@"'    # search for a string in the commit message log
	srch = !sh -c 'git grep "$@" $(git rev-list --all)'    # search for a string in all commits
	fixup = !sh -c 'git commit --fixup=$1' -
	squash = !sh -c 'git commit --squash=$1' -
	ri = rebase --interactive --autosquash --preserve-merges
	oldest-ancestor = !zsh -c 'diff --old-line-format='' --new-line-format='' <(git rev-list --first-parent "${1:-master}") <(git rev-list --first-parent "${2:-HEAD}") | head -1' -
	delete-tag = "!f() { git tag -d $1; git push origin :refs/tags/$1; }; f"
	info = !sh -c 'git-info' -    # requires https://github.com/gitbits/git-info
	submodule-list = !git ls-files --stage | grep 16000
[rerere]
	enabled = true
[core]
	#editor = st -n -w    # Sublime Text
	editor = code -n -w    # VS Code
	ignorecase = false
	excludesfile = ~/.gitignore_global
[color]
	ui = true
[branch]
	autosetuprebase = always
[dude]
	# notify-command = growlnotify -n \"$app_name\" -s --image \"$ICON_PATH\" -m \"$DESCRIPTION\" \"$TITLE\"
	# icon ~/.git-dude/github_32.png
	# notify-command = osascript -e \"display notification \\\"$DESCRIPTION\\\" with title \\\"$TITLE\\\"\"
	notify-command = osascript -e \"display notification \\\"$DESCRIPTION\\\" with title \\\"$TITLE\\\" sound name \\\"Hero\\\"\"
[push]
	default = upstream
[credential]
	helper = osxkeychain
[filter "media"]
	clean = git-media-clean %f
	smudge = git-media-smudge %f
[instaweb]
	local = false
	port = 8080
	httpd = webrick
[filter "lfs"]
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
clean = git-lfs clean -- %f
