100 Integrals (in 6 hours!!)


======================================================================================================================
[-] generic bindings
View switching
                           m view-main           Show main view
                           d view-diff           Show diff view
                           l view-log            Show log view
                           t view-tree           Show tree view
                           f view-blob           Show blob view
                           b view-blame          Show blame view
                           r view-refs           Show refs view
                        s, S view-status         Show status view
                           c view-stage          Show stage view
                           y view-stash          Show stash view
                           g view-grep           Show grep view
                           p view-pager          Show pager view
                           h view-help           Show help view
View manipulation
                     <Enter> enter               Enter and open selected line
                           < back                Go back to the previous view state
         <Down>, <Ctrl-N>, J next                Move to next
           <Up>, <Ctrl-P>, K previous            Move to previous
                         ',' parent              Move to parent
                       <Tab> view-next           Move focus to the next view
                     R, <F5> refresh             Reload and refresh view
                           O maximize            Maximize the current view
                           q view-close          Close the current view
                 Q, <Ctrl-C> quit                Close all views and quit
Cursor navigation
                           k move-up             Move cursor one line up
                           j move-down           Move cursor one line down
         <PageDown>, <Space> move-page-down      Move cursor one page down
                 <PageUp>, - move-page-up        Move cursor half a page up
                    <Ctrl-D> move-half-page-down Move cursor half a page down
                    <Ctrl-U> move-half-page-up   Move cursor one page up
                      <Home> move-first-line     Move cursor to first line
                       <End> move-last-line      Move cursor to last line

======================================================================================================================
Various views of a repository are presented. Each view is based on output from an external command, most often git log, git diff, or git show.

The main view

    Is the default view, and it shows a one line summary of each commit in the chosen list of revisions. The summary includes author date, author, and the first line of the log message. Additionally, any repository references, such as tags, will be shown.
The log view

    Presents a more rich view of the revision log showing the whole log message and the diffstat.
The diff view

    Shows either the diff of the current working tree, that is, what has changed since the last commit, or the commit diff complete with log message, diffstat and diff.
The tree view

    Lists directory trees associated with the current revision allowing subdirectories to be descended or ascended and file blobs to be viewed.
The blob view

    Displays the file content or "blob" of data associated with a file name.
The blame view

    Displays the file content annotated or blamed by commits.
The refs view

    Displays the branches, remotes and tags in the repository.
The status view

    Displays status of files in the working tree and allows changes to be staged/unstaged as well as adding of untracked files.
The stage view

    Displays diff changes for staged or unstaged files being tracked or file content of untracked files.
The stash view

    Displays the list of stashes in the repository.
The grep view

    Displays a list of files and all the lines that matches a search pattern.
The pager view

    Is used for displaying both input from stdin and output from Git commands entered in the internal prompt.
The help view

    Displays a quick reference of key bindings.
======================================================================================================================



======================================================================================================================
