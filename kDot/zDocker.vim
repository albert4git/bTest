docker pull spacevim/spacevim
docker run -it --rm spacevim/spacevim nvim

You can also load local config:

docker run -it -v ~/.SpaceVim.d:/home/spacevim/.SpaceVim.d --rm spacevim/spacevim nvim

+------------------------+    +---------------------------+    +-----------------------+
|                        |    |                           |    |                       |
|     Atom               |    |   coc.nvim                |    |                       |
|     Emacs              +--> |   LanguageClient-neovim   +--> |   clangd/ccls/cquery  |
|     Vim/Neovim         |    |   vim-lsp                 |    |                       |
|     Visual Studio Code |    |                           |    |                       |
|     Monaco Editor      |    |                           |    |                       |
+------------------------+    +---------------------------+    +-----------------------+
|                        |    |                           |    |                       |
|      Editor            | <--+  Editor Plugin            | <--+   Language Server     |
|                        |    |                           |    |                       |
|                        |    |                           |    |                       |
+------------------------+    +---------------------------+    +-----------------------+

git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls
cmake -GNinja -H. -BRelease -DCMAKE_CXX_COMPILER=clang++
cmake --build Release



