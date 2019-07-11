"-AAA9--BookMarks------------------------------------------------------------------------------------------{{{
        "----------------------------------------------------------------------------------
        " dmx          Remove mark 'x' where x is a-zA-Z
        " m,           Place the next available mark
        " m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
        " m-           Delete all marks from the current line
        " m<Space>     Delete all marks from the current buffer
        " ]`           Jump to next mark
        " [`           Jump to prev mark
        " ]'           Jump to start of next line containing a mark
        " ['           Jump to start of prev line containing a mark
        " `]           Jump by alphabetical order to next mark
        " `[           Jump by alphabetical order to prev mark
        " ']           Jump by alphabetical order to start of next line having a mark
        " '[           Jump by alphabetical order to start of prev line having a mark
        " m/           Open location list and display marks from current buffer
        "----------------------------------------------------------------------------------
        " m[0-9]       Toggle the corresponding marker !@#$%^&*()
        " m<S-[0-9]>   Remove all markers of the same type
        " ]-           Jump to next line having a marker of the same type
        " [-           Jump to prev line having a marker of the same type
        " ]=           Jump to next line having a marker of any type
        " [=           Jump to prev line having a marker of any type
        " m?           Open location list and display markers from current buffer
        " m<BS>        Remove all markers
        "----------------------------------------------------------------------------------
"-9BookMarks-}}}

        "------------------------------------------------------------------------------------------
        "! setlocal completefunc=thesaurus_query#auto_complete_integrate
        "! vnoremap  <Leader>c "ky:ThesaurusQueryReplace <C-r>k<CR>
        "! nnoremap  <Leader>c :ThesaurusQueryReplaceCurrentWord<CR>
        "! nnoremap <LocalLeader>c :ThesaurusQueryReplaceCurrentWord<CR>
        "! vnoremap <LocalLeader>c "ky:ThesaurusQueryReplace <C-r>k<CR>
        "------------------------------------------------------------------------------------------
        " If the cursor is on foo_bar_baz , then switching would produce "fooBarBaz"
        " and vice-versa. The logic is as follows:
        " inoremap <silent> <leader>t <ESC>:Trans<CR>
        " nnoremap <silent> <leader>t :Trans<CR>
        " vnoremap <silent> <leader>t :Trans<CR>
        " nnoremap <silent> <leader>td :TransSelectDirection<CR>
        " vnoremap <silent> <leader>td :TransSelectDirection<CR>
        "! sudo apt install translate-shell
        " set keywordprg=trans\ :en
        " Use <Shift-k> to view the translation of the word under the cursor.
        "------------------------------------------------------------------------------------------


        "---------------------------------------------------------
        "---This plugin map `gag` to do Ag search.
        " - `gagiw` to search the word
        " - `gagi'` to search the words inside single quotes.
        " - `gag` to search the selected text

       "---------NoAutoClose-YCM------------------------------------------------------------------- 
        "-Shortcut for closing tags, default is '>'
        " let g:closetag_shortcut = '>'
        " let g:closetag_filenames = '*.vim,*.html,*.xhtml,*.phtml'
        " let g:AutoClosePairs = "() {} \""
        " " add <angular brackets> and |pipes|
        " let g:AutoClosePairs_add = "<> |"
        " " don't close apostrophes
        " let g:AutoClosePairs_del = "'"
        " let g:AutoCloseProtectedRegions = ["Comment", "String", "Character"]
        "---------------------------------------------------------

        "------------------------------------------------------------------------------------------ 
        "This adds :G <pattern> command which runs "git grep <pattern>".
        fun! Git2GREP(...)
                let save = &grepprg
                set grepprg=git\ grep\ -n\ $*
                let s = 'grep'
                for i in a:000
                        let s = s . ' ' . i
                endfor
                exe s
                let &grepprg = save
        endfun
        command! -nargs=? GGR call Git2GREP(<f-args>)


if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
  augroup END
endif

#!/usr/bin/env bash

        "-???--------------------------------------------------------------------------------------
        Plug 'wesleyche/SrcExpl'
        Plug 'vim-scripts/tinykeymap'
        Plug 'nathanaelkane/vim-indent-guides'
        Plug 'skywind3000/vim-preview'
        Plug 'vim-scripts/vim-signature'
        Plug 'krisajenkins/vim-pipe'

        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'c9s/hypergit.vim'


        "-???--------------------------------------------------------------------------------------
        let g:project_use_nerdtree = 1
        set runtimepath+=~/.config/nvim/plugged/vim-project/
        call project#rc("~/git/aTest/dotFiles/nVim/")
        Project  'scratch'
        Project  'nVim'
        File     'nVim/ninitOkt18.vim'                 , 'vimrc'
        File     'nVim/nPlug.vim'                      , 'plugged'
        "------------------------------------------------------------------------------------------
        function! FT_Mako()
                setf html
                setlocal includeexpr=substitute(v:fname,'^/','','')
                setlocal indentexpr=
                setlocal indentkeys-={,}
                map <buffer> <C-F6>  :SwitchCodeAndTest<CR>
        endf
        "------------------------------------------------------------------------------------------
        augroup Mako_templ
                autocmd!
                autocmd BufRead,BufNewFile *.mako call FT_Mako()
        augroup END

        "Default templates directory is `.vim/templates` or (if you use pathogen) `.vim/bundle/vimplates/templates` you can change it by adding this line to your `.vimrc`:
        " let g:vimplates_templates_dirs = ['/path/to/templates', '/another/path/to/templates']
        " let g:vimplates_username (default: "John Doe")
        " let g:vimplates_email (default: "john.doe@nothing.com")
        " let g:vimplates_website (default: "http://nothing.com")
        " let g:vimplates_license (default: "GPL-3")


        let g:CtrlXA_Toggles = [
              \ ['true', 'false'], ['True', 'False'], ['TRUE', 'FALSE'],
              \ ['yes', 'no'], ['Yes', 'No'], ['YES', 'NO'],
              \ ['on', 'off'], ['On', 'Off'], ['ON', 'OFF'],
              \ ['up', 'down'], ['Up', 'Down'] ,['UP', 'DOWN'],
              \ ['set', 'unset'],
              \ ['is', 'isnot'] ,
              \ ['==', '!='] , ['<', '>'], ['<=', '>='], ['=~', '!~'],
              \ ['enable', 'disable'], ['Enable', 'Disable'],
              \ ['enabled', 'disabled'], ['Enabled', 'Disabled'],
              \ ['maximum', 'minimum'], ['Maximum', 'Minimum'],
              \ ['maximal', 'minimal'], ['Maximal', 'Minimal'],
              \ ['upper', 'lower'], ['Upper', 'Lower'],
              \ ['top', 'bottom'], ['Top', 'Bottom'],
              \ ['above', 'below'], ['Above', 'Below'],
              \ ['forward', 'backward'], ['Forward', 'Backward'],
              \ ['right', 'middle', 'left'], ['Right', 'Middle', 'Left'],
              \ ['next', 'previous'], ['Next', 'Previous'],
              \ ['first', 'last'], ['First', 'Last'],
              \ ['before', 'after'], ['Before', 'After'],
              \ ['more', 'less'], ['More', 'Less'],
              \ ['fast', 'slow'], ['Fast', 'Slow'],
              \ ]



if has("eval")
  let g:ale_sign_error = '☞ '
  let g:ale_sign_warning = '☞ '
  let g:ale_statusline_format = ['{%d}', '{%d}', '']

  " if I become annoyed about ALE showing errors for half-typed text, perhaps
  " I'll want to uncomment these:
  ""let g:ale_lint_on_save = 1
  ""let g:ale_lint_delay = 1000
  ""let g:ale_lint_on_text_changed = 0
endif



        " py-test-runner.vim                                            {{{2
        map             ,t              :CopyTestUnderCursor<cr>

        if has("user_commands")
        " :Co now expands to :CommandT, but I'm used to type it as a shortcut for
        " :CopyTestUnderCursor
        command! Co CopyTestUnderCursor
        endif

        " surround.vim (which I no longer use)                          {{{2
        " make it not clobber 's' in visual mode
        vmap <Leader>s <Plug>Vsurround
        vmap <Leader>S <Plug>VSurround

        " :Python3 and :Python2 to toggle Syntastic/flake8 mode         {{{2
        function! Flake8(exe, args, recheck_now)
          let g:ale_python_flake8_executable = a:exe
          let g:ale_python_flake8_options = a:args
          let g:syntastic_python_flake8_exe = a:exe . ' ' . a:args
          if a:recheck_now && exists('*SyntasticCheck')
            SyntasticCheck
          endif
          if a:recheck_now && exists('*ALELint')
            ALELint
          endif
        endf

        function! Python2(recheck_now)
          call Flake8('python2', '-m flake8', a:recheck_now)
          let g:coverage_script = 'coverage'
        endf
        function! Python3(recheck_now)
          call Flake8('python3', '-m flake8', a:recheck_now)
          let g:coverage_script = 'python3 -m coverage'
        endf
        command! -bar Python2 call Python2(1)
        command! -bar Python3 call Python3(1)


        " Jumping to lint errors with Ctrl-J/K                          {{{2
        nmap <silent>   <C-K>           <Plug>(ale_previous_wrap)
        nmap <silent>   <C-J>           <Plug>(ale_next_wrap)
        " <F4> = next error/grep match
        "" depends on plugin/quickloclist.vim
        map             <F4>            :FirstOrNextInList<CR>
        imap            <F4>            <C-O><F4>
        " <S-F4> = previous error/grep match
        map             <S-F4>          :PrevInList<CR>
        imap            <S-F4>          <C-O><S-F4>
        " <C-F4> = current error/grep match
        map             <C-F4>          :CurInList<CR>
        imap            <C-F4>          <C-O><C-F4>


        "------------------------------------------------------------------------------------------
        "-Plugin: insearch + insearch-fuzzy
        " map <Space>  <Plug>(incsearch-forward)
         map /        <Plug>(incsearch-forward)
        " map ?        <Plug>(incsearch-backward)
        " map g/       <Plug>(incsearch-stay)
        " map z<Space> <Plug>(incsearch-fuzzyspell-/)
        " map z/       <Plug>(incsearch-fuzzyspell-/)
        " map z?       <Plug>(incsearch-fuzzyspell-?)
        " map zg/      <Plug>(incsearch-fuzzyspell-stay)


        "???-:::-Execute VIM colon command under cursor with <⌘-e>
        "nnoremap <D-e> yy:<C-r>"<backspace><cr>

        "-Strip one layer of nesting
        "nnoremap <LocalLeader>o [{mzjV]}k<]}dd`zdd


        "------------------------------------------------------------------------------------------
        " inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
        " inoremap <expr> <C-e> neocomplete#cancel_popup()



        " function! s:unite_settings()
        "         let b:SuperTabDisabled=1
        "         imap <buffer> <C-j>   <Plug>(unite_select_next_line)
        "         imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
        "         imap <silent><buffer><expr> <C-x> unite#do_action('split')
        "         imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
        "         nmap <buffer> <ESC> <Plug>(unite_exit)
        " endfunction

        "---------1NEO-----------------------------------------------------------------------------
        "" Enable omni completion.
        " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


        augroup CtrlPDirMRU
                autocmd!
                autocmd FileType * if &modifiable | execute 'silent CtrlPBookmarkDirAdd %:p:h' | endif
        augroup END
        ""------------------------------------------------------------------------------------------
        "        nmap ra :<C-u>Ref alc<Space>
        "        nmap rp :<C-u>Unite ref/phpmanual<Space>
        "        nmap rr :<C-u>Unite renDoc18.vimf/refe<Space>
        "        nmap ri :<C-u>Unite ref/ri<Space>
        "        nmap rm :<C-u>Unite ref/man<Space>
        "        nmap rp :<C-u>Unite ref/pydoc<Space>
        ""------------------------------------------------------------------------------------------
        " :NeoSnippetClearMarkers       
        " :NeoSnippetSource [filename]
        " :NeoSnippetMakeCache
        " :NeoSnippetEdit


        "-----------------------------------------------------------
        if &term =~ "xterm\\|rxvt"
                "use an orange cursor in insert mode
                let &t_SI = "\<Esc>]12;orange\x7"
                "use a red cursor otherwise
                let &t_EI = "\<Esc>]12;cyan\x7"
                silent !echo -ne "\033]12;green\007"
                "reset cursor when vim exits
                autocmd! VimLeave * silent !echo -ne "\033]112\007"
                "use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
        endif


        "Hard-wrap paragraphs of text
        nnoremap <leader>qp gqip

        "Shortcut to fold tags with leader (usually \) + ft
        nnoremap <leader>ft Vatzf

        "Opens a vertical split and switches over (\v)
        nnoremap <leader>v <C-w>v<C-w>l


        "Set up an HTML5 template for all new .html files
        "autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

        "Map a change directory to the desktop - Mac specific
        nmap <leader>d :cd ~/Desktop<cr>:e.<cr>

        "Change zen coding plugin expansion key to shift + e
        " let g:user_zen_expandabbr_key = '<C-e>'


        "----------------------------------------------------------------------------------
        "http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
        " set completeopt=longest,menuone
        " inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
        " inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
        "                         \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
        " inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
        "                         \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
        "----------------------------------------------------------------------------------

        "Delete all buffers (via Derek Wyatt)
        nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<cr>


        " Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
        " if has("autocmd")
        "         augroup myvimrchooks
        "                 au!
        "                 autocmd bufwritepost .vimrc source ~/.vimrc
        "         augroup END
        " endif



        " Alphabetically sort CSS properties in file with :SortCSS
        :command! SortCSS :g#\({\n\)\@<=#.,/}/sort

        " Shortcut to opening a virtual split to right of current pane
        " Makes more sense than opening to the left

        nmap <leader>bv :bel vsp

        "-show matching brackets
        "set showmatch

        "-print empty <a> tag
        map! ;h <a href=""></a><ESC>5hi

"-"-"-Petrov-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"--"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-






        au! Cursorhold * exe 'match ShowMatches /\v%(%#\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(\n|[^\{\}])*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(\n|[^\{\}])*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*%#\})/'
        set ut=30


        "Use this vmap to enclose a block with fold markers:
        vmap <M-z> mz:<esc>'<O// {{{<esc>'>o// }}}<esc>`z?{{{<cr>A<space>
        vmap <M-1> mz:<esc>'<O {{{<esc>'>o }}}<esc>`z?{{{<cr>A<space>



        " put the cursor over a perl module name and try backslash-pd to see perldoc
        :nmap <Leader>pd :e `perldoc -ml <cword>`<CR>

        "----------------------------------------------------------------------------------
        function! MakeSession()
            let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
            if (filewritable(b:sessiondir) != 2)
                exe 'silent !mkdir -p ' b:sessiondir
                redraw!
            endif
            let b:filename = b:sessiondir . '/session.vim'
            exe "mksession! " . b:filename
        endfunction

        function! LoadSession()
            let b:sessiondir  = $HOME . "/.vim/sessions" . getcwd()
            let b:sessionfile = b:sessiondir . "/session.vim"
            if (filereadable(b:sessionfile))
                exe 'source ' b:sessionfile
            else
                echo "No session loaded."
            endif
        endfunction

        au VimEnter * :call LoadSession()
        au VimLeave * :call MakeSession()
        "----------------------------------------------------------------------------------

        function! QFixToggle(forced)
                if exists("g:qfix_win") && a:forced == 0
                        cclose
                        unlet g:qfix_win
                else
                        copen 10
                        let g:qfix_win = bufnr("$")
                endif
        endfunction
        command -bang -nargs=? QFix call QFixToggle(<bang>0)
        nmap <silent> \` :QFix<CR>
        "--------------------------------------------------------------------------------- 
        " set background=dark
        " hi SpecialKey    guifg=Blue
        " hi MoreMsg       guifg=Green
        " hi Visual        guifg=NONE guibg=NONE
        " hi Folded        ctermbg=4 guibg=Blue
        " hi FoldColumn    ctermbg=7
        " hi DiffAdd       guibg=Blue
        " hi DiffChange    guibg=Magenta
        " hi DiffDelete    guibg=Cyan
        " hi Normal        guifg=Gray guibg=Black
        " hi Cursor        guibg=White
        " hi lCursor       guibg=White
        " hi Comment       guifg=Cyan
        " hi Constant      guifg=Magenta
        " hi Special       guifg=Red
        " hi Identifier    guifg=Cyan
        " hi Statement     guifg=Yellow
        " hi PreProc       guifg=Blue
        " hi Type          guifg=Green
        " hi Underlined    guifg=Blue
        " hi Todo          guifg=Black
        "
        "--------------------------------------------------------------------------------- 
        " if {
        "         map             <S-F11>         :ShowHighlightGroup<CR>
        "         "-show-syntax-stack under cursor
        "         map             <C-F11>         :ShowSyntaxStack<CR>
        "    }

        hi VariableType ctermbg=LightYellow
        hi VariableType ctermfg=brown
        hi VarName ctermfg=darkblue

        "------------------------------------------------------------------------------------------------------
        " autocmd filetype cpp nnoremap <F7> :!g++ % -ggdb -o %:r <CR>
        " autocmd filetype cpp nnoremap <F7> :!g++ % -ggdb -o %:r && ./%:r <CR>
        " autocmd filetype cpp nnoremap <F7> :!g++ % -ggdb -o %:r && gdb -tui %:r <CR>
        "------------------------------------------------------------------------------------------------------


"-Java-{{{
        augroup ft_java
                au!
                au FileType java setlocal foldmethod=marker
                au FileType java setlocal foldmarker={,}
                au FileType java inoremap <c-n> <c-x><c-]>
        augroup END

        augroup ft_quickfix
                au!
                au Filetype qf setlocal colorcolumn=0 nolist nowrap tw=0
                " vimscript is a joke
                au Filetype qf nnoremap <buffer> <cr> :execute "normal! \<lt>cr>"<cr>
        augroup END

        augroup ft_vim
                au!
                au FileType vim setlocal foldmethod=marker keywordprg=:help
                au FileType help setlocal textwidth=78
                au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif

                au FileType vim vnoremap <localleader>S y:@"<CR>
                au FileType vim nnoremap <localleader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>

                au FileType vim inoremap <c-n> <c-x><c-n>
        augroup END

        augroup ft_fugitive
                au!
                au BufNewFile,BufRead .git/index setlocal nolist
        augroup END

        function! s:vimscript()
                setlocal tabstop=8 " number of space for tab
                setlocal shiftwidth=8 " width of auto indent
                au filetype vim highlight ColorColumn ctermbg=236
                setlocal expandtab
                autocmd FileType vim hi Normal ctermbg=234
                autocmd filetype vim highlight CursorLine ctermbg=0 term=bold cterm=bold
                autocmd filetype vim highlight CursorColumn ctermbg=Black
        endfunction

        augroup vimrc-vimscript
                autocmd!
                autocmd FileType vim call s:vimscript()
        augroup END
"-}}}

        function! TableCreator()
                let curline=getline('.')
                call inputsave()
                let cols = input('Enter number of columns: ')
                let caption = input('Caption: ')
                let centering = input('Fixed width? (y/n) :')
                call inputrestore()
                exe "normal a\\begin{table}[!h]\r\\caption{" . caption . "\\label{tab:}}\r\\begin{center}\r\\begin{tabular}{\e"
                let numcols = cols
                while cols > 0
                        if centering == 'y'
                                exe "normal ap{4cm}\e"
                        else
                                exe "normal ac\e"
                        endif
                        let cols = cols-1
                endwhile
                exe "normal a}\e"
                let cols = numcols - 1
                exe "normal a\r\r\r\e"
                exe "normal a\\end{tabular}\r\\end{center}\r\\end{table}\\ \\\\"
        endfunction
        map <F4> :call TableCreator()<CR>



"===================================================================================================
" Update revision info of current file
function! UpdateRevisionInfo()
  let b:revision_info = ""
  let b:repos_type = ""

  if expand("%") == ""
    " No existing file is loaded.
    return
  endif

  " lookup path, starts from directory of current file
  " searching up upward, until file system root.
  let l:cur_dir_and_up = expand("%:p:h") . ';'
  let l:repos_info_cmd = ""

  " Is this inside a mercurial repository?
  let l:root = finddir('.hg', l:cur_dir_and_up)
  if l:root != ""
    " this is an hg repos.
    let b:repos_type = "Mercurial"
    if !exists("g:hg_id_flag")
      let g:hg_id_flag = '-Bbint'
    endif
    let l:repos_info_cmd = "hg id " . g:hg_id_flag
  else
    let l:root = finddir('.git', l:cur_dir_and_up)
    if l:root != ""
      "  git repository
      let b:repos_type = "Git"
      let l:repos_info_cmd = "git branch"
    endif
  endif
  " inside repository
  if l:repos_info_cmd != ""
    " root of repository
    let l:repos_root = fnamemodify(l:root, ":p:h")
    " try to get revision info
    let l:info = system("cd " . l:repos_root . " && " . l:repos_info_cmd)
    if v:shell_error == 0
      " with return code 0, assuming nothing went wrong
      if b:repos_type ==# "Git"
        " git does not provide enough customization for output so we need to
        " remove first 2 chars manually, e.g, the '* ' part of '* master'
        let l:info = strpart(l:info, 2)
      endif
      let b:revision_info = substitute(l:info, '\n.*', '', 'g')
    endif
  endif
endfunction

command! UUpdateRevisionInfo call UpdateRevisionInfo()

