
let g:coc_global_extensions = [
  \'coc-json',
  \'coc-tsserver',
  \'coc-html',
  \'coc-css',
  \'coc-solargraph',
  \'coc-yaml',
  \'coc-python',
  \'coc-emmet',
  \'coc-ultisnips',
  \'coc-lists',
  \'coc-svg',
  \'coc-emoji',
  \'coc-tag',
  \'coc-omni',
  \'coc-syntax',
  \'coc-explorer',
  \'coc-tsserver',
  \'coc-tslint',
  \'coc-tslint-plugin',
\]


hi link CocErrorSign custRed
hi default link CocErrorVirtualText  CocErrorSign
hi default link CocErrorVirtualText  custGreen

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------
function! CocCurrentFunction()
        return get(b:, 'coc_current_function', '')
endfunction
"---------------------------------------------------------------------------------
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-j> coc#refresh()
" Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"====================================================
" nmap <silent> <F3> :call <SID>show_documentation()<CR>
" nmap <silent> <F4> :call CocAction('showSignatureHelp')<cr>
" nmap <silent> <F5> :call CocAction('doHover')<CR>
" nmap <silent> <F6> :CocList diagnostics<CR>
" nmap <silent> <F7> :CocList outline<CR>
" nmap <silent> <F8> :CocList -I symbols<CR>
" nmap <F9>  <Plug>(coc-codeaction)
" nmap <F10>  <Plug>(coc-fix-current)
"====================================================

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"::::::::::::::::::::::::::::::::::::::::::::::
"Create mappings for function text object,
"requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
"::::::::::::::::::::::::::::::::::::::::::::::


"::::::::::::::::::::::::::::::::::::::::::::::
" nnoremap <silent> <space>0  :<C-u>CocList diagnostics<cr>
" nnoremap <silent> <space>1  :<C-u>CocList extensions<cr>
" nnoremap <silent> <space>2  :<C-u>CocList commands<cr>
" nnoremap <silent> <space>3  :<C-u>CocList outline<cr>
" nnoremap <silent> <space>4  :<C-u>CocList -I symbols<cr>
" nnoremap <silent> <space>5  :<C-u>CocNext<CR>
" nnoremap <silent> <space>6  :<C-u>CocPrev<CR>
" nnoremap <silent> <space>7  :<C-u>CocListResume<CR>

""::::::::::::::::::::::::::::::::::::::::::::::
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
""::::::::::::::::::::::::::::::::::::::::::::::
"nmap <leader>ac  <Plug>(coc-codeaction)
"nmap <leader>qf  <Plug>(coc-fix-current)
"nmap <leader>rn  <Plug>(coc-rename)
"vmap <leader>aa  <Plug>(coc-codeaction-selected)
"nmap <leader>aa  <Plug>(coc-codeaction-selected)
"nmap <leader>ac  <Plug>(coc-codeaction)
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
