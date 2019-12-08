file:///media/red/124Black/2019DocLink/Html-Vim-Destop2018/vim-template/What%20is%20the%20most%20underrate%20vim%20plugin%20you%20use_%20_%20vim.html

Just want to share this awesome masterpiece I've discovered for myself:

https://github.com/prabirshrestha/vim-lsp

https://github.com/prabirshrestha/asyncomplete.vim

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
Independent_Focus
4 points · 5 months ago

vim-interesting words

it has some rough edges, but the ability to to highlight keywords different colors is UNDENIABLY helpful when grokking some new/complex code
"--------------------------------------------------------------------------------- 
Presuming you meant vim-lion, and it looks great. I have been using tabular, but may want to switch.
"--------------------------------------------------------------------------------- 
https://www.reddit.com/user/big_O_infinity
"--------------------------------------------------------------------------------- 

haya14busa/vim-edgemotion

machakann/vim-highlightedyank

tyru/capture.vim

tyru/open-browser.vim

wellle/visual-split.vim
"--------------------------------------------------------------------------------- 
Another plugin I really do use alot that I don't here that much about is traces. https://github.com/markonm/traces.vim

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
I would say far.vim (find and replace helper), which is a bit like the lista
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
I basically can't live without indent guides in my editor so this has been one of my favourite plugins that I've never seen anyone recommend

https://github.com/nathanaelkane/vim-indent-guides
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
wellle/targets.vim great text objects for selecting/changing parameters
"--------------------------------------------------------------------------------- 

I particularly like junegunn/gv.vim, which is like git log on steroids.
"--------------------------------------------------------------------------------- 
vim-scripts/wombat256.vim 30 stars. Colorscheme of choice (may have low star count due to vim-scripts hosting?)

bps/vim-textobj-python 50 stars. Text objects for python

osyo-manga/vim-brightest 63 stars. My nominee for most underrated! Constantly highlights the word under the cursor and makes it easy to trace variable usage or spot misspellings

stefandtw/quickfix-reflector.vim 66 stars. Another highly underrated plugin; lets you edit the quickfix list as if it were a buffer, including support for updating the contents of the files in the list.

vim-scripts/argtextobj.vim 71 stars. Text objects for arguments

alfredodeza/coveragepy.vim 77 stars. Coverage.py integration.

mattboehm/vim-accordion 79 stars. Plugin I wrote to handle resizing of split windows. I don't think it's particularly underrated, as many people don't create enough splits to warrant a solution to this problem.

kana/vim-textobj-indent 98 stars. Some of my most-used text objects!
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
Advanced Projectionist Templates

This week I migrated some of the vim tooling I use for my blog from UltiSnips to projectionist. The result is a lighter weight and a more user friendly (for me) interface.

When I bloged about my vim plugins I mentioned that I use UltiSnips solely for writing new blog posts. It always felt weird to use this incredibly powerful snippit tool to generate the boilerplate for a single file by typing fmatter<tab> every time.

Projectionist, which I also blogged about in my vim plugins post, is generally useful for me in navigating well known parts of a project. One feature of Projectionist that I’d never used before was its templating. Basically with Projectionist you define a path and you can easily open files based on it.

For this blog I have a file like this:

{
   "content/posts/*.md": {
      "type": "post"
   }
}

I can run the command :Epost station and it will open the file at content/posts/station.md. It supports tab completion out of the box and other very handy features that make more sense when programming.

Back to templates; if you run the above command and the file does not exist, a template can fill in some boilerplate for you. You define the template in the JSON as follows:

{
   "content/posts/*.md": {
      "type": "post",
      "template": [
         "---",
         "title: ",
         "date: ~~CURDATE~~",
         "tags: ",
         "guid: ~~GUID~~",
         "---"
      ]
   }
}

It’s a little noisy, but the result is that when you first open a fresh post with :Epost some-post it will have the above filled in:

---
title: 
date: ~~CURDATE~~
tags: 
guid: ~~GUID~~
---

Of course there is one major setback. With UltiSnips you can trivially insert commands in the template. Their output is then seamlessly interpolated.

I proposed as much to Tim Pope and he didn’t seem to like the idea. After a few months of pondering on it I struck upon the idea of using an autocommand to postprocess the generated content. Here was my first version:

{
   "content/posts/*.md": {
      "type": "post",
      "template": [
         "TPLTPLTPL",
         "---",
         "title: ",
         "date: ~~CURDATE~~",
         "tags: ",
         "guid: ~~GUID~~",
         "---"
      ]
   }
}

Note especially the use of TPLTPLTPL as a signal that a template is to be processed.

Then I wrote the following vimscript:

function! ExpandTemplate()
   if getline(1) == 'TPLTPLTPL'
      %s/\~\~CURDATE\~\~/\=systemlist("date +%FT%T")[0]/ge
      %s/\~\~GUID\~\~/\=systemlist("uuidgen")[0]/ge
      1g/TPLTPLTPL/d
   endif
endfunction

au BufReadPost * call ExpandTemplate()

I figured out the autocommand to hook into by reading the source of Projectionist and the rest is just regular vimscript.

Finally, I decided I could make it slightly simpler with a patch to Projectionist. With the patch in place the code simply becomes:

function! ExpandTemplate()
   %s/\~\~CURDATE\~\~/\=systemlist("date +%FT%T")[0]/ge
   %s/\~\~GUID\~\~/\=systemlist("uuidgen")[0]/ge
endfunction

au User ProjectionistApplyTemplate call ExpandTemplate()

And the TPLTPLTPL line can go away.

I felt good to finally be able to scratch this itch. The user interface is simpler and the code is lighter and I have one fewer plugin that I rarely use.

(The following includes affiliate links.)

If you’d like to learn more about vim, I can recommend a few excellent books. I first learned how to use vi from Learning the vi and Vim Editors. The new edition has a lot more information and spends more time on Vim specific features. It was helpful for me at the time, and the fundamental model of vi is still well supported in Vim and this book explores that well.

Second, if you really want to up your editing game, check out Practical Vim. It’s a very approachable book that unpacks some of the lesser used features in ways that will be clearly and immediately useful. I periodically review this book because it’s such a treasure trove of clear hints and tips.

Third and finally, if you want to really grok the guts of advanced vim, to write a plugin for example, you should really check out Learn Vimscript the Hard Way by Steve Losh. I expect to reread it two or three more times. I got the PDF version so I could read it while offline.
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
File templates (or “skeletons”) can save you some typing by automatically inserting boilerplate text into new buffers. Templates are like snippets, but are automatically triggered on buffer creation instead of through an insert-mode mapping or abbreviation. :help skeleton recommends the following solution:

autocmd BufNewFile *.c    0read ~/skeleton.c
autocmd BufNewFile *.h    0read ~/skeleton.h
autocmd BufNewFile *.java 0read ~/skeleton.java

This method is very straightforward, but it has some limitations. Namely, the templates are not context-aware—you can’t include dynamic text or (easily) vary the template based on features of the file path. There are plenty of plug-ins out there that give you more control and flexibility. However, it always bothered me that I was using two separate mechanisms for file templates and regular snippets since there’s a lot of overlap. UltiSnips is the de facto standard for snippet plug-ins as of this writing, and the one I currently use, so I devised a system where I could use UltiSnips snippets to define my templates.
Automatic Templates with UltiSnips

The autocommand event we are interested in is BufNewFile, which gets fired whenever a buffer is created referencing a file that does not yet exist on disk. Hence the first step is to create an autocommand. I’ve chosen to place it in a script that gets loaded after UltiSnips so that the functionality can be bypassed if UltiSnips is not available.

" after/plugin/ultisnips_custom.vim

if !exists('g:did_UltiSnips_plugin')
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd BufNewFile * silent! call snippet#InsertSkeleton()
augroup END

All the autocommand does is call an autoload function, which is defined below. Prefixing the function call with silent! ensures that the message in the command line is not clobbered every time a new buffer is loaded.

" autoload/snippet.vim

function! s:try_insert(skel)
  execute "normal! i_" . a:skel . "\<C-r>=UltiSnips#ExpandSnippet()\<CR>"

  if g:ulti_expand_res == 0
    silent! undo
  endif

  return g:ulti_expand_res
endfunction

function! snippet#InsertSkeleton() abort
  let filename = expand('%')

  " Abort on non-empty buffer or extant file
  if !(line('$') == 1 && getline('$') == '') || filereadable(filename)
    return
  endif

  call s:try_insert('skel')
endfunction

The snippet#InsertSkeleton() function checks that the buffer is empty and that a corresponding file does not already exist on disk. It then defers to a separate script-local function to do the actual work (but we’ll be extending this function in the next section).

The s:try_insert() function programmatically attempts to insert the snippet with the given name into the buffer. UltiSnips sets the g:ulti_expand_res variable to the result of the expansion to indicate success or failure. The expansion will of course fail if the snippet is not defined (if there is no skeleton defined for the current file type). In that case, it is necessary to issue an :undo in order to clear the snippet name that was inserted on the first line.

The convention for naming skeleton snippets enforced in s:try_insert() is to use skel prefixed with an underscore. Defining the following snippet for the sh file type would insert a shebang for you to start off every new shell script:

snippet _skel "Shebang" b
#!/bin/sh
$0
endsnippet

Project-Specific Templates with Projectionist

Projectionist provides project configuration and serves as a great framework for defining and retrieving information about the structure of projects with a high level of specificity from Vim Script. Go ahead and read the help if you aren’t already familiar with how it works. What may not be obvious from reading the documentation the first time through is that its heuristics dictionary can be queried for arbitrary keys. We’ll take advantage of this fact to specify the name of the skeleton snippet to use on a project and file level.

As an aside, Projectionist provides its own file template mechanism with a few limitations. Namely, it does not allow for Vim Script interpolation in templates, and it of course only applies templates to buffers belonging to a recognized project. So for the sake of consistency, I prefer to use the UltiSnips method paired with Projectionist for file templates. It’s the best of both worlds. We’ll start by amending the after/plugin script to call snippet#InsertSkeleton() also on the ProjectionistActivate event:

" after/plugin/ultisnips_custom.vim

if !exists('g:did_UltiSnips_plugin')
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd User ProjectionistActivate silent! call snippet#InsertSkeleton()
  autocmd BufNewFile * silent! call snippet#InsertSkeleton()
augroup END

We’ll also amend the snippet#InsertSkeleton() function with a call to projectionist#query, which will fetch the skeleton key from Projectionist’s dictionary for the current buffer:

" autoload/snippet.vim

function! s:try_insert(skel)
  execute "normal! i_" . a:skel . "\<C-r>=UltiSnips#ExpandSnippet()\<CR>"

  if g:ulti_expand_res == 0
    silent! undo
  endif

  return g:ulti_expand_res
endfunction

function! snippet#InsertSkeleton() abort
  let filename = expand('%')

  " Abort on non-empty buffer or extant file
  if !(line('$') == 1 && getline('$') == '') || filereadable(filename)
    return
  endif

  if !empty('b:projectionist')
    " Loop through projections with 'skeleton' key and try each one until the
    " snippet expands
    for [root, value] in projectionist#query('skeleton')
      if s:try_insert(value)
        return
      endif
    endfor
  endif

  " Try generic _skel template as last resort
  call s:try_insert('skel')
endfunction

Each value of skeleton is interpreted as a template name and is tried in succession for expansion by UltiSnips. Here’s an example .projections.json manifest that defines custom skeletons for a generic MVC framework:

{
  "app/models/*.generic": {
    "skeleton": "model"
  },
  "app/views/*.generic": {
    "skeleton": "view"
  },
  "app/controllers/*.generic": {
    "skeleton": "controller"
  }
}

And the corresponding snippet definitions in generic.snippets might look something like this:

snippet _skel "Generic template" b
# A generic file
$0
endsnippet

snippet _model "Generic model template" b
# A generic model
class `!v expand("%:t:r")`_model {
    $0
}
endsnippet

snippet _view "Generic view template" b
# A generic view
class `!v expand("%:t:r")`_view {
    $0
}
endsnippet

snippet _controller "Generic controller template" b
# A generic controller
class `!v expand("%:t:r")`_controller {
    $0
}
endsnippet

Editing a new file within your project should now insert the right template for the context. Note that the _skel snippet is still used as a fallback. You can effectively override the fallback on a per-project basis by specifying it in the “root” projection (e.g., "*": { "skeleton": "foo" }).
"--------------------------------------------------------------------------------- 
