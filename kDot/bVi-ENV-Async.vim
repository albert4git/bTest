
AsyncRun - Run shell command

:AsyncRun[!] [options] {cmd} ...

run shell command in background and output to quickfix. when ! is included, auto-scroll in quickfix will be disabled. Parameters are splited by space, if a parameter contains space, it should be quoted or escaped as backslash + space (unix only).

Parameters accept macros start with '%', '#' or '<' :

%:p     - File name of current buffer with full path
%:t     - File name of current buffer without path
%:p:h   - File path of current buffer without file name
%:e     - File extension of current buffer
%:t:r   - File name of current buffer without path and extension
%       - File name relativize to current directory
%:h:.   - File path relativize to current directory
<cwd>   - Current directory
<cword> - Current word under cursor
<cfile> - Current file name under cursor
<root>  - Project root directory

Environment variables are set before executing:

$VIM_FILEPATH  - File name of current buffer with full path
$VIM_FILENAME  - File name of current buffer without path
$VIM_FILEDIR   - Full path of current buffer without the file name
$VIM_FILEEXT   - File extension of current buffer
$VIM_FILENOEXT - File name of current buffer without path and extension
$VIM_PATHNOEXT - Current file name with full path but without extension
$VIM_CWD       - Current directory
$VIM_RELDIR    - File path relativize to current directory
$VIM_RELNAME   - File name relativize to current directory 
$VIM_ROOT      - Project root directory
$VIM_CWORD     - Current word under cursor
$VIM_CFILE     - Current filename under cursor
$VIM_GUI       - Is running under gui ?
$VIM_VERSION   - Value of v:version
$VIM_COLUMNS   - How many columns in vim's screen
$VIM_LINES     - How many lines in vim's screen
$VIM_SVRNAME   - Value of v:servername for +clientserver usage 

These environment variables wrapped by $(...) (eg. $(VIM_FILENAME)) will also be expanded in the parameters. Macro $(VIM_ROOT) and <root> (new in version 1.3.12) indicate the Project Root of the current file.

There can be some options before your [cmd]:

-mode=0/1/2 - start mode: 0(async, default), 1(:make), 2(:!)
-cwd=?      - initial directory, (use current directory if unset)
-save=0/1/2 - non-zero to save current(1) or all(2) modified buffer(s) before executing.
-program=?  - set to `make` to use `&makeprg`, `grep` to use `&grepprg` 
-post=?     - vimscript to exec after this job finished, spaces **must** be escaped to '\ '
-auto=?     - event name to trigger "QuickFixCmdPre/QuickFixCmdPost [name]" autocmd
-raw=1      - use raw output (output will not match with the errorformat) 
-strip      - remove the heading / tailing messages (command and [Finished in ...]).



