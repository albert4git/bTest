
➜ curl cheat.sh/wget                    
# To download a single file
wget http://path.to.the/file

# To download a file and change its name
wget http://path.to.the/file -O newname

# To download a file into a directory
wget -P path/to/directory http://path.to.the/file

# To continue an aborted downloaded
wget -c http://path.to.the/file

# To download multiples files with multiple URLs
wget URL1 URL2

# To parse a file that contains a list of URLs to fetch each one
wget -i url_list.txt

# To mirror a whole page locally
wget -pk http://path.to.the/page.html

# To mirror a whole site locally
wget -mk http://site.tl/

# To download files according to a pattern
wget http://www.myserver.com/files-{1..15}.tar.bz2

# To download all the files in a directory with a specific extension if directory indexing is enabled
wget -r -l1 -A.extension http://myserver.com/directory

# Allows you to download just the headers of responses (-S --spider) and display them on Stdout (-O -).
wget -S --spider -O - http://google.com

# Change the User-Agent to 'User-Agent: toto'
wget -U 'toto' http://google.com

~/git/CHEATSH 
➜ curl cheat.sh/git 
# To set your identity:
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

# To set your editor:
git config --global core.editor emacs

# To enable color:
git config --global color.ui true

# To stage all changes for commit:
git add --all

# To stash changes locally, this will keep the changes in a separate changelist
# called stash and the working directory is cleaned. You can apply changes
# from the stash anytime
git stash

# To stash changes with a message
git stash save "message"

# To list all the stashed changes
git stash list

# To apply the most recent change and remove the stash from the stash list
git stash pop

# To apply any stash from the list of stashes. This does not remove the stash
# from the stash list
git stash apply stash@{6}

# To commit staged changes
git commit -m "Your commit message"

# To edit previous commit message
git commit --amend

# Git commit in the past
git commit --date="`date --date='2 day ago'`"
git commit --date="Jun 13 18:30:25 IST 2015"
# more recent versions of Git also support --date="2 days ago" directly

# To change the date of an existing commit
git filter-branch --env-filter \
    'if [ $GIT_COMMIT = 119f9ecf58069b265ab22f1f97d2b648faf932e0 ]
     then
         export GIT_AUTHOR_DATE="Fri Jan 2 21:38:53 2009 -0800"
         export GIT_COMMITTER_DATE="Sat May 19 01:01:01 2007 -0700"
     fi'

# To removed staged and working directory changes
git reset --hard

# To go 2 commits back
git reset --hard HEAD~2

# To remove untracked files
git clean -f -d

# To remove untracked and ignored files
git clean -f -d -x

# To push to the tracked master branch:
git push origin master

# To push to a specified repository:
git push git@github.com:username/project.git

# To delete the branch "branch_name"
git branch -D branch_name

# To make an existing branch track a remote branch
git branch -u upstream/foo

# To see who committed which line in a file
git blame filename

# To sync a fork with the master repo:
git remote add upstream git@github.com:name/repo.git    # Set a new repo
git remote -v                                           # Confirm new remote repo
git fetch upstream                                      # Get branches
git branch -va                                          # List local - remote branches
git checkout master                                     # Checkout local master branch
git checkout -b new_branch                              # Create and checkout a new branch
git merge upstream/master                               # Merge remote into local repo
git show 83fb499                                        # Show what a commit did.
git show 83fb499:path/fo/file.ext                       # Shows the file as it appeared at 83fb499.
git diff branch_1 branch_2                              # Check difference between branches
git log                                                 # Show all the commits
git status                                              # Show the changes from last commit

# Commit history of a set of files
git log --pretty=email --patch-with-stat --reverse --full-index -- Admin\*.py > Sripts.patch

# Import commits from another repo
git --git-dir=../some_other_repo/.git format-patch -k -1 --stdout <commit SHA> | git am -3 -k

# View commits that will be pushed
git log @{u}..

# View changes that are new on a feature branch
git log -p feature --not master
git diff master...feature

# Interactive rebase for the last 7 commits
git rebase -i @~7

# Diff files WITHOUT considering them a part of git
# This can be used to diff files that are not in a git repo!
git diff --no-index path/to/file/A path/to/file/B

# To pull changes while overwriting any local commits
git fetch --all
git reset --hard origin/master

# Update all your submodules
git submodule update --init --recursive

# Perform a shallow clone to only get latest commits
# (helps save data when cloning large repos)
git clone --depth 1 <remote-url>

# To unshallow a clone
git pull --unshallow

# Create a bare branch (one that has no commits on it)
git checkout --orphan branch_name

# Checkout a new branch from a different starting point
git checkout -b master upstream/master

# Reset local branch to upstream branch and then checkout it
git checkout -B master upstream/master

# Remove all stale branches (ones that have been deleted on remote)
# So if you have a lot of useless branches, delete them on Github and then run this
git remote prune origin

# The following can be used to prune all remotes at once
git remote prune $(git remote | tr '\n' ' ')

# Revisions can also be identified with :/text
# So, this will show the first commit that has "cool" in their message body
git show :/cool

# Undo parts of last commit in a specific file
git checkout -p HEAD^ -- /path/to/file

# Revert a commit and keep the history of the reverted change as a separate revert commit
git revert <commit SHA>

# Pick a commit from a branch to current branch. This is different than merge as
# this just applies a single commit from a branch to current branch
git cherry-pick <commit SHA1>

# Undo last commit
# If you want to nuke commit C and never see it again
#    (F)
# A-B-C
#     ↑
#   master
git reset --hard HEAD~1

# Undo last commit
# If you want to undo the commit but keep your changes
#    (F)
# A-B-C
#   ↑
# master
git reset HEAD~1

# list files changed in ${commit_id}
git diff-tree --no-commit-id --name-only -r ${commit_id}

# list files changed in ${commit_id}, porcelain way, meant to be user facing
git show --pretty="" --name-only bd61ad98

# See everything you have done, across branches, in a glance,
# then go to the place right before you broke everything
git reflog
git reset HEAD@{hash}

# To move your most recent commit from one branch and stage it on TARGET branch
git reset HEAD~ --soft
git stash
git checkout TARGET
git stash pop
git add .
