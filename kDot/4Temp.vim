#===TMUX==================================================================================
#===FREE==================================================================================
#===WILLY=================================================================================


Format String              Example output
-------------              --------------
%c                         Thu 27 Sep 2007 07:37:42 AM EDT (depends on locale)
%a %d %b %Y                Thu 27 Sep 2007
%b %d, %Y                  Sep 27, 2007
%d/%m/%y %H:%M:%S          27/09/07 07:36:32
%H:%M:%S                   07:36:44
%T                         07:38:09
%m/%d/%y                   09/27/07
%y%m%d                     070927
%x %X (%Z)                 09/27/2007 08:00:59 AM (EDT)
%Y-%m-%d                   2016-11-23
%F                         2016-11-23 (works on some systems)

RFC822 format:
%a, %d %b %Y %H:%M:%S %z   Wed, 29 Aug 2007 02:37:15 -0400

ISO8601/W3C format (http://www.w3.org/TR/NOTE-datetime):
%FT%T%z                    2007-08-29T02:37:13-0400


:iab <expr> dts strftime("%c")
:iab <expr> dts strftime("%c")

To replace text with the current date in a substitute command:

:s/text to replace/\=strftime("%c")/



let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
" Language Server Protocol {{{

let g:LanguageClient_serverCommands = {
    \ 'scala': ['netcat', 'localhost', '62831'],
    \ 'java': ['netcat', 'localhost', '62831'],
    \ }
let g:LanguageClient_autoStart = 1

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


command! ScratchToggle call ScratchToggle()

function! ScratchToggle()
    if exists("w:is_scratch_window")
        unlet w:is_scratch_window
        exec "q"
    else
        exec "normal! :Sscratch\<cr>\<C-W>L"
        let w:is_scratch_window = 1
    endif
endfunction

nnoremap <silent> <leader><tab> :ScratchToggle<cr>

" Python-Mode {{{

let g:pymode_doc = 1
let g:pymode_doc_bind = 'M'
let g:pydoc = 'pydoc'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 0
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_space_errors = 0
let g:pymode_run = 0
let g:pymode_lint = 0
let g:pymode_breakpoint = 0
let g:pymode_utils_whitespaces = 0
let g:pymode_virtualenv = 0
let g:pymode_folding = 0

let g:pymode_options_indent = 0
let g:pymode_options_fold = 0
let g:pymode_options_other = 0
let g:pymode_options = 0

let g:pymode_rope = 0
let g:pymode_rope_global_prefix = "<localleader>R"
let g:pymode_rope_local_prefix = "<localleader>r"
let g:pymode_rope_auto_project = 1
let g:pymode_rope_enable_autoimport = 0
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os", "shutil", "datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 1
let g:pymode_rope_goto_def_newwin = 0
let g:pymode_rope_always_show_complete_menu = 0

" }}}


onoremap ir i[
onoremap ar a[
vnoremap ir i[
vnoremap ar a[

command! ErrorsToggle call ErrorsToggle()
function! ErrorsToggle() " {{{
  if exists("w:is_error_window")
    unlet w:is_error_window
    exec "q"
  else
    exec "Errors"
    lopen
    let w:is_error_window = 1
  endif
endfunction " }}}


" Targets {{{

let g:targets_pairs = '()b {}B []r <>'

" }}}


" Supertab {{{

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabCrMapping = 1

"}}}

  <CF>      From `stage mode`: amend the staged changes into the previous
            commit, without modifying previous commit message.

  <CC>      From `commit mode`, commit all staged changes with commit flavor
            (`normal` or `amend`) with message in "Commit message" section.

  <CA>      From `stage mode` or `commit mode`: set commit mode in amend
            flavor, and display "Commit message" section with previous commit
            message.
            Commit will be meld with previous commit.

  <CU>      From `commit mode`: go back to stage mode (current commit message
            will be lost).

//FLAG
//FLAG
//FLAG

# USA

windows:
  - pdbA:
      layout: main-vertical
      panes:
        - CdInPdbA:
          - cd pdbA
          - nvim FindMax.py
        - SideZSH:
          - cd pdbA
          - zsh
  - nini:
      layout: main-vertical
      panes:
        - Ni:
          - nvim
        - ZSH:
          - zsh
  - One:
      layout: tiled
      panes:
        - BigBASH:
          - bash
  - io:
      layout: tiled
      panes:
        - ZSH1:
          - zsh
        - FISH2:
          - fish
        - SH3:
          - sh
        - BASH4:
          - bash


    "------------------------------------------------------------------------------
    " Project, great plugin
    "------------------------------------------------------------------------------
    set rtp+=~/.vim/bundle/vim-project/
    let g:project_disable_tab_title = 1
    "let g:project_enable_welcome = 0
    let g:project_use_nerdtree = 1

    " default starting path (the home directory)
    call project#rc("~/")

    Project  '~/fq'                           , 'fq'
    Project  '~/shader-studio'                , 'shader-studio'
    Project  '~/runtime-shaderfrog'           , 'shaderfrog-runtime'
    Project  '~/doopy-butts'                  , 'doopy-butts'

    " Send the selected hunk to IWS's hastebin
    vnoremap <Leader>hb <esc>:'<,'>:w !HASTE_SERVER=http://hastebin.britecorepro.com haste<CR>


    autocmd FileType javascript noremap <buffer>  <Leader>js :call JsBeautify()<cr>
    autocmd FileType html noremap <buffer> <Leader>js :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <Leader>js :call CSSBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
    autocmd FileType gitcommit setlocal colorcolumn=50


""===================================================================================================
function! s:VAck()
        let old = @"
        norm! gvy
        let @z = substitute(escape(@", '\'), '\n', '\\n', 'g')
        let @" = old
endfunction

" Ack For visual selection
vnoremap <Leader>v :<C-u>call <SID>VAck()<CR>:exe "Ack! ".@z.""<CR>
""===================================================================================================
    " Write as super user
    command! W w !sudo tee % > /dev/null
    " Trim trailing whitespace
    command! TrimWS %s/\s*$//g | noh
    " Visual Selection Search using * and #

"?" nnoremap <C-c> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<CR>
"?" map <F7> :w <CR> :!gcc % -o %< && ./%< <CR>
"?" map <F8> :!./%<<CR>
"?" autocmd filetype cpp nnoremap <F6> :!g++ % -ggdb -o %:r <CR>
"?" autocmd filetype cpp nnoremap <F7> :!g++ % -ggdb -o %:r && ./%:r <CR>
"?" autocmd filetype cpp nnoremap <F8> :!g++ % -ggdb -o %:r && gdb -tui %:r <CR>
"?" map <F7> msHmtgg/Last [cC]hange:\s*/e+1<CR>"_D"=strftime("%Y %b %d")<CR>p'tzt`s

setlocal completefunc=thesaurus_query#auto_complete_integrate
setlocal errorformat=%E%f:%l:\ %m,%-Z%p^,%-C%.%#,%-G%.%#
        augroup NrHighlight
        autocmd!
        autocmd WinEnter * hi LineNr ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
        autocmd WinLeave * hi LineNr ctermfg=274 guifg=#e9e9e9 ctermbg=133 guibg=#212121
        augroup END

        augroup NrHighlight
                autocmd!
                autocmd WinEnter * hi LineNr ctermfg=247 ctermbg=233 
                autocmd WinLeave * hi LineNr ctermfg=274 ctermbg=133 
        augroup END


"==========================================================================================
"Plugin 'clang'
"Plugin 'clang-complete'
" if has('nvim')
"         Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"         Plug 'zchee/deoplete-jedi'
"         Plug 'zchee/deoplete-clang'
" else
"         Plug 'Shougo/vimproc.vim',   {'do': 'make'}
"         Plug 'Shougo/neocomplete.vim'
"         Plug 'davidhalter/jedi-vim', {'for': 'python'}
"         Plug 'justmao945/vim-clang', {'for': ['h', 'cpp']}
" endif
"==========================================================================================
"https://github.com/dhruvasagar/vim-open-url
VimTip	{{{1 1365: Series of high quality VIM tips
http://vim.sourceforge.net/tip_view.php?tip_id=

Some time ago I have created a series of VIM tips and I would like to share them with the community.
They are detailed (with graphics) and show some of the advance features of VIM.

Check them out:

Workspace efficiency - Vim tip 1 of 3:
http://amix.dk/blog/viewEntry/158

Search don't scroll - Vim tip 2 of 3:
http://amix.dk/blog/viewEntry/160

Taming your Vim config - Vim tip 3 of 3:
http://amix.dk/blog/viewEntry/162

As a bonus people should check out my 800 lines long vimrc (almost everything is commented):
http://amix.dk/vim/vimrc.html

"AAA----------------------------------------------------------------------------------
VimTip	{{{1 1381: hightlight a kind of special filetype docs in vim
http://vim.sourceforge.net/tip_view.php?tip_id=


suppose the filetype is en. Then, write a file
~/.vim/syntax/en.vim with contents as follows:
syn region enConstant start=/</hs=e+1 end=/>/he=s-1
syn region enType start=/`/hs=e+1 end=/`/he=s-1
syn region enString start=/|/hs=e+1 end=/|/he=s-1
syn region enTodo start=/@/hs=e+1 end=/@/he=s-1
syn sync minlines=10
syn case match

hi def link enIdentifier Identifier
hi def link enString String
hi def link enType Type
hi def link enUnderlined Underlined
let b:current_syntax = "en"
----------- end of en.vim ---------------

we also need another file
~/.vim/filetype.vim :

augroup filetypedetect
au BufNewFile,BufRead *.en setf en
augroup END

----------- end of filetype.vim ---------
"--------------------------------------------------------------------------------- 

:silent bufdo tar -rvf archive.tar %:p
"zzzX:w
(2) Here are some script I recommends:
Project-1.4.1
TagList-4.2
MiniBufExpl-6.3.2
ShowMarks-2.2
OmniCppComplete-0.4
CRefVim-1.0.4
exUtility-4.1.0
"--------------------------------------------------------------------------------- 
  http://www.geocities.com/yegappan/vim_faq_help.txt

to the "doc" directory - for example, in Unix/Linux systems:

  $ cp vim_faq_help.txt ~/.vim/doc

Then in Vim, do:

  :helptags ~/.vim/doc

After that, to access the FAQ, do:

  :help FAQ

Also, a must-read is Bram Moolenaar's "Seven Habits of Effective Text Editing" at:

  http://www.moolenaar.net/habits.html


"--------------------------------------------------------------------------------- 
