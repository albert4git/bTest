
        "----------------------------------------------------------------------------------
        "-Plug 'cwfoo/vim-text-omnicomplete'
        "----------------------------------------------------------------------------------
        " Java-completion
        " Plug 'junegunn/vim-javacomplete2', {'for': 'java'} " Load only for java files
        Plug 'artur-shaik/vim-javacomplete2'
        "----------------------------------------------------------------------------------
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        Plug 'zchee/deoplete-clang'
        "===================================================================================
        Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
                let g:deoplete#sources#go#package_dot = 1
                let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
        "===================================================================================
        Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
        Plug 'mkusher/padawan.vim'
                let $PATH=$PATH . ':' . expand('~/.config/composer/vendor/bin/')
                let g:padawan#composer_command = "/usr/bin/composer"

        "=================================================================================
        Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

        "=================================================================================
        Plug 'fishbullet/deoplete-ruby'
        "Plug 'takkii/ruby-dictionary3'
        Plug 'HerringtonDarkholme/deoplete-typescript'

        "=================================================================================
        Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
                " Add extra filetypes
                let g:tern#filetypes=['jsx', 'javascript.jsx', 'vue']
                " Use tern_for_vim
                let g:tern#command=['tern']
                let g:tern#arguments=['--persistent']
                " Include documentation strings (if found) in the result data
                let g:deoplete#sources#ternjs#docs=1
                " Use a case-insensitive compare
                let g:deoplete#sources#ternjs#case_insensitive=1
                " Sort the result set
                let g:deoplete#sources#ternjs#sort=1
                " Ignore JavaScript keywords when completing
                let g:deoplete#sources#ternjs#include_keywords=0
        "=================================================================================
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }
        "=================================================================================
