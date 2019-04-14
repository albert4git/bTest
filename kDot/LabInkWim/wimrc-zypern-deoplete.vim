"" Folds
let g:SimpylFold_docstring_preview = 1

"" NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

" Defines a function which calls NERDTreeFind if we have an open
" buffer, but NERDTreeToggle if we don't. This makes it so we can
" always open NERDTree in the appropriate directory.
function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    if (expand("%:t") != '')
      exe ":NERDTreeFind"
    else
      exe ":NERDTreeToggle"
    endif
  endif
endfunction

map <leader>e :call NERDTreeToggleInCurDir()<CR>
nmap <leader>nt :call NERDTreeToggleInCurDir()<CR>

"" NERDCommenter
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Markdown
let g:vim_markdown_folding_disabled = 1

"" NetRW
let g:netrw_banner = 0

"" Linting
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\   'python': ['flake8'],
\}

" lint when we change text in normal mode
let g:ale_lint_on_text_changed = 'normal'

" lint when we leave insert mode
let g:ale_lint_on_insert_leave = 1


" To lint python, you must execute flake8 using the version of python
" which you want to lint!
let g:ale_python_flake8_executable = 'python2'
let g:ale_python_flake8_options = '-m flake8'

"" Python
let g:python_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim3/bin/python'

"" Autocompletion

" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" when hitting enter on an autocomplete, go to next line
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" disable autocomplete by default
"let b:deoplete_disable_auto_complete=1
"let g:deoplete_disable_auto_complete=1
"call deoplete#custom#buffer_option('auto_complete', v:false)

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set completeopt -=preview

" set deoplete sources
"let g:deoplete#sources = {}
"let g:deoplete#sources.cpp = ['LanguageClient']
"let g:deoplete#sources.python = ['LanguageClient']
"let g:deoplete#sources.python3 = ['LanguageClient']
"let g:deoplete#sources.ruby = ['LanguageClient']
"let g:deoplete#sources.c = ['LanguageClient']
"let g:deoplete#sources.vim = ['vim']


"" Filetypes
autocmd BufRead,BufNewFile *.jinja2 setfiletype jinja2
autocmd BufRead,BufNewFile *.css,*.scss,*.js,*.json,*.rb,*.html,*.jinja  set shiftwidth=2 softtabstop=2
