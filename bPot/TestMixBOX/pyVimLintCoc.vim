Vim for Python

I started working on a Python project about a year ago. It was very annoying
at first, as I was trying to embrace the Python style and figure out my
workflow and the tooling. It took me some time until I finally set the things
appropriately.

In this article, I'd like to share how I made a productive Vim-based environment for working with Python.

Here's
Here's How My Vim Looks Like


Let's start with a list of some general-purpose plugins which I find irreplaceable for any language.

    vim-plug is a minimalistic plugin manager
    scrooloose/nerdtree to navigate the file tree
    junegunn/fzf.vim fuzzy search through the files (and much more, really)
    tpope/vim-commentary ( or scrooloose/nerdcommenter ) — press gcc to comment out a line or gc to comment a selection in visual mode
    liuchengxu/vista.vim which is a "tagbar" that learns from LSP servers

The other plugins I use include

    jeetsukumaran/vim-pythonsense provides some Python-specific text objects: classes, functions, etc
    jiangmiao/auto-pairs inserts closing quotes and parenthesis as you type

The colorscheme used on the screenshots is joshdick/onedark.vim, which is inspired by the Atom theme.
Syntax highlighting

Vim comes with syntax highlighting for many popular languages, including Python, though it is not always the best one.

There are several options to improve the default highlighting.

    numirias/semshi, in my opinion, is the best. It works with Neovim only and requires the Python 3 support.
    sheerun/vim-polyglot includes support for many languages including Python
    python-mode/python-mode is also a decent one although it comes with a lots of other stuff beside highlighting which I don't quite like

Semshi
Semshi (on the left) vs. the default one

My favorite color schemes (which I switch quite often) include junegunn/seoul256.vim and joshdick/onedark.vim (the one on the screenshots).
Indentation

You can set up indentation rules manually like this.

au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

A better alternative is Vimjas/vim-python-pep8-indent plugin. It does a much better job complying with the PEP8 style guide.
Folding

Folding (:help foldmethod) is when you collapse junks of code so that they don't distract you from the part that you are looking at right now.

The best approximation is to use the folding method indent though it doesn't work perfectly all the time.

au BufNewFile,BufRead *.py \
  set foldmethod=indent

To toggle a fold you can press za (:help fold-commands), and I have it mapped to Space for convenience.

nnoremap <space> za

Linting & Fixing

The fantastical dense-analysis/ale plugin can be used for linting (which essentially means checking for syntax errors) and auto-fixing extremely well. It's asynchronous, meaning that it won't block the UI while running an external linter, and it supports a great range of languages and tools.

Python
Python + ALE = ❤️

ALE highlights problems with your code in the gutter. When you move the cursor to the problematic line, it shows the full error message at the bottom of the screen.

By default, ALE will use all possible linters it could find on your machine. Run :ALEInfo to see which linters are available and which are enabled.

It is better though to explicitly specify which ones you're going to use with a particular filetype:

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'ruby': ['standardrb', 'rubocop'],
      \   'javascript': ['eslint'],
      \}

Some of the linters are also capable of fixing the problems in your code. ALE has a special command :ALEFix that fixes the whole file. So far, I'm only Google's YAPF as a fixer that formats the whole file when I press F10 or save the current buffer.

let g:ale_fixers = {
      \    'python': ['standardrb'],
      \}
nmap <F10> :ALEFix<CR>
let g:ale_fix_on_save = 1

The last option is a huge time saver — it will automatically fix (and thus format) your file on save.

I also have a little piece of configuration that shows the total number of warnings and errors in the status line. Very convenient.

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}

And here are a couple of alternatives to ALE:

    vim-syntastic/syntastic very popular one but synchronous which can cause significant lags in UI
    neomake/neomake asynchronous linting and make framework for Neovim/Vim (didn't try that one)

Jedi

Jedi is a "language server", which simply means that it's a separate process that runs in background and analyses your code. Other clients (editors or IDEs) can connect to it and request some information, like completion options, or "go to definition" coordinates.

In order to use it, you need to install it with pip install jedi, and then also add a client.

One option is davidhalter/jedi, which does a very decent job.

Here's what it can do:

    Press ctrl + space for the completion options
    <leader>d goes to definition
    <leader>g goes to assignment
    K shows the documentation
    and more

Recently I have switched to neoclide/coc.nvim and coc-python. Coc is an "an intellisense engine" for Vim and Neovim and does a really good job when it comes to completion and communicating with language servers.
Coc (Conquer of Completion)

To me, the selling point is the usage of the new floating window API of Neovim, which makes it very convenient.

Coc-python can use both Jedi and the Microsoft's Python Language Server. The first time you run it, it will ask you to install the components it needs (like a linter).

Coc provides (with the help of Jedi) some basic IDE capabilities like

    Going To definition

nmap <silent> gd <Plug>(coc-definition)

    Displaying documentation (in the floating window!)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

    Smart rename (renames the exports across all files)

nmap <leader>rn <Plug>(coc-rename)

And of course the auto-complete menu (which you can see on the very first screenshot) appears as you type.

Basically, it's a very solid and comprehensive plugin which covers almost all of our needs.

Read to the wiki for more information about its capabilities.

The drawbacks of using Coc include:

    An expensive Node process that Coc needs to run in order to operate
    Own independent extension system and its own (JSON) configuration file
    The aspiration to do everything

Still, it does the job well, and I continue using it (until there's a better option).
