
        " Reload the colorscheme whenever we write the file.
        augroup color_badwolf_dev
                au!
                au BufWritePost badwolf.vim color badwolf
                au BufWritePost source ~/git/bTest/sPot/s9legoCyan.vim
        augroup END

        " Reload the colorscheme whenever we write the file.
        augroup color_badwolf_dev
                au!
                au BufWritePost badwolf.vim color badwolf
                " au BufWritePost source ~/git/bTest/sPot/s9legoCyan.vim
        augroup END

  " allow the . to execute once for each line of a visual selection
  vnoremap . :normal .<CR>


""===================================================================================================
function! s:VAck()
        let old = @"
        norm! gvy
        let @z = substitute(escape(@", '\'), '\n', '\\n', 'g')
        let @" = old
endfunction

" Ack For visual selection
vnoremap <Leader>v :<C-u>call <SID>VAck()<CR>:exe "Ack! ".@z.""<CR>

        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>

        function! s:VSetSearch()
                let temp = @@
                norm! gvy
                let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                let @@ = temp
        endfunction
        vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
        vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

"===================================================================================================
autocmd FileType cpp set keywordprg=cppman
command! -nargs=+ Cppman silent! call system("tmux split-window cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <buffer> M <Esc>:Cppman <cword><CR>
"===================================================================================================



Plug 'tpope/vim-projectionist'
" {{{
  let g:projectionist_heuristics = {}

  " Elixir Mix
  let g:projectionist_heuristics['mix.exs'] = {
      \   'lib/*.ex': {
      \     'alternate': 'test/{}_test.exs',
      \     'type': 'lib'
      \   },
      \   'test/*_test.exs': {
      \     'alternate': 'lib/{}.ex',
      \     'type': 'test'
      \   },
      \   'config/*.exs': {
      \     'type': 'config'
      \   },
      \   'mix.exs': {
      \     'type': 'mix'
      \   },
      \   '*_test.exs': {'dispatch': 'mix test {file}'},
      \   '*': {
      \     'dispatch': 'mix test',
      \     'console': 'iex'
      \   }
      \ }
" }}}
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'
" {{{
  function! TerminalSplitStrategy(cmd) abort
    tabnew | call termopen(a:cmd) | startinsert
  endfunction
  let g:test#custom_strategies = get(g:, 'test#custom_strategies', {})
  let g:test#custom_strategies.terminal_split = function('TerminalSplitStrategy')
  let test#strategy = 'terminal_split'

  nnoremap <silent> <leader>rr :TestFile<CR>
  nnoremap <silent> <leader>rf :TestNearest<CR>
  nnoremap <silent> <leader>rs :TestSuite<CR>
  nnoremap <silent> <leader>ra :TestLast<CR>
  nnoremap <silent> <leader>ro :TestVisit<CR>
" }}}
Plug 'tyru/open-browser.vim'
" {{{
  let g:netrw_nogx = 1
  vmap gx <Plug>(openbrowser-smart-search)
  nmap gx <Plug>(openbrowser-search)
" }}}
Plug 'Shougo/junkfile.vim'
" {{{
  nnoremap <leader>jo :JunkfileOpen
  let g:junkfile#directory = $HOME . '/.nvim/cache/junkfile'
" }}}
