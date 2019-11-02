
        Plug 'prabirshrestha/asyncomplete.vim'
        Plug 'prabirshrestha/async.vim'
        Plug 'prabirshrestha/vim-lsp'
        Plug 'ryanolsonx/vim-lsp-python'
        Plug 'prabirshrestha/asyncomplete-lsp.vim'

        if executable('pyls')
        " pip install python-language-server
        au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
        endif
