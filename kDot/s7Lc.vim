
let g:LanguageClient_serverCommands = {
  \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
  \ 'go': ['bingo'],
  \ 'typescript': ['javascript-typescript-stdio'],
  \ }


        let g:LanguageClient_serverCommands = {
        \ 'ruby': ['tcp://localhost:7658']
        'ruby': ['solargraph', 'stdio']
        }

"------------------------------------------------------------------------- 
        let g:LanguageClient_serverCommands = {
        \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
        \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
        \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
        \ 'python': ['/usr/local/bin/pyls'],
        \ }

        let g:LanguageClient_serverCommands.python = ['pyls']

        " Config Language Server
        let g:LanguageClient_serverCommands = {
        \ 'cpp': ['clangd'],
        \ 'python': ['pyls'],
        \ 'go': ['bingo'],
        \ 'ruby': ['tcp://localhost:7658']
        \ }
        nnoremap <F5> :call LanguageClient_contextMenu()<CR>

"------------------------------------------------------------------------- 
        " Config Devdocs
        nmap K <Plug>(devdocs-under-cursor)
"------------------------------------------------------------------------- 
        let g:deoplete#sources = {}
        let g:deoplete#sources.python = ['LanguageClient']
        let g:deoplete#sources.python3 = ['LanguageClient']
        let g:deoplete#sources.vim = ['vim']
        "let g:deoplete#sources.cpp = ['LanguageClient']
        "let g:deoplete#sources.ruby = ['LanguageClient']
        "let g:deoplete#sources.c = ['LanguageClient']
