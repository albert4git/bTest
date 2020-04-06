command! Mpu execute ":tabe | 0read ! python manage.py show_urls | grep -v 'admin'"
map <F3> :Mpu <CR>



Installing plugins

There are several plugin managers for vim.  They all work slightly differently, but generally allow you to specify the github repository for a plugin, and have the tools load the code into your vim configuration directory (~/.vim).  Directions for a couple plugin managers are included here, so that advice on specific plugins can be given in a manager-neutral way.
Vundle

To use Vundle, manually install vundle in your .vim/bundle directory:
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

 

Then add the following to your .vimrc file:
"""""""""""""""""""""""""
" Vundle configuration
 
filetype off
 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'
 
call vundle#end()
filetype plugin indent on

Then to register a new plugin, add a Plugin directive under Plugin 'gmarik/Vundle.vim' with the owner/repository of the github repo for the plugin.  For instance to add edx-platform as a vim plugin (this won't work), you would add a line with Plugin 'edx/edx-platform'

To install or update plugins, run the command from within vim
:PluginUpdate

 Or from the command line:
$ vim +PluginUpdate +qa
vim-plug

Calen Pennington: care to fill this out?
Python
Editing
Syntax Highlighting

Add the following to your .vimrc
filetype plugin indent on
Show Hidden Characters

To show invisible characters inline, add the following to your .vimrc
set listchars=tab:→ ,trail:·,nbsp:¤,precedes:«,extends:»,eol:↲  " specify which characters to use.  If you don't have unicode support in your terminal, adjust these accordingly
set list     " turn on display of listchars
set nolist   " turn off display of listchars

The list and nolist settings can be added to your .vimrc as is, or run in ex mode (escape from insert mode, and type :set list or :set nolist)
Jump to File (fuzzy search)
ctrlp.vim

Use the https://github.com/ctrlpvim/ctrlp.vim plugin
# Using https://github.com/junegunn/vim-plug
 
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

Tip: to speed up ctrlp.vim, use ripgrep:
if executable('rg')
    let g:ctrlp_user_command = 'rg %s -i --color never --no-heading --hidden --no-messages
        \ -g "" --files'
endif
fzf.vim

Consider using fzf.vim instead which can be faster than ctrlp. The program fzf, which backs fzf.vim, can also be used in your shell as a kind of fuzzy tab-complete and history search. Set fzf's default command to ripgrep instead of find to make it even faster (insert into your ~/.bashrc):
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,vendor}" -g "!*.{swp,pyc}"'


Quality
syntastic

Install the following plugin using your preferred plugin manager:

    scrooloose/syntastic

  Configure it to use pylint and pep8 in your .vimrc:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint', 'pep8']

You can navigate to the Syntastic report split using ^ww and then hit enter on any issue to jump to that line in the main split, or you can navigate through them from the main split using :lnext and :lprevious.

For more details check out the excellent in-editor documentation using :help syntastic.

Note: Improvements to the statusline would be welcome.  The one above doesn't show the usual line/column number information unless all lint errors are resolved.
ale

Alternatively, try installing https://github.com/w0rp/ale which utilizes Vim 8's asynchronous engine. This enables continously linting a file as you edit without any lag.
For NeoVim

Install the following plugin:

    benekastah/neomake

Configure it thusly:
call plug#begin('~/.config/nvim/plugged')
Plug 'benekastah/neomake'
call plug#end()
 
" Neomake
let g:neomake_python_enabled_makers = ['pylint', 'pep8']
 
autocmd! BufWritePost * Neomake

Note that this only works if you run vim from within the virtualenv that has pylint and pep8 installed.
Jump to Definition and Auto-Complete

There are a few options:
python-mode

https://github.com/python-mode/python-mode
YouCompleteMe

In addition to auto-complete, YouCompleteMe includes jump-to-definition commands https://github.com/Valloric/YouCompleteMe#goto-commands

YouCompleteMe supports Python in addition to many other languages: https://github.com/Valloric/YouCompleteMe
Using tags

Tag files can be generated automatically with vim-gutentags using ctags. Make sure to install exuberant-ctags (ubuntu package) or universal-ctags (a maintained fork of exuberant-ctags, but I'm unclear on it's production-readiness) which adds support for Python among other languages. Then, you can use vim's built-in <ctrl-]> command to jump to the definition of the variable name under the cursor. See :help 29.1 and :help tags for more info about tags.
Debugging

Add this (or something similar) to your .vimrc:
"Insert a ipdb breakpoint below or above current line
nnoremap <leader>b oimport ipdb; ipdb.set_trace()  # BREAKPOINT # noqa: E702<Esc>
nnoremap <leader>B Oimport ipdb; ipdb.set_trace()  # BREAKPOINT # noqa: E702<Esc>

Consider using pudb instead which has a graphical TUI:
"Insert a pudb breakpoint below or above current line
nnoremap <leader>b oimport pudb.b<Esc>
nnoremap <leader>B Oimport pudb.b<Esc>

Install pytest-pudb into your virtualenv and the breakpoints will work while running tests too.
Testing
Test current function

If you are using tags (see "Jump to Definition and Auto-complete > Using tags" above), tagbar provides a handy function for getting the function/class name that your cursor is currently under. Add this mapping:
function! DockerRun(container, command)
    :exe "!docker exec -t " . a:container . " bash -c '" . a:command . "'"
endfunction
 
autocmd Filetype python nnoremap <leader>L :call DockerRun("edx.devstack.lms", "source /edx/app/edxapp/edxapp_env && cd /edx/app/edxapp/edx-platform/ && pytest " . bufname("%") . " -k " . tagbar#currenttag('%s',''))<CR>
autocmd Filetype python nnoremap <leader>S :call DockerRun("edx.devstack.studio", "source /edx/app/edxapp/edxapp_env && cd /edx/app/edxapp/edx-platform/ && pytest " . bufname("%") . " -k " . tagbar#currenttag('%s',''))<CR>

Type <leader>L to run current function in the LMS devstack. Or, type <leader>S to run in the Studio devstack.

I prefer to use vim inside of tmux and have a long-running lower pane logged into the LMS or Studio shell below vim that I can send commands to via vimux.
autocmd Filetype python nnoremap <leader>R :call VimuxRunCommand("pytest " . bufname("%") . " -k " . tagbar#currenttag('%s',''))<CR>

Those commands are rather hacky. I'm trying to find a better way with either vim-test or pyest.vim, but I haven't gotten anything to work as reliably. For example, it would be nice if the quickfix window was populated with a list of errors that linked to the locations of the tests.
JavaScript
Linting

Install https://github.com/vim-syntastic/syntastic follow README instructions, then add this to your .vimrc:
let g:syntastic_javascript_checkers=['eslint']

Also, install: https://github.com/mtscout6/syntastic-local-eslint.vim so that it lints based on each individual project's configuration.

You can also use https://github.com/sbdchd/neoformat to run an auto-formatter like prettier or prettier-eslint.

If you're feeling extra lazy, just clone my vim setup and run the included script: https://github.com/efischer19/personal_vim

Alternatively, try installing https://github.com/w0rp/ale which utilizes Vim 8's asynchronous engine. This enables continously linting a file as you edit without any lag.
Git

Install https://github.com/tpope/vim-fugitive for performing typical git actions in vim (log, blame, (un)stage, commit, diff, browse in Github, etc.).

Install https://github.com/airblade/vim-gitgutter to get indicators in the sign column for lines that have been added, removed, or changed compared to the git HEAD.

Install https://github.com/gregsexton/gitv for a git history browser similar to gitk. Or install https://github.com/junegunn/gv.vim for a git history browser similar to tig (and faster than gitv).
Other
Search for String in File

Just type "/", a search query and enter. Then "n" to iterate through matches.


fzf.vim

If you have fzf.vim you can do a fuzzy search for a string in your current buffer with :Blines and then press enter to jump to that line. A convienent mapping for this is:
nmap <leader>/ :BLines<CR>
Search for String in Project

Use ":grep". Or, install https://github.com/mileszs/ack.vim.

Tip: to speed up ack.vim, use ripgrep:
if executable('rg')
    let g:ackprg = 'rg --vimgrep --no-heading --no-messages'
endif
Search for Tag in Project

If you are using tags (see "Jump to Definition and Auto-complete > Using tags" above) then you can search by function or class definition.
tag-matchlist

Use vim's built in :tselect, type name of the function/class, enter, and then jump to a match by typing the list number.
ctrlp.vim

Use :CtrlPTag to fuzzy search for a function/class.
fzf.vim

Use :Tags to fuzzy search for a function/class. fzf tends to be faster than ctrlp.vim in my experience within the edx-platform.
