

        "--------------------------------------------------------------------------------- 
                "JS
                Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' } " works in tandem with pangloss/vim-javascript
                Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' } " supports latest language features.
                Plug 'othree/yajs.vim', { 'for': 'javascript' } " JavaScript syntax plugin
                Plug 'pangloss/vim-javascript', { 'for': 'javascript' } " preferred, works in tandem with jelera/vim-javascript-syntax
        "--------------------------------------------------------------------------------- 
                " CSS1
                Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'vue' ] } " better CSS3 support.
                Plug 'wavded/vim-stylus', { 'for': [ 'stylus', 'vue' ] } " stylus css
                Plug 'groenewege/vim-less', { 'for': [ 'less', 'vue' ] } " less css support
                Plug 'tpope/vim-haml', { 'for': [ 'haml', 'sass', 'scss', 'vue' ] } " haml, sass, and scss support
        "--------------------------------------------------------------------------------- 

        "Plug 'drslump/vim-syntax-js' " replace various keywords in JavaScript with abbreviations and symbols
                "set conceallevel=2
                "set concealcursor=nc  " don't reveal the conceals unless on insert or visual modes
                "let g:syntax_js=['function', 'return', 'semicolon', 'comma', 'this', 'proto', 'solarized'] " which conceals to enable
        Plug 'moll/vim-node', { 'for': 'javascript' }
        "Plug 'walm/jshint.vim' " prefer NeoMake with added jshint config.
        Plug 'jamescarr/snipmate-nodejs', { 'for': 'javascript' } " requires garbas/vim-snipmate, dump the contents of snippets/javascript into the directory ~/.vim/snippets/javascript
        "Plug 'myhere/vim-nodejs-complete' " use <c-x><c-o> to trigger completion.
        "Plug 'ahayman/vim-nodejs-complete', { 'for': 'javascript' } " use <c-x><c-o> to trigger completion. Fork of myhere's version, more up to date.
                " XXX ^ This causes some files to crash and never open.
        Plug 'sidorares/node-vim-debugger', { 'for': 'javascript' }
        "--------------------------------------------------------------------------------- 

        " Use the same js beautifier from jsbeautifier.org
        " Plug 'maksimr/vim-jsbeautify', { 'on': 'JsBeautify' }
        Plug 'maksimr/vim-jsbeautify'
                command JsBeautify call JsBeautify()

        " Syntax highlight stuff inside JS template strings.
        Plug 'Quramy/vim-js-pretty-template', { 'for': 'javascript' }

        " JSX
        "Plug 'jsx/jsx.vim', { 'for': 'javascript.jsx' }
        Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }

        " COFFEESCRIPT
        Plug 'kchmck/vim-coffee-script', { 'for': [ 'coffee', 'vue' ] }

        " QML
        let g:signify_realtime = 0
        "let g:signify_update_on_bufenter = 1
        "let g:signify_update_on_focusgained = 1
        let g:signify_sign_change = '~'
        nnoremap <leader>gg :SignifyToggle<cr>
        nmap <leader>gj <plug>(signify-next-hunk)
        nmap <leader>gk <plug>(signify-prev-hunk)
        nmap <leader>gJ 9999<leader>gj
        nmap <leader>gK 9999<leader>gk
