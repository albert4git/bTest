        "---------------------------------------------------------------------------------
        let g:lightline = {
                                \ 'colorscheme': 'tender',
                                \ 'active': {
                                \   'left': [ [ 'mode', 'paste' ],
                                \             [ 'fugitive', 'gitgutter', 'filename' ] ],
                                \   'right': [ [ 'percent', 'lineinfo' ],
                                \              [ 'syntastic' ],
                                \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
                                \ },
                                \ 'component_function': {
                                \   'fugitive': 'LightLineFugitive',
                                \   'gitgutter': 'LightLineGitGutter',
                                \   'readonly': 'LightLineReadonly',
                                \   'modified': 'LightLineModified',
                                \   'syntastic': 'SyntasticStatuslineFlag',
                                \   'filename': 'LightLineFilename'
                                \ },
                                \ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
                                \ 'subseparator': { 'left': '>', 'right': '' }
                                \ }
        "---------------------------------------------------------------------------------

                "\ 'colorscheme': 'tender',

        let g:lightline = {
                \ 'colorscheme': 'tender',
                \ 'mode_map': {
                \   '__' : '-',
                \   'n'  : 'N11',
                \   'no' : 'N·Operator Pending',
                \   'v'  : 'V',
                \   'V'  : 'V·Line',
                \   's'  : 'Select',
                \   'S'  : 'S·Line',
                \   'i'  : 'I',
                \   'R'  : 'R',
                \   'Rv' : 'V·Replace',
                \   'c'  : 'Command',
                \   'cv' : 'Vim Ex',
                \   'ce' : 'Ex',
                \   'r'  : 'Prompt',
                \   'rm' : 'More',
                \   'r?' : 'Confirm',
                \   '!'  : 'Shell',
                \   't'  : 'Terminal'
                \ },
                \ 'enable': {
                \   'statusline': 1,
                \   'tabline': 0,
                \ },
                \ 'active': {
                \   'left': [
                \       [ 'mode', 'paste' ],
                \       [ 'filename', 'readonly', 'modified' ],
                \       [ 'fugitive', ],
                \   ]
                \ },
                \ 'inactive': {
                \   'left': [
                \       [ 'filename', 'readonly', 'modified' ],
                \       [ ],
                \   ]

                \ },
                \ 'component': {
                \   'readonly': '%{&readonly?"x":""}',
                \   'fugitive': '%{winwidth(0) > 70 ? (exists("*fugitive#head") ? "⎇  " . fugitive#head() : "") : ""}',
                \   'filetype': '%{winwidth(0) > 70 ? (&filetype !=# "" ? &filetype : "no ft") : ""}',
                \   'fileencoding': '%{winwidth(0) > 70 ? (&fenc !=# "" ? &fenc : &enc) : ""}',
                \   'fileformat': '%{winwidth(0) > 70 ? &fileformat : ""}',
                \ },
                \ 'component_visible_condition': {
                \   'fugitive': '(exists("*fugitive#head") && winwidth(0) > 70 && ""!=fugitive#head())',
                \   'filetype': '(winwidth(0) > 70)',
                \   'fileencoding': '(winwidth(0) > 70)',
                \   'fileformat': '(winwidth(0) > 70)',
                \ },
                \ 'component_function': {
                \   'fugitive': 'LightLineFugitive',
                \   'gitgutter': 'LightLineGitGutter',
                \   'readonly': 'LightLineReadonly',
                \   'modified': 'LightLineModified',
                \   'syntastic': 'SyntasticStatuslineFlag',
                \   'filename': 'LightLineFilename'
                \ },
                \ 'separator': { 'left': 'L', 'right': 'R' },
                \ 'subseparator': { 'left': '|', 'right': '|' }
                \ }
