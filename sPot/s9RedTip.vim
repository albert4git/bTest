The blog-classic-tdd application places implementation files below the app subdi-
rectory, with unit tests below the tests/unit directory:
blog-classic-tdd/
├── app
│
└── models
│
├── author.js
│
├── comment.js
│
└── post.js
└── tests
└── unit
└── models
├── author-test.js
├── comment-test.js
└── post-test.js
The blog-modular-tdd application takes a different approach. The implementation
and unit test files are siblings in the file tree:
blog-modular-tdd/
└── src
└── data
└── models
├── author
│
├── model-test.js
│
└── model.js
├── comment
│
├── model-test.js
│
└── model.js
└── post
├── model-test.js
└── model.js
"==================================================================================================
cd code/good-day

"==================================================================================================


Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'


"--------------------------------------------------------------------------------- 
file:///media/red/124Black/2019DocLink/Html-Vim-Destop2018/vim-template/What%20is%20the%20most%20underrate%20vim%20plugin%20you%20use_%20_%20vim.html
"--------------------------------------------------------------------------------- 

Just want to share this awesome masterpiece I've discovered for myself:
"-333-
https://github.com/prabirshrestha/vim-lsp
https://github.com/prabirshrestha/asyncomplete.vim
"-333-

- Async.

- Every language with decent LSP supported.

- Pure vimL (vim script).

- Faster, lighter AND more verbose linting than ale.

- Great and fast completion without any python/nodeJS.

- Both vim8 and neovim supported.

Tried this with rls (Rust language server). Just 6 lines in my config and it works out of the box.

Thank you for your attention.
"--------------------------------------------------------------------------------- 
level 1
kiryph
6 points · 5 months ago · edited 5 months ago

    indent-object (ii and ai) (should be builtin)

    vim-matchup (i% and a% for b:match_words)

    visualrepeat (e.g. used by vim-sandwich)

    repmo-vim (e.g. repeat ]m with ;)

    vim-projectionist (precise project navigation)

    vim-apathy (sets the five path searching options — 'path', 'suffixesadd', 'include', 'includeexpr', and 'define')
"--------------------------------------------------------------------------------- 
"-------------YES----------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 

Independent_Focus
4 points · 5 months ago

vim-interesting words

it has some rough edges, but the ability to to highlight keywords different
colors is UNDENIABLY helpful when grokking some new/complex code
"--------------------------------------------------------------------------------- 
Presuming you meant vim-lion, and it looks great. I have been using tabular,
but may want to switch.
"--------------------------------------------------------------------------------- 
https://www.reddit.com/user/big_O_infinity
"--------------------------------------------------------------------------------- 
"==================================================================================
haya14busa/vim-edgemotion
machakann/vim-highlightedyank
tyru/capture.vim
tyru/open-browser.vim
wellle/visual-split.vim
"==================================================================================
"--------------------------------------------------------------------------------- 
Another plugin I really do use alot that I don't here that much about is traces.
https://github.com/markonm/traces.vim

I'm using it together with those keybindings

" Replace text
nnoremap gr" vi":s/
nnoremap gr) vi):s/
nnoremap gr> vi>:s/
nnoremap gr] vi]:s/
nnoremap gra ggvG:s/
nnoremap grl 0v$:s/
nnoremap grp vip:s/
nnoremap grs vis:s/
nnoremap gr} vi}:s/

"--------------------------------------------------------------------------------- 
"-------------YES----------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
I would say far.vim (find and replace helper), which is a bit like the
plugin or the vim-textobj-indent which define a new scope being the current
indent block
"--------------------------------------------------------------------------------- 
https://github.com/davidoc/taskpaper.vim
"--------------------------------------------------------------------------------- 
very simple but convenient vim-lost. :help lost Too bad it's simple, because
this sounds so promising. If you're using Tagbar, you can replace vim-lost by
calling tagbar#currenttag(), so as to have 1 less dependency.
"--------------------------------------------------------------------------------- 
I have many plugins lazy-loaded for the most part, so "number of dependencies"
is hardly a factor as far as I'm concerned. I didn't check the implementation
of tagbar#currenttag(), but I guess it uses tags, which are not always
generated in all environments, so I like the simplicity -- and reliability --
of the info vim-lost shows.
"--------------------------------------------------------------------------------- 
vim-minisnip
"--------------------------------------------------------------------------------- 
https://github.com/gastonsimone/vim-dokumentary/
level 2
alasdairgray
5 points · 5 months ago

Or, you can simply add something like this
setlocal keywordprg=:term\ pydoc3.6 to your $VIMHOME/after/ftplugin/python.vim
And act the same way with all the other filetypes you may need.
"--------------------------------------------------------------------------------- 
I find
thinca/vim-ref
to be more polished in general. It's man buffer offers:


But it supports a few less filetypes.

I've put together a somewhat more generalized version, using google's "lucky"
option to grab a good resource in a separate buffer. It should be cleaned up,
but it's reasonably useful for me,
https://fourjay@github.com/fourjay/vim-keeper
"--------------------------------------------------------------------------------- 
I basically can't live without indent guides in my editor so this has been one
of my favourite plugins that I've never seen anyone recommend

https://github.com/nathanaelkane/vim-indent-guides

Plug 'nathanaelkane/vim-indent-guides'
"--------------------------------------------------------------------------------- 
Little known plugin that I couldn't live without? Smartword: https://www.vim.org/scripts/script.php?script_id=2470

It gives you replacements for w, b, e and ge that skip over punctuation, jumping straight to the next word.

And a few of mine:

    Auto-adjust blank lines when pasting: https://github.com/AndrewRadev/whitespaste.vim

    Reopen a closed window: https://github.com/AndrewRadev/undoquit.vim

    Make my NERDTree awesome (this one's a bit niche):
    https://github.com/AndrewRadev/andrews_nerdtree.vim
"--------------------------------------------------------------------------------- 
thinca/vim-quickrun is part of my daily toolkit. It's a sort of
REPL/Instant-window for vim with support for a lot of edge cases worked out.
For me it's more useful then the tmux style approaches (I like just staying in
vim). I know this is a little to emacs-ey for many here...
"--------------------------------------------------------------------------------- 
" wellle/targets.vim great text objects for selecting/changing parameters
Plug 'wellle/targets.vim'
great text objects for selecting/changing parameters
"--------------------------------------------------------------------------------- 

I particularly like junegunn/gv.vim, which is like git log on steroids.
"--------------------------------------------------------------------------------- 
vim-scripts/wombat256.vim 30 stars. Colorscheme of choice (may have low star count due to vim-scripts hosting?)

bps/vim-textobj-python
50 stars. Text objects for python

osyo-manga/vim-brightest 63 stars. My nominee for most underrated! Constantly highlights the word under the cursor and makes it easy to trace variable usage or spot misspellings

stefandtw/quickfix-reflector.vim 66 stars. Another highly underrated plugin; lets you edit the quickfix list as if it were a buffer, including support for updating the contents of the files in the list.

vim-scripts/argtextobj.vim 71 stars. Text objects for arguments

alfredodeza/coveragepy.vim 77 stars. Coverage.py integration.

mattboehm/vim-accordion 79 stars. Plugin I wrote to handle resizing of split windows. I don't think it's particularly underrated, as many people don't create enough splits to warrant a solution to this problem.

98 stars. Some of my most-used text objects!
kana/vim-textobj-indent
bps/vim-textobj-python
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
