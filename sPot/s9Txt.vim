
" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
" Plug 'itchyny/lightline.vim'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'jiangmiao/auto-pairs'
" Plug 'junegunn/limelight.vim'
" Plug 'w0rp/ale'

"" Go Lang Bundle
" Plug 'fatih/vim-go'
" Plug 'tweekmonster/hl-goimport.vim'
" Plug 'buoto/gotests-vim'
"no Python
"no Plug 'vim-python/python-syntax', {'for': 'python'}
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" For async completion
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" For Denite features
" Plug 'Shougo/denite.nvim'
" Plug 'Yggdroot/indentLine'

        Plug 'hallison/vim-rdoc'
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "-source ~/git/bTest/sPot/SYPLUG/nHydra.vim
        "-source ~/git/bTest/sPot/SYPLUG/NNV.vim
        "-let g:nnv_search_paths = ['~/git/bTest/']
        "-let g:nnv_search_paths = ['/media/red/124Black/']
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

        "-------------------------------------------------------------------------------
        "let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
        "nnoremap <silent> <C-o> :let g:cpsm_match_empty_query = 0<CR>:CtrlPMRU<CR>
        "nnoremap <silent> <C-p> :let g:cpsm_match_empty_query = 1<CR>:CtrlP<CR>
        "==================================================================================
        "1y$  //yank current row to register 1
        "<C-r>a to paste from register a
        "----------------------------------------------------------------------------------
                " Auto format codes
                " noremap <F4> :Autoformat<CR>
                " formatt upon saving
                " au BufWrite * :Autoformat
        "---------------------------------------------------------------
        "============================================================================================
        " command! -bang -nargs=?  ZClr
        "                         \ call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
        "                         \ 'fnamemodify(v:val, ":t:r")'),
        "                         \ 'sink': 'colo', 'left': '25%'})
        "============================================================================================
        " command! -bang -nargs=* ZFi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

        "---------------------------------------------------------------

        "---------------------------------------------------------------

        :com -complete=custom,ListUsers -nargs=1 Finger !finger <args>
        :fun ListUsers(A,L,P)
        :    return system("cut -d: -f1 /etc/passwd")
        :endfun
"--------------------------------------------------------------------------------- 

        "---------------------------------------------------------------
        vmap sq "zdi"<C-R>z"<ESC>
        vmap sb "zdi( <C-R>z )<ESC>

        "---------------------------------------------------------------
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        "---------------------------------------------------------------

        let g:lightline.component = {
                                \ 'mode': '%{lightline#mode()}',
                                \ 'absolutepath': '%F',
                                \ 'relativepath': '%f',
                                \ 'filename': '%t',
                                \ 'modified': '%M',
                                \ 'bufnum': '%n',
                                \ 'paste': '%{&paste?"PASTE":""}',
                                \ 'readonly': '%R',
                                \ 'charvalue': '%b',
                                \ 'charvaluehex': '%B',
                                \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
                                \ 'fileformat': '%{&ff}',
                                \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
                                \ 'percent': '%3p%%',
                                \ 'percentwin': '%P',
                                \ 'spell': '%{&spell?&spelllang:""}',
                                \ 'lineinfo': '%3l:%-2v',
                                \ 'line': '%l',
                                \ 'column': '%c',
                                \ 'close': '%999X X ',
                                \ 'winnr': '%{winnr()}' }

        let g:lightline.tab_component_function = {
                                \ 'filename': 'lightline#tab#filename',
                                \ 'modified': 'lightline#tab#modified',
                                \ 'readonly': 'lightline#tab#readonly',
                                \ 'tabnum': 'lightline#tab#tabnum' }

        let g:lightline.mode_map = {
                                \ 'n' : 'NORM',
                                \ 'i' : 'INSERT',
                                \ 'R' : 'REPLACE',
                                \ 'v' : 'VISUAL',
                                \ 'V' : 'V-LINE',
                                \ "\<C-v>": 'V-BLOCK',
                                \ 'c' : 'COMMAND',
                                \ 's' : 'SELECT',
                                \ 'S' : 'S-LINE',
                                \ "\<C-s>": 'S-BLOCK',
                                \ 't': 'TERMINAL',
                                \ }

        let g:lightline = {
                                \ 'colorscheme': 'tender',
                                \ 'active': {
                                \   'left': [ [ 'mode', 'paste' ],
                                \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                                \ },
                                \ 'component_function': {
                                \   'gitbranch': 'fugitive#head'
                                \ },
                                \ }


        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/CursorLineCurrentWindow'
        set cursorline " highlight the current line. Needed for the next plugin to work.
        "----------------------------------------------------------------------------------

        Plug 'kshenoy/vim-origami'
        " `<count>Za`  Align all folds of level 'count'
        "         `ZA`  Align all folds
        " `<count>ZF`  Insert a start foldmarker of level 'count' at the end of line and comment it
        " `<count>Zf`  Insert a start foldmarker of level 'count' at the end of line but don't comment it
        " `<count>ZC`  Insert an end  foldmarker of level 'count' at the end of line and comment it
        " `<count>Zc`  Insert an end  foldmarker of level 'count' at the end of line but don't comment it
        "         `ZD`  Delete the foldmarker from the line
        "==========================================================================================
        let g:OrigamiMap = {
                \ 'Leader'           : "Z",
                \ 'Align'            : "Z",
                \ 'AlignAll'         : "A",
                \ 'CommentedOpen'    : "F",
                \ 'UncommentedOpen'  : "f",
                \ 'CommentedClose'   : "C",
                \ 'UncommentedClose' : "c",
                \ 'Delete'           : "D",
                \ }

        " vmap it <Plug>(textobj-signify-hunk-i)
        " vmap ah <Plug>(textobj-gitgutter-a)
        "----------------------------------------------------------------------------------
        " 255   0 255		magenta1
        " 0   139 139		dark cyan
        " 0   139 139		DarkCyan
        " 139   0 139		dark magenta
        " 1h39   0 139		DarkMagenta
        " 139   0   0		dark red
        " 139   0   0		DarkRed
        " 144 238 144		light green
        " 144 238 144		LightGreen
                 let g:expand_region_text_objects = {
                                         \ 'iw'  :0,
                                         \ 'iW'  :0,
                                         \ 'i"'  :0,
                                         \ 'i''' :1,
                                         \ 'ib'  :1,
                                         \ 'i)'  :1,
                                         \ 'iB'  :1,
                                         \ 'i}'  :1,
                                         \ 'i]'  :1,
                                         \ 'if'  :1,
                                         \ 'io'  :1,
                                         \ 'ip'  :1,
                                         \ 'ih'  :1
                                         \ }

        "----------------------------------------------------------------------------------
        " 255   0 255		magenta1
        " 0   139 139		dark cyan
        " 0   139 139		DarkCyan
        " 139   0 139		dark magenta
        " 139   0 139		DarkMagenta
        " 139   0   0		dark red
        " 139   0   0		DarkRed
        " 144 238 144		light green
        " 144 238 144		LightGreen

         " let g:lightline = {
         "                 \ 'colorscheme': 'monokai_tasty',
         "                 \ 'active': {
         "                 \   'left': [ [ 'mode', 'paste' ],
         "                 \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
         "                 \ },
         "                 \ 'component_function': {
         "                 \   'cocstatus': 'coc#status',
         "                 \   'currentfunction': 'CocCurrentFunction',
         "                 \   'method': 'NearestMethodOrFunction'
         "                 \ },
         "                 \ }


" set lighline theme inside lightline config
" let g:lightline = { 'colorscheme': 'tender' }
" let g:lightline = { 'colorscheme': 'ayu' }
" \ 'colorscheme': 'monokai_tasty',


" let g:lightline = {
"         \ 'colorscheme': 'monokai_tasty',
"         \ }


        let g:lightline = {
                \ 'colorscheme': 'monokai_tasty',
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
                \ 'separator': { 'left': '', 'right': '' },
                \ 'subseparator': { 'left': '|', 'right': '|' }
                \ }


        Plug 'dmonllao/vim-IDE'
        Plug 'mkropat/vim-jumpthere'
        Plug 'Shougo/denite.nvim' " async version of unite.vim
        Plug 'vimplugin/project.vim'
        Plug 'kristijanhusak/vim-project-lint'
        Plug 'daniel-samson/project-tree.vim'

|:TextobjDiffDefaultKeyMappings| to redefine these key mappings.

mode	{lhs}		{rhs}				~
----	-----		------------------------------	~
NVO	<Leader>dfJ	<Plug>(textobj-diff-file-N)
NVO	<Leader>dfK	<Plug>(textobj-diff-file-P)
NVO	<Leader>dfj	<Plug>(textobj-diff-file-n)
NVO	<Leader>dfk	<Plug>(textobj-diff-file-p)
NVO	<Leader>dJ	<Plug>(textobj-diff-hunk-N)
NVO	<Leader>dK	<Plug>(textobj-diff-hunk-P)
NVO	<Leader>dj	<Plug>(textobj-diff-hunk-n)
NVO	<Leader>dk	<Plug>(textobj-diff-hunk-p)
VO	adH		<Plug>(textobj-diff-file)
VO	adf		<Plug>(textobj-diff-file)
VO	adh		<Plug>(textobj-diff-hunk)
VO	idH		<Plug>(textobj-diff-file)
VO	idf		<Plug>(textobj-diff-file)
VO	idh		<Plug>(textobj-diff-hunk)

"++AAA5Unite+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "":UniteResume, :UniteBookmarkAdd,
        "call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
        "                        \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))
        ""==========================================================================================
        "call unite#filters#sorter_default#use(['sorter_rank'])
        "call unite#filters#matcher_default#use(['matcher_fuzzy'])
        "call unite#filters#matcher_default#use(['matcher_fzf'])
"++AAA5U++}}} 
"----------------------------------------------------------------------------------
        " nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>
        " imap <C-s>    <Plug>(neosnippet_start_unite_snippet)
"----------------------------------------------------------------------------------
        "==================================================================
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>
"----------------------------------------------------------------------------------
"----------------------------------------------------------------------------------
        function! UltiSnipsCallUnite()
                Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
                return ''
        endfunction
"----------------------------------------------------------------------------------

        " C-c and C-v - Copy/Paste to global clipboard
        vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]ppp
        " map p <Plug>(miniyank-autoput)
        " map P <Plug>(miniyank-autoPut)

""==========================================================================================
        nnoremap z<Up> zR
        nnoremap z<Down> zM
""==========================================================================================
       imap <c-7> <plug>(fzf-complete-path)
        "-SWITCH TO THE DIRECTORY OF THE OPEN BUFFER
        map cd :cd %:p:h<cr>
""==========================================================================================
        function! s:cursor_ping()
                let l:cursorline = &cursorline
                let l:cursorcolumn = &cursorcolumn
                for _ in range(5)
                        set cursorline! cursorcolumn!
                        redraw
                        sleep 15m
                endfor
                let &cursorline = l:cursorline
                let &cursorcolumn = l:cursorcolumn
        endfunction
        nmap <silent> <M-Space> :call <SID>cursor_ping()<CR>

        "----------------------------------------------------------------------------------
        cmap <M-.> <C-r>=expand('%:p:h') . '/'<CR>
"----------------------------------------------------------------------------------
        function! Version()
                let l:n = 1
                while has('patch' . n)
                        let l:n += 1
                endwhile
                return printf('%d.%d.%04d', v:version / 100, v:version % 100, n - 1)
        endfunction
        command! Version echo 's10-' . Version()
"----------------------------------------------------------------------------------
"----------------------------------------------------------------------------------
        " Set "very magic" for all searches.
        "Plug 'coot/EnchantedVim'
        let g:VeryMagic = 0
        " Turn on all other features.
        let g:VeryMagicSubstituteNormalise = 1
        let g:VeryMagicSubstitute = 1
        let g:VeryMagicGlobal = 1
        let g:VeryMagicVimGrep = 1
        let g:VeryMagicSearchArg = 1
        let g:VeryMagicFunction = 1
        let g:VeryMagicHelpgrep = 1
        let g:VeryMagicRange = 1
        let g:VeryMagicEscapeBackslashesInSearchArg = 1
        let g:SortEditArgs = 1

        " no-magic searching
        nnoremap / /\V
        nnoremap ? ?\V
        vnoremap / /\V
        vnoremap ? ?\V

        " If using incsearch:
        noremap <leader>/ /\v
        noremap <leader>? ?\v
        vnoremap <leader>/ /\v
        vnoremap <leader>? ?\v
"----------------------------------------------------------------------------------
        " draw text-based things like lines, boxes, graphs, etc
        Plug 'vim-scripts/DrawIt'
"----------------------------------------------------------------------------------
        set cursorline " highlight the current line. Needed for the next plugin to work.
        Plug 'vim-scripts/CursorLineCurrentWindow'
"----------------------------------------------------------------------------------
        let g:indentLine_enabled = 1
        let g:indent_guides_auto_colors = 1
        let g:indent_guides_enable_on_vim_startup = v:true

        let g:indent_guides_exclude_filetypes = ['help', 'man']

        let g:indent_guides_enable_on_vim_startup = 1
        let g:indent_guides_color_change_percent = 20
        let g:indent_guides_guide_size = 1
"----------------------------------------------------------------------------------

        " Fzf seems cleaner and faster, and exists for zsh too.
        if ((has('nvim') || v:version > 799) && has('python3')) " for neovim or vim 8.0+
                Plug 'Shougo/denite.nvim' " async version of unite.vim
        else
                Plug 'Shougo/unite.vim'
        endif

"--------------------------------------------------------------------------------- 
let s:VIMROOT = $HOME."/.vim"
let &runtimepath=s:VIMROOT."," . &runtimepath
let &runtimepath=s:VIMROOT."/bundle/vim-plug," . &runtimepath

    if glob(s:VIMROOT."/bundle/vim-plug/") != "" " if Plug exists
        " BEGIN PLUGIN MANAGEMENT:
            if has('vim_starting')
                let &runtimepath=s:VIMROOT."/bundle/vim-plug," . &runtimepath
                runtime plug.vim
            endif
"--------------------------------------------------------------------------------- 
"
" Create necessary folders if they don't already exist.
if exists("*mkdir")
    silent! call mkdir(s:VIMROOT, "p")
    silent! call mkdir(s:VIMROOT."/bundle", "p")
    silent! call mkdir(s:VIMROOT."/swap", "p")
    silent! call mkdir(s:VIMROOT."/undo", "p")
    silent! call mkdir(s:VIMROOT."/backup", "p")
else
    echo "Error: Create the directories ".s:VIMROOT."/, ".s:VIMROOT."/bundle/, ".s:VIMROOT."/undo/, ".s:VIMROOT."/backup/, and ".s:VIMROOT."/swap/ first."
    exit
endif

let &backupdir=s:VIMROOT.'/backup//' " double slash means make the filenames unique.

set noswapfile
let &directory=s:VIMROOT.'/swap//' " double slash means make the filenames unique.

"----------------------------------------------------------------------------------
" Beautify json.
        command JsonFormat %!python -m json.tool
" Reverse all lines.
        command Reverse g/^/m0
"----------------------------------------------------------------------------------

"----------------------------------------------------------------------------------
"----------------------------------------------------------------------------------
" Make completion popups show complete matches which can often be used as call tip:
set showfulltag
hi IndentGuidesOdd   guibg=#662211
hi IndentGuidesEven  guibg=#333396

"----------------------------------------------------------------------------------
" Enable tooltips:
" if has('balloon_eval')
"         set ballooneval
" endif
"----------------------------------------------------------------------------------
"==================================================================================================
" Perform word-ish searches in a new window, so we can maintain position in the current window:
"==================================================================================================
" nnoremap <C-?> :<C-U>execute 'Man' v:count '<C-R><C-W>'<CR>
"==================================================================================================

        "----------------------------------------------------------------------------------
        localcfg/plugin_vim_coiled_snake.vim
        I prefer my fold text as it is uniform across all filetypes:
        let g:coiled_snake_set_foldtext = v:false
        localcfg/plugin_vim_ditto
        Store data in user’s system data directory:
        let g:ditto_dir = g:vim_data_dir . '/ditto'
        "----------------------------------------------------------------------------------
        "???
        " vim-clevertab performs exactly how I want:
        "----------------------------------------------------------------------
        let s:types = ['start', 'tab', 'keyword', 'omni', 'dictionary', 'stop']
        if has('pythonx') && v:version >= 704
                let s:types = insert(s:types, 'ultisnips', 2)
        endif
        execute "inoremap <silent> <Tab> " .
                                \ join(map(s:types,
                                \
        {_, v -> '<C-r>=CleverTab#Complete("' . v . '")<CR>'}),
                                \
        "")
        inoremap <silent> <S-Tab> <C-r>=CleverTab#Complete('prev')<CR>
        "----------------------------------------------------------------------------------
        if (&termencoding ==# 'utf-8') || has('gui_running')
                let g:ale_sign_error = ''
                let g:ale_sign_warning = ''
                let g:ale_sign_info = ''
                let g:ale_sign_style_error = ''
                let g:ale_sign_style_warning = ''
        endif
        if has('gui_running')
                for s:k in ['Error', 'Info', 'Warning']
                        execute 'sign define ALE' . s:k . 'Sign icon=' .
                                                \ expand('~/.vim/icons/' . tolower(s:k) . '.png')
                endfor
        endif
        "----------------------------------------------------------------------------------
        " :emenu   ???
        " dwm.vim

        call s:define_menu('&python', {
                                \ '&config': [
                                \
        expand('$PYTHONSTARTUP'),
                                \
        g:xdg_config_dir . '/python/rc',
                                \ ],
                                \ '&flake8': g:xdg_config_dir . '/flake8',
                                \ '&pip': g:xdg_config_dir . '/pip/pip.conf',
                                \ 'ptpytho&n': '~/.ptpython/config.py',
                                \ })
        "==================================================================================================
        "----------------------------------------------------------------------------------

        nohtml
        "==================================================================================
        Plug 'tpope/vim-fugitive'
        "==================================================================================
        "    :Git[!] [args]
        "    :Gstatus
        "    :Gcommit [args]
        "    :Gedit/:Gsplit/:Gvsplit/:Gtabedit/:Gpedit [revision]
        "    :Gwrite/:Gwq {path}
        "    :Gmove {destination}
        "    :Gremove
        "    :{range}Gread [revision]/[args]
        "    :Gdiff/:Gsdiff/:Gvdiff [revision]
        "    :Ggrep/:Glgrep [args] -- :grep/:lgrep with git-grep as 'grepprg'
        "    :Glog [args] -- load all previous revisions of current file into quickfix
        "    :[range]Gblame {flags}
        "    :[range]Gbrowse {revision}
        "==================================================================================
        "----------------------------------------------------------------------------------
# Use Neovim as "preferred editor"
export VISUAL=nvim
# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim
        "----------------------------------------------------------------------------------
        Plug 'markonm/traces.vim'
        " Replace text
        nnoremap gr" vi":s/
        nnoremap gr) vi):s/
        nnoremap gr> vi>:s/
        nnoremap gr] vi]:s/
        nnoremap gra ggvG:s/
        nnoremap grl 0v$:s/
        nnoremap gg vip:s/
        nnoremap gf vis:s/
        nnoremap gr} vi}:s/
        "----------------------------------------------------------------------------------

* `:PP`: Pretty print.  With no argument, acts as a REPL.
* `:Runtime`: Reload runtime files.  Like `:runtime!`, but it unlets any
  include guards first.
* `:Disarm`: Remove a runtime file's maps, commands, and autocommands,
  effectively disabling it.
* `:Scriptnames`: Load `:scriptnames` into the quickfix list.
* `:Messages`: Load `:messages` into the quickfix list, with stack trace
  parsing.
* `:Verbose`: Capture the output of a `:verbose` invocation into the preview
  window.
* `:Time`: Measure how long a command takes.
* `:Breakadd`: Like its lowercase cousin, but makes it much easier to set
  breakpoints inside functions.  Also `:Breakdel`.
* `:Vedit`: Edit a file relative the runtime path. For example,
  `:Vedit plugin/scriptease.vim`. Also, `:Vsplit`, `:Vtabedit`, etc.
  Extracted from [pathogen.vim](https://github.com/tpope/vim-pathogen).
* `K`: Look up the `:help` for the VimL construct under the cursor.
* `zS`: Show the active syntax highlighting groups under the cursor.
* `g=`: Eval a motion or selection as VimL and replace it with the result.
  This is handy for doing math, even outside of VimL.
* Projections for

        "----------------------------------------------------------------------------------
        "-Plug 'amiorin/vim-project'
"==================================================================================================
vnoremap <silent> <M-{> >gv:<C-u>call Enclose('{', 1)<CR>
vnoremap <silent> <M-3> >gv:<C-u>call Enclose('#', 1)<CR>
vnoremap <silent> <M-/> :<C-u>call Enclose('/', 0)<CR>


"==================================================================================================
find . -name '*.java' > cscope.files
"==================================================================================================

        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
        \ },

"==================================================================================================
" ctags -R --fields=+l --languages=python --python-kinds=-iv -f /.tags ./

types_c.taghl
types_go.taghl
types_java.taghl 
types_php.taghl
types_pl.taghl 
types_py.taghl 
types_ruby.taghl
        "==================================================================================
        "====
        " let generate_tags=1
        " Set tags option
        " set tags=./javascript_tags;/
        " set tags+=./python_tags;/
        " set tags+=./ruby_tags;/
        " set tags+=./go_tags;/
        " set tags+=./java_tags;/
        " set tags+=./c_tags;/
        ":set tags=./tags,tags,/home/user/commontags
        "====
        "==========================================================================================
        "----------------------------------------------------------------------------------
"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " set dictionary=/usr/share/dict/words
        " set dictionary="/usr/dict/words"
        " set spellfile=~/.config/nvim/spell/en.utf-8.add
"++AAAx++}}} 
        "----------------------------------------------------------------------------------
        " nmap <Leader>c <Plug>CRV_CRefVimNormal
        " vmap <Leader>r <Plug>CRV_CRefVimVisual
        " map  <Leader>cw <Plug>CRV_CRefVimAsk
        " map  <Leader>cc <Plug>CRV_CRefVimInvoke

        "----------------------------------------------------------------------------------
        " <Plug>(neoterm-repl-send)
        "----------------------------------------------------------------------------------
        " Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
        " autocmd User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
        "--IRENE----------------------------------------------------------------------------
        "==========================================================================================
        " source ~/git/bTest/kDot/sWhich8Key.vim
        "        nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
        "        nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
        "        nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>
        "==========================================================================================

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "---------------------------------------------------------------------------------
        " autocmd FileType python setlocal omnifunc=lsp#complete
        " autocmd! FileType typescript setlocal omnifunc=coc#completions
        " autocmd! FileType python setlocal omnifunc=pythoncomplete#Complete
        " autocmd! FileType python setlocal omnifunc=jedi#completions
        " autocmd! FileType python setlocal completeopt+=menu,preview
        "---------------------------------------------------------------------------------
        "=autocmd! FileType python setlocal completeopt+=preview
        "=autocmd! FileType python setlocal omnifunc=coc#completions
        "---------------------------------------------------------------------------------
        "===============================================================================================================
        " Search for visually highlighted text
        " :vmap ff y/<C-R>"<CR>
        "===============================================================================================================

        "===============================================================================================================
        " Since teaching a lesson on pytest in our 100 Days of Code course I discovered
        " coverage and made this alias in my .vimrc to simply check it with one keystroke:
        " nmap ,t :w<CR>:!pytest -s --cov-report term-missing --cov='.'<CR>
        " # enable venv (TODO: switch to pipenv)
        " pip install pytest-cov
        "===============================================================================================================

        "---------------------------------------------------------------------------------
        " nmap gz <Plug>ZVOperator
        " vmap <localleader>z <Plug>ZVVisSelection
        "========================================================
        snippet si2nce
        @since ${0:#:version}
        "========================================================
        " imap <c-k> <plug>(fzf-complete-word)
        " imap <C-8> <plug>(fzf-complete-file-ag)
        " imap <expr><M-0> fzf#vim#complete('cat /usr/share/dict/words')

"++AAAClap++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'liuchengxu/vim-clap'
        let g:clap_provider_alias = {'hist:': 'command_history'}
        " let g:clap_open_action: Dict, { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit'}
        "========================================================
        hi default link ClapInput   Visual
        hi default link ClapDisplay Pmenu
        hi default link ClapPreview PmenuSel
        hi default link ClapMatches Search
        "========================================================
        "=ClapQuery will use the bold fg of Normal and the same bg of ClapInput
        hi ClapDefaultPreview          ctermbg=237 guibg=#3E4452
        hi ClapDefaultSelected         cterm=bold,underline gui=bold,underline ctermfg=80 guifg=#5fd7d7
        hi ClapDefaultCurrentSelection cterm=bold gui=bold ctermfg=224 guifg=#ffd7d7
        "========================================================
        hi default link ClapPreview          ClapDefaultPreview
        hi default link ClapSelected         ClapDefaultSelected
        hi default link ClapCurrentSelection ClapDefaultCurrentSelection
        "==================================================================================
"++AAAClap++}}} 

        "===???============================================================================
        nnoremap <Leader>4 <Plug>(textobj-diff-hunk-p)
        "==================================================================================
        "====

                nnoremap <LocalLeader>; :CodeQueryMenu Unite Full<CR>
                " nnoremap <LocalLeader>; :CodeQueryMenu Unite Magic<CR>
                " Or enable typing (to search menu items) by default
                nnoremap <LocalLeader>\ :CodeQueryMenu Unite Magic<CR>A

                " Trigger db building (in current filetype) when your query fails
                let g:codequery_trigger_build_db_when_db_not_found = 1
                " Custom your `CodeQuery Text` commands
                let g:codequery_find_text_cmd = 'Ack!'
                let g:codequery_find_text_from_current_file_dir = 0
                " 0 => search from project dir (git root directory -> then the directory containing xxx.db file)
                " 1 => search from the directory containing current file
                " If you use ':CodeQuery Symbol' in a txt file, of course, it will fail due to wrong filetype.
                " With the following option set to 1, ':CodeQuery Text' will be automatically sent when your query fails.
                let g:codequery_auto_switch_to_find_text_for_wrong_filetype = 0

        "====
        "==================================================================================

        "==========================================================================================
        "nnoremap <F6> :ScratchPreview<CR>
        "nnoremap <F7> :Scratch<CR>

        "==========================================================================================
        ""Python runners
        "autocmd! filetype python noremap <buffer> <F4> :w<CR>:!python %<CR>
        "autocmd! filetype python inoremap <buffer> <C-F4> <Esc>:w<CR>:!python %<CR>
        "autocmd! filetype python noremap <buffer> <S-F4> :w<CR>:!ipython %<CR>
        "autocmd! filetype python inoremap <buffer> <S-F4> <Esc>:w<CR>:!ipython %<CR>
        "noremap <buffer> <F4> :w<CR>:!python %<CR>
        "noremap <buffer> <C-F4> :w<CR>:!clear;python %<CR>
        "noremap <buffer> <S-F4> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
        "==========================================================================================

        nnoremap <M-q> :quit<CR>
        inoremap <silent> <M-q> <C-o>:quit<CR>
        nnoremap <M-Q> :quit!<CR>
        inoremap <silent> <M-Q> <C-o>:quit!<CR>

        " nnoremap <C-z> yy:<C-r>"<cr>
        " nnoremap ;y yy:<C-r>"<cr>


":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" map tr :call airline#extensions#stopwatch#run()<CR>
" map tp :call airline#extensions#stopwatch#split()<CR>
" map ts :call airline#extensions#stopwatch#stop()<CR>
" map tt :call airline#extensions#stopwatch#reset()<CR>
" map ty :call airline#extensions#stopwatch#summary()<CR>
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



":::???::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let g:dsf_no_mappings = 1
nmap dsf <Plug>DsfDelete
nmap csf <Plug>DsfChange
nmap dsnf <Plug>DsfNextDelete
nmap csnf <Plug>DsfNextChange
omap af <Plug>DsfTextObjectA
xmap af <Plug>DsfTextObjectA
omap if <Plug>DsfTextObjectI
xmap if <Plug>DsfTextObjectI

":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" Type <Leader>s to trig searching in normal mode
nmap <silent> <Leader>s <Plug>SearchNormal
" Type <Leader>s to search selected text in visual mode
vmap <silent> <Leader>s <Plug>SearchVisual
" Type <Leader>S to input the text you want to search in the cmdline
nmap <silent> <Leader>S <Plug>SearchComand

"--------------------------------------------------------------------------------- 
command! -nargs=0 Tsc    :CocCommand tsserver.watchBuild
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" let g:asyncomplete_auto_popup = 0
" imap <c-space> <Plug>(asyncomplete_force_refresh)
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


        "==================================================================================
        let g:lsp_signs_enabled = 1
        let g:lsp_diagnostics_echo_cursor = 1
        let g:lsp_signs_error = {'text': '✗'}
        let g:lsp_signs_warning = {'text': '‼', 'icon': '/path/to/some/icon'}
        let g:lsp_signs_hint = {'icon': '/path/to/some/other/icon'}
        let g:lsp_highlights_enabled = 0
        let g:lsp_textprop_enabled = 0
        let g:lsp_virtual_text_enabled = 0
        let g:lsp_highlight_references_enabled = 1
        highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
        "==================================================================================
        " Set the executive for some filetypes explicitly. Use the explicit executive
        " instead of the default one for these filetypes when using `:Vista` without
        " specifying the executive.
        let g:vista_executive_for = {
        \ 'cpp': 'vim_lsp',
        \ 'php': 'vim_lsp',
        \ }

        " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
        let g:vista#renderer#enable_icon = 1

        " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
        let g:vista#renderer#icons = {
        \   "function": "\uf794",
        \   "variable": "\uf71b",
        \  }

        "--------------------------------------------------------------------------------- 


  "diagnostic.errorSign": "cER",
  "diagnostic.warningSign": "cWR",
  "diagnostic.infoSign": "cIn",
  "diagnostic.virtualText": true


:nmap <F2> "=strftime('%c')<C-M>p
:imap <F2> <C-R>=strftime('%c')<C-M>
" generate Number sequ 
put =map(range(1,150), 'printf(''%04d'', v:val)')
for i in range(1,10) | put ='192.168.0.'.i | endfor

193.168.0.1
0192.168.0.2
0192.168.0.3
0192.168.0.4
0211.168.0.5

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
" Add argument (can be negative, default 1) to global variable i.
" Return value of i before the change.
function Inc(...)
  let result = g:i
  let g:i += a:0 > 0 ? a:1 : 1
  return result
endfunction

" Suppose you want to replace each occurrence of "abc" with "xyz_N"
" where N is an ascending number (xyz_1, xyz_2, xyz_3, and so on).

" :let i = 1 | %s/abc/\='xyz_' . Inc()/g

"++AAAx++}}} 


For another example, the following command replaces each occurrence of "abc" with a number
that increases by 5, starting at 100 (the numbers will be 100, 105, 110, and so on):

:let i=100 | :%s/abc/\=Inc(5)/g

"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 



"--------------------------------------------------------------------------------- 
https://github.com/Quramy/tsuquyomi
https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Python
https://github.com/prabirshrestha/vim-lsp/wiki/Servers
"--------------------------------------------------------------------------------- 


        "Plug 'endel/vim-github-colorscheme'

        Plug 'kshenoy/vim-origami'
        " `<count>Za`  Align all folds of level 'count'
        "         `ZA`  Align all folds
        " `<count>ZF`  Insert a start foldmarker of level 'count' at the end of line and comment it
        " `<count>Zf`  Insert a start foldmarker of level 'count' at the end of line but don't comment it
        " `<count>ZC`  Insert an end  foldmarker of level 'count' at the end of line and comment it
        " `<count>Zc`  Insert an end  foldmarker of level 'count' at the end of line but don't comment it
        "         `ZD`  Delete the foldmarker from the line
        "==========================================================================================
        let g:OrigamiMap = {
                \ 'Leader'           : "Z",
                \ 'Align'            : "Z",
                \ 'AlignAll'         : "A",
                \ 'CommentedOpen'    : "F",
                \ 'UncommentedOpen'  : "f",
                \ 'CommentedClose'   : "C",
                \ 'UncommentedClose' : "c",
                \ 'Delete'           : "D",
                \ }

"--------------------------------------------------------------------------------- 

function! s:js_completor(opt, ctx) abort
    let l:col = a:ctx['col']
    let l:typed = a:ctx['typed']

    let l:kw = matchstr(l:typed, '\v\S+$')
    let l:kwlen = len(l:kw)

    let l:startcol = l:col - l:kwlen

    let l:matches = [
        \ "do", "if", "in", "for", "let", "new", "try", "var", "case", "else", "enum", "eval", "null", "this", "true",
        \ "void", "with", "await", "break", "catch", "class", "const", "false", "super", "throw", "while", "yield",
        \ "delete", "export", "import", "public", "return", "static", "switch", "typeof", "default", "extends",
        \ "finally", "package", "private", "continue", "debugger", "function", "arguments", "interface", "protected",
        \ "implements", "instanceof"
        \ ]

    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'javascript',
    \ 'whitelist': ['javascript'],
    \ 'completor': function('s:js_completor'),
    \ })

"==================================================================================

let g:ale_fixers = {
\    'ruby': ['standardrb'],
\}
let g:ale_fix_on_save = 1

let g:ale_linters = {
      \   'ruby': ['standardrb', 'rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}
" golsp or bingo 
"==================================================================================
$ git clone https://github.com/posquit0/vimrc ~/.vim
$ ln -s .vim/vimrc .vimrc
# If you use NeoVIM
$ ln -s ~/.vim .config/nvim
$ vim +PlugInstall +qall now
"==================================================================================


let g:airline_theme="base16"
let g:airline_highlighting_cache=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#syntastic#enabled=0
let g:airline#extensions#tagbar#enabled=0
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#displayed_head_limit=12
let g:airline#extensions#branch#sha1_len=8
let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']
let g:airline#extensions#taboo#enabled=1
let g:airline#extensions#ale#enabled=0
let g:airline#extensions#hunks#enabled=0

let g:airline_powerline_fonts=0
let g:airline_left_sep='▙'
let g:airline_right_sep='▟'
let g:airline_mode_map={
if !exists('g:airline_symbols')
    let g:airline_symbols={}
let g:airline_symbols.spell='✓'
let g:airline_section_z='%4l/%L'
"==================================================================================
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}
"==================================================================================
npm install sqlanywhere
"==================================================================================
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" hi User1 guifg=#eea040 guibg=#2222a2
" hi User2 guifg=#dd3333 guibg=#222262
" hi User3 guifg=#ff66ff guibg=#225222
" hi User4 guifg=#a0ee40 guibg=#822222
" hi User5 guifg=#eeee40 guibg=#522222
"==================================================================================
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

let g:currentmode={
    \ 'n'      : 'N ',
    \ 'no'     : 'N·Operator Pending ',
    \ 'v'      : 'V ',
    \ 'V'      : 'V·Line ',
    \ '\<C-V>' : 'V·Block ',
    \ 's'      : 'Select ',
    \ 'S'      : 'S·Line ',
    \ '\<C-S>' : 'S·Block ',
    \ 'i'      : 'I ',
    \ 'R'      : 'R ',
    \ 'Rv'     : 'V·Replace ',
    \ 'c'      : 'Command ',
    \ 'cv'     : 'Vim Ex ',
    \ 'ce'     : 'Ex ',
    \ 'r'      : 'Prompt ',
    \ 'rm'     : 'More ',
    \ 'r?'     : 'Confirm ',
    \ '!'      : 'Shell ',
    \ 't'      : 'Terminal '
    \}


function! ChangeStatuslineColor()
        if (mode() =~# '\v(n|no)')
                exe 'hi! StatusLine ctermfg=008 guibg=#2fda00'
        elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
                exe 'hi! StatusLine ctermfg=005 guibg=#ff0ad8'
        elseif (mode() ==# 'i')
                exe 'hi! StatusLine ctermfg=004 guibg=#0fdad8'
        else
                exe 'hi! StatusLine ctermfg=006 guibg=#ffda00'
        endif
        return ''
endfunction
"===============================================================================================================
" guifg=#ff0ad8 
" guifg=#0fdad8 
" guifg=#ffda00 
"===============================================================================================================
function! GitInfo()
        let git = fugitive#head()
        if git != ''
                return ' '.fugitive#head()
        else
                return ''
endfunction
"===============================================================================================================
set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%8*\ [%n]                                " buffernr
set statusline+=%8*\ %{GitInfo()}                        " Git Branch name
"==================================================================================
        "Plug 'vim-scripts/tagselect'
        "Plug 'xolox/vim-easytags'
"==================================================================================


"===============================================================================================================

        " set listchars=eol:$
        set showbreak=↪\ 
        set listchars=eol:↲
        set listchars=tab:▸\
"===============================================================================================================

        "---------------------------------------------------------------------------------- 
        Plug 'mengelbrecht/lightline-bufferline'
        autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
        let g:lightline#bufferline#show_number  = 1
        let g:lightline#bufferline#shorten_path = 0
        let g:lightline#bufferline#unnamed      = '[No Name]'

        let g:lightline                  = {}
        let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
        let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
        let g:lightline.component_type   = {'buffers': 'tabsel'}
"===============================================================================
function! MyJumpTo()
    let filetype=&ft
    if filetype == "python"
        exe ":call jedi#goto_definitions()"
    else
        :exe "norm \<C-]>"
    endif
endfunction
"===============================================================================
nnoremap <Leader>5 :call MyJumpTo()<CR>
"===============================================================================================================
" remove parentheses around function call arguments
function! Format_funcall_drop_parens() abort
  let cursor = winsaveview()
  execute 'normal '. s:delete_surround .'('
  execute 'normal! i '
  call winrestview(cursor)
endfunction

" convert from double quotes to single quotes
function! Format_quotes_singularize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."\"'"
  call winrestview(cursor)
endfunction

" convert from single quotes to double quotes
function! Format_quotes_pluralize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."'\""
  call winrestview(cursor)
endfunction
"===============================================================================================================
" remove parentheses around function call arguments
function! Format_funcall_drop_parens() abort
  let cursor = winsaveview()
  execute 'normal '. s:delete_surround .'('
  execute 'normal! i '
  call winrestview(cursor)
endfunction

" convert from double quotes to single quotes
function! Format_quotes_singularize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."\"'"
  call winrestview(cursor)
endfunction

" convert from single quotes to double quotes
function! Format_quotes_pluralize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."'\""
  call winrestview(cursor)
endfunction
"===Vista===================================================================================================

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

let s:save_cpo = &cpo
set cpo&vim

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
let g:which_key_sep = get(g:, 'which_key_sep', '→')
let g:which_key_hspace = get(g:, 'which_key_hspace', 5)
let g:which_key_flatten = get(g:, 'which_key_flatten', 1)
let g:which_key_timeout = get(g:, 'which_key_timeout', &timeoutlen)
let g:which_key_max_size = get(g:, 'which_key_max_size', 0)
let g:which_key_vertical = get(g:, 'which_key_vertical', 0)
let g:which_key_position = get(g:, 'which_key_position', 'botright')
let g:which_key_sort_horizontal = get(g:, 'which_key_sort_horizontal', 0)
let g:which_key_run_map_on_popup = get(g:, 'which_key_run_map_on_popup', 1)
let g:which_key_align_by_seperator = get(g:, 'which_key_align_by_seperator', 1)
let g:which_key_ignore_invalid_key = get(g:, 'which_key_ignore_invalid_key', 1)
let g:which_key_default_group_name = get(g:, 'which_key_default_group_name', '+prefix')
let g:which_key_use_floating_win = (exists('*nvim_open_win') || exists('*popup_create')) && get(g:, 'which_key_use_floating_win', 1)
let g:WhichKeyFormatFunc = get(g:, 'WhichKeyFormatFunc', function('which_key#util#format'))

command! -bang -nargs=1 WhichKey call which_key#start(0, <bang>0, <args>)
command! -bang -nargs=1 -range WhichKeyVisual call which_key#start(1, <bang>0, <args>)

let &cpo = s:save_cpo
unlet s:save_cpo

"==================================================================================

" Define prefix dictionary
let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_map.f = { 'name' : '+file' }

nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
\ 'name' : '+open',
\ 'q' : 'open-quickfix'    ,
\ 'l' : 'open-locationlist',
\ }

" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.) and descriptions for existing mappings
let g:which_key_map.b = {
\ 'name' : '+buffer' ,
\ '1' : ['b1'        , 'buffer 1']        ,
\ '2' : ['b2'        , 'buffer 2']        ,
\ 'd' : ['bd'        , 'delete-buffer']   ,
\ 'f' : ['bfirst'    , 'first-buffer']    ,
\ 'h' : ['Startify'  , 'home-buffer']     ,
\ 'l' : ['blast'     , 'last-buffer']     ,
\ 'n' : ['bnext'     , 'next-buffer']     ,
\ 'p' : ['bprevious' , 'previous-buffer'] ,
\ '?' : ['Buffers'   , 'fzf-buffer']      ,
\ }

let g:which_key_map.l = {
\ 'name' : '+lsp',
\ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
\ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
\ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
\ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
\ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
\ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
        \ },
\ }
"----------------------------------------------------------------------------------
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
"++AAAx++}}} 

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"==================================================================================
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1
" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0
" enable custom folder/directory glyph exact matching
" (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'
" change the default dictionary mappings for file extension matches
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" change the default dictionary mappings for exact file node matches
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" add or override pattern matches for filetypes
" these take precedence over the file extensions
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
" add or override individual additional filetypes
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
"++AAAx++}}} 
"==================================================================================

"==================================================================================

"==================================================================================
"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
command! ZDeviList call ZDeviList()
command! ZDevi call ZDeviList()
" Files + devicons
function! ZDeviList()
        function! s:files()
                let files = split(system($FZF_DEFAULT_COMMAND), '\n')
                return s:prepend_icon(files)
        endfunction

        function! s:prepend_icon(candidates)
                let result = []
                for candidate in a:candidates
                        let filename = fnamemodify(candidate, ':p:t')
                        let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
                        call add(result, printf("%s %s", icon, candidate))
                endfor

                return result
        endfunction

        function! s:edit_file(item)
                let parts = split(a:item, ' ')
                let file_path = get(parts, 1, '')
                execute 'silent e' file_path
        endfunction

        call fzf#run({
                                \ 'source': <sid>files(),
                                \ 'sink':   function('s:edit_file'),
                                \ 'options': '-m -x +s',
                                \ 'down':    '40%' })
endfunction
"++AAAx++}}} 

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------TODO------------------------------------------------------------ 
        Plug 'vim-scripts/utl.vim'
        " [ open with \o ] {{{ open: URL, preview doc: markdown, TeX, etc.
        " Utl {{{ :Utl to open links, files.
        " nnoremap <leader>o :Utl<CR>
        " nnoremap ;o :Utl<CR>
        " Syntax: no need to escape 'spaces'.
        " use '' contain filename(url) strings. e.g. = ":silent !evince '%p' &"
        " <url:#r=here> id=here | <url:tn=some text> <url:filename.txt#line=-10>
        " <url:fo obar.pdf> | <url:.t/emp> folder |
        " <url:../plugin/utl.vim#tn=text>
        " <url:file:///home/stb/.vim/plugin/utl.vim>
        " <url:http://www.google.ocm> www.vm.oigr
        " <url:man:ls> || <urlc:onfig:>
        " download from [1] || [1] www.google.com
        " It brings the benefits of URL-based hyperlinking to plain text,
        " extending the URL syntax for plain text needs.
        let g:utl_opt_verbose=0 " 0=no (default), 1=yes
        let g:utl_opt_highlight_urls='yes' " 'yes' is default / 'no'

        " HTTP
        " %u, %p for Unix, %P for Windows.
        if !exists("g:utl_cfg_hdl_scm_http_system")
                if has("unix")
                        " let g:utl_cfg_hdl_scm_http_system = 'silent !xdg-open %u' " for ubuntu system
                        "let g:utl_cfg_hdl_scm_http_system = "!xterm -e lynx '%u#%f'" "	console browser
                        " if browser is GUI, don't use "silent" => "silent !browser", will crash terminal vim screen
                        " Check if an instance is already running, and if yes use it, else start firefox.
                        " let g:utl_cfg_hdl_scm_http_system = "silent !firefox -remote 'ping()' && firefox -remote 'openURL( %u )' || firefox '%u#%f' &"
                        " use lightweight browser like : luakit, jumanji, urbl etc.
                        let g:utl_cfg_hdl_scm_http_system = "!firefox '%u#%f' &"
                endif
                let g:utl_cfg_hdl_scm_http=g:utl_cfg_hdl_scm_http_system
        endif
        " http wget:
        let g:utl_cfg_hdl_scm_http__wget="call Utl_if_hdl_scm_http__wget('%u')"
        " scp
        if !exists("g:utl_cfg_hdl_scm_scp")
                let g:utl_cfg_hdl_scm_scp = "silent %d %u"
        endif
        " mailto:
        if !exists("g:utl_cfg_hdl_scm_mailto")
                let g:utl_cfg_hdl_scm_mailto = "!urxvt -e mutt '%u'"
        endif
        " generic
        if !exists("g:utl_cfg_hdl_mt_generic")
                if has("unix")
                        if $WINDOWMANAGER =~? 'kde'
                                let g:utl_cfg_hdl_mt_generic = 'silent !konqueror "%p" &'
                        else
                                let g:utl_cfg_hdl_mt_generic = 'silent !urxvt -e sh -c ranger "%p"'
                        endif
                endif
        endif
        " directory
        let g:utl_cfg_hdl_mt_text_directory__cmd = ':!urxvt -e sh -c ranger "%p"'
        let g:utl_cfg_hdl_mt_text_directory__vim = 'VIM'   " Vim builtin file explorer
        " let g:utl_cfg_hdl_mt_text_directory='VIM'
        " let g:utl_cfg_hdl_mt_text_directory = ':silent !nautilus "%p" &'
        let g:utl_cfg_hdl_mt_text_directory=g:utl_cfg_hdl_mt_text_directory__cmd
        " application/pdf
        let g:utl_cfg_hdl_mt_application_pdf = ":silent !evince '%p' &"
        " TODO application/djvu
        let g:utl_cfg_hdl_mt_application_djvu = ":silent !evince '%p' &"
        " application/chm
        " let g:utl_cfg_hdl_mt_application_chm = ":silent !chmsee '%p' &"
        " application/doc
        let g:utl_cfg_hdl_mt_application_msword = ":silent !libreoffice '%p' &"
        " }}}

        " - Open any URLs found in text with appropriate handler
        " - Open files of any media type from within Vim (.pdf, .jpg, etc)
        " - Small helper utilities via embedded Vimscript
        " - Project management
        " - Organizing ideas
        " - Commenting source code
        " - Personal Wiki
        " - Editing HTML
        " - Bookmark files, directories, URLs
        "--------------------------------------------------------------------------------- 
"++AAAx++}}} 

        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "Plug 'vim-airline/vim-airline'
        "Plug 'vim-airline/vim-airline-themes'
        "" Plug 'ffanzhang/vim-airline-stopwatch'
        "Plug 'Zuckonit/vim-airline-tomato'
        "let g:airline_theme='cool'
        "let g:tomato#interval = 60 * 20
        "let g:tomato#show_clock = 1
        "let g:tomato#remind = "☻"
        "let g:tomato#restinfo = "☺"
        "let g:tomato#show_clock = 1
        "let g:tomato#show_count_down = 1

        "----------------------------------------------------------------------------------
        "        let g:airline_theme='cool'
        "        set showmode                "-Display the current mode
        "        set showcmd                 "-Show partial commands in status line
        "        "--------------------------------------------------------------------------
        "        let g:airline_section_c = '%{strftime("%b %d %X")}'
        "        let g:airline#extensions#tabline#enabled = 1
        "        let g:airline#extensions#tabline#buffer_min_count = 1
        "        "-----------------------------------------------------------
        "        let g:airline#extensions#branch#enabled = 1
        "        "-----------------------------------------------------------
        "        let g:airline#extensions#tagbar#enabled=1
        "        let g:airline#extensions#hunks#enabled=1
        "        let g:airline#extensions#branch#displayed_head_limit=12
        "        let g:airline#extensions#branch#sha1_len=8
        "        let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']
        "        let g:airline#extensions#taboo#enabled=1
        "        let g:airline#extensions#ale#enabled=1
                        "-----------------------------------------------------------
                        " let g:airline_powerline_fonts=1
                        " let g:airline_left_sep='▙'
                        " let g:airline_right_sep='▟'
                        "-----------------------------------------------------------
                        " if !exists('g:airline_symbols')
                        "         let g:airline_symbols = {}
                        " endif
        "----------------------------------------------------------------------------------
        hi statusline ctermbg=10 ctermfg=Black  cterm=bold guibg=custGreen
        hi StatusLineNC  ctermbg=5 ctermfg=0 cterm=NONE

        "===COOL-BUNT======================================================================
        " Plug 'vim-airline/vim-airline'
        " Plug 'vim-airline/vim-airline-themes'
        " set laststatus=2
        " let g:airline_powerline_fonts = 1
        " let g:airline#extensions#ale#enabled = 1
        " let g:airline_theme = 'cool'
        " let g:airline_section_c = '%{strftime("%Y %b %d %X")}'
        " let g:airline#extensions#tabline#enabled = 1
        " let g:airline#extensions#tabline#buffer_min_count = 1
        " let g:airline#extensions#hunks#enabled=1
        "----------------------------------------------------------------------------------
        " ?COC?
        " let g:airline#extensions#coc#enabled = 1
        " let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
        " let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        " Plug 'itchyny/lightline.vim'
        " Plug 'yarisgutierrez/ayu-lightline'
        " " \ 'colorscheme': 'molokai',
        " let g:lightline = {
        "                         \ 'active': {
        "                         \   'left': [ [ 'mode', 'paste' ],
        "                         \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        "                         \ },
        "                         \ 'component_function': {
        "                         \   'gitbranch': 'fugitive#head'
        "                         \ },
        "                         \ }
        "----------------------------------------------------------------------------------

        "--DeoLSP--------------------------------------------------------------------------
        " Plug 'itchyny/lightline.vim'
        " Plug 'yarisgutierrez/ayu-lightline'
        " let g:lightline = {
        " \ 'colorscheme': 'wombat',
        " \ 'active': {
        " \   'left': [ [ 'mode', 'paste' ],
        " \             [ 'readonly', 'filename', 'modified', 'method' ] ]
        " \ },
        " \ 'component_function': {
        " \   'method': 'NearestMethodOrFunction'
        " \ },
        " \ }
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        " abc,def,ghi
        " the, most , short , long , big , bigly
        " a,b,c
        "----------------------------------------------------------------------------------
        runtime vimrc.d/paths.vim
        " *Must* be early
        runtime vimrc.d/disabled.vim
        runtime vimrc.d/dein.vim
        runtime vimrc.d/settings.vim
        runtime vimrc.d/syntax.vim
        runtime vimrc.d/misc.vim
        runtime vimrc.d/maps.vim
        if has('patch-7.4.1821')
                runtime vimrc.d/packages.vim
        else
                " There may be other things in packages.vim, but this is *the* thing
                " I can't do without.
                if !exists('*EditExisting')
                        runtime macros/editexisting.vim
                endif
        endif
        runtime vimrc.d/localcfg.vim
