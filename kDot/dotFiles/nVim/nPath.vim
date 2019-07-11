" ------------------------------------------------------------------------------
" # Vimrc
" ------------------------------------------------------------------------------
" # This file sets up my basic vim environment.  Here I set a few defaults,
" # paths, and source the rest of the config files as necessary.  Most
" # of the config lives in plugins.vim and mappings.vim, with more
" # elaborate config in /local-config and /plugin-config.


echo $VIMRUNTIME


" ------------------------------------------------------------------------------
" # Defaults
" ------------------------------------------------------------------------------

" Vim 8 defaults
" For more info, see :help defaults.vim
unlet! skip_defaults_vim
silent! source $VIMRUNTIME/defaults.vim


" ------------------------------------------------------------------------------
" # Paths
" ------------------------------------------------------------------------------

" Parent dotfiles path
let g:dotfiles_path = $HOME . '/.dotfiles'

" Get path relative to vimrc
function! VimrcPath(path)
  return g:dotfiles_path . '/vim/' . a:path
endfunction

" Vimrc related paths for autocmds
let g:vimrc_related_paths = [
  \ $MYVIMRC,
  \ VimrcPath('vimrc'),
  \ VimrcPath('*.vim')
  \ ]


" ------------------------------------------------------------------------------
" # Sourcing
" ------------------------------------------------------------------------------

" Source plugins
call plug#begin('~/.vim/plugged')
  execute 'source ' . VimrcPath('plugins.vim')
call plug#end()

" Source mappings
execute 'source ' VimrcPath('mappings.vim')

" Setup function for dynamic sourcing
function! s:source_config_files_in(folder)
  for config_file in split(glob(VimrcPath(a:folder . '/*')), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

" Dynamic sourcing
call s:source_config_files_in('local-config')
call s:source_config_files_in('plugin-config')

" Auto sourcing
augroup autosource_vimrc
  autocmd!
  execute 'autocmd BufWritePost ' . join(g:vimrc_related_paths, ',') . ' nested source ' . $MYVIMRC
augroup END
