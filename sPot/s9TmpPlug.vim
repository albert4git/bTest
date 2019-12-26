
"++AAACoc-Vista+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'liuchengxu/vista.vim'
        " let g:vista_fzf_preview = ['right:50%']
        " let g:vista#renderer#icons = {
        "                         \   "function": "\uf794",
        "                         \   "variable": "\uf71b",
        "                         \  }
        " " let g:vista#executive#ctags#support_json_format = 1
        " let g:vista#executives = ['coc', 'ctags', 'lcn', 'vim_lsp']
        " let g:vista#executives = ['ale', 'coc', 'ctags', 'lcn', 'vim_lsp']
        " let g:vista_executive_for = {'php': 'coc', 'java': 'coc', 'typescript': 'coc', 'go': 'coc', 'c': 'coc', 'javascript': 'coc', 'html': 'coc', 'rust': 'coc', 'cpp': 'coc', 'css': 'coc', 'python': 'coc'}
        " let g:vista_icon_indent = ['╰─🞂 ', '├─🞂 ']
        " let g:vista_default_executive = 'ctags'
        " let g:vista#renderer#enable_icon = 1
        " " By default vista.vim never run if you don't call it explicitly.
        " " If you want to show the nearest function in your statusline automatically,
        " " you can add the following line to your vimrc
        " autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
        ":::IRENE::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-jedi', {'do': 'yarn install'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++AAAcoc++}}}

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'prabirshrestha/asyncomplete.vim'
        " Plug 'prabirshrestha/async.vim'
        " Plug 'prabirshrestha/vim-lsp'
        " Plug 'prabirshrestha/asyncomplete-lsp.vim'

        " if executable('pyls')
        "     " pip install python-language-server
        "     au User lsp_setup call lsp#register_server({
        "         \ 'name': 'pyls',
        "         \ 'cmd': {server_info->['pyls']},
        "         \ 'whitelist': ['python'],
        "         \ })
        " endif

        " inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
        " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
        " inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"++AAAx++}}}
