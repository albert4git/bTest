#===TMUX==================================================================================
#===FREE==================================================================================
#===WILLY=================================================================================


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
