


        "--------------------------------------------------------------------------------- 
        "copy the current visual selection to ~/.vbuf
        "--------------------------------------------------------------------------------- 
        " If you're finding that 'zo' and 'zc' are hard to type or remember,
        " you could use <spacebar> and <backspace> to open and close folds:
        "--------------------------------------------------------------------------------- 

        " will reverse all the lines in a file. Useful for certain files like logs.
        ":g/^/m0
        ":silent bufdo tar -rvf archive.tar %:p
        "VimTip{{{1 792: Preloading registers
        let @m=":'a,'bs/"
        let @s=":%!sort -u"
        "---gf-in-split-------------
        map gw <Esc>:sp %<CR> gf
        "Help in help in help
        map <F3> "zyw:exe  "h ".@z.""<CR>
        "copy the current visual selection to ~/.vbuf
        vmap <A-c> :w !cat >> Tbuf<CR>
        " Control-] pop open a window and show the tag there.
        " nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

        "876: selecting blocks of paragraphs.
        :map <C-S-v> (V)


" 英 [yīng] (surname); England; English; a hero; brave; flower; leaf; petal
" 英国 [yīng guó] Britain; England; English
" 英文 [yīng wén] English (language)
" 英语 [yīng yǔ] English (language)

block block 
block block block block 
block block block block block block 
block block block block block block 


zbuf.vim
args
/home/red/git/bTest/kDot/zbuf.vim

zsh:1: permission denied: /home/red/git/bTest/kDot

zsh:1: permission denied: /home/red/git/bTest/kDot


zsh:1: permission denied: /home/red/git/bTest/kDot





