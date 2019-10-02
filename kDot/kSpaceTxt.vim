let g:spacevim_plugin_bundle_dir = '~/.cache/vimfiles/'
" http://liuchengxu.org/space-vim-doc/tutorial/space-vim/

#==========================================================================================


#==========================================================================================
➜ l /usr/bin/clang                  
lrwxrwxrwx 25 root 16 Mai  2018 /usr/bin/clang -> ../lib/llvm-6.0/bin/clang
#==========================================================================================

sudo ln -s /usr/bin/clang-3.5 /usr/bin/clang
sudo ln -s /usr/bin/clang++-3.5 /usr/bin/clang++
#==========================================================================================


[[layers]]
  name = "lang#c"
  clang_executable = "/usr/bin/clang"
  [layer.clang_std]
    c = "c11"
    cpp = "c++1z"
    objc = "c11"
    objcpp = "c++1z"

  clang_executable = "/usr/bin/clang"
/usr/local/Cellar/llvm/7.0.0/bin/clangd

#==========================================================================================
Keybinding with space key

If you want keybinding with space key, configuration in ~/.SpaceVim.d/init.toml is the same.

In ~/.SpaceVim.d/autoload/myspacevim.vim :

function! myspacevim#before() abort
...
call SpaceVim#custom#SPCGroupName(['='], '+Formats')
call SpaceVim#custom#SPC('nnoremap', ['=', '='], 'gg=G``', 'format-the-buffer', 0)
...
endfunction

" vim: foldmethod=marker nospell

Please note, the 5th parameter of SpaceVim#custom#SPC is changed to 0 from 1 , because gg=G`` is not vim command, but key sequences.

It works in my environment. Please see screenshots below:
