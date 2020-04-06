" Author:    Nour Sharabash
" Objective: Perfection

function TabLeft()
	let tab_num = tabpagenr() - 1
	if tab_num == 0
		execute 'tabm' tabpagenr('$') - 1
	else
		execute 'tabm' tab_num - 1
	endif
endfunction

function TabRight()
	let tab_num = tabpagenr() - 1
	let tab_num_last = tabpagenr('$') - 1
	if tab_num == tab_num_last
		execute 'tabm' 0
	else
		execute 'tabm' tab_num + 1
	endif
endfunction

set nolbr nowrap cul cuc nu ml sw=2 ts=2 noexpandtab autoindent smartindent cindent bg=dark nuw=4 wmh=1 wmw=1
set wh=1 ww=1
set termencoding=UTF-8
set notermbidi arabicshape
set list listchars=tab:~~,trail:~
set laststatus=2 statusline=\ \ \ %F\ %M%=[\ %l:%L:%c\ ]\ \ \
set mouse=nvicrh
set nomousef "automatically focus window on cursor hover
set mousem=popup_setpos
set foldcolumn=3
set autoread
set foldcolumn=0
set nofoldenable
set wmw=0 wmh=0
set ww=80 wh=1
set columns=96 lines=60
set guifont=vixus
set guioptions=aegitm

let g:showmarks_enable=0
let javaScript_fold=1

syntax on

filetype on
filetype plugin on
filetype indent on

map `[         :bprev<CR>
map `]         :bnext<CR>
map `l         :set norightleft<CR>
map `r         :set rightleft<CR>
map `a         :set arabicshape<CR>
map `d         :bdel<CR>
map `v         :source ~/.vimrc<CR>
map `wq        :wqall!<CR>
map `ww        :wall!<CR>
map `qq        :qall!<CR>
map <silent><C-S-PageDown> :execute TabRight()<CR>
map <silent><C-S-PageUp>   :execute TabLeft()<CR>

cmap qq<CR>    :qall!<CR>

nmap ww<Right> :wpopup_setposincmd l<CR>
nmap ww<Left>  :wincmd h<CR>
nmap ww<Up>    :wincmd k<CR>
nmap ww<Down>  :wincmd j<CR>

let g:miniBufExplVSplit=0
let g:miniBufExplMinSize=1
let g:miniBufExplMaxSize=1
let g:miniBufExplTabWrap=1
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=30
autocmd! BufRead,BufNewFile *.inc setfiletype php
autocmd! BufRead,BufNewFile *.mhtml setfiletype mason
autocmd! BufRead,BufNewFile *.mc setfiletype mason
autocmd! BufRead,BufNewFile *.mp setfiletype mason
autocmd! BufRead,BufNewFile *.mi setfiletype mason
autocmd! BufRead,BufNewFile *.mcss setfiletype mason
autocmd! BufRead,BufNewFile *.mjs setfiletype mason

au BufRead *.mjs :set filetype=mason
au BufRead *.inc :set filetype=php
au BufRead *.mhtml :set filetype=mason
au BufRead *.mc :set filetype=mason
au BufRead *.mp :set filetype=mason
au BufRead *.mi :set filetype=mason
au BufRead *.mcss :set filetype=mason

colorscheme nour2
