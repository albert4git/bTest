
:Clap bcommits           List git commits for the current buffer.
                         Require `git`


                                                    *:Clap-blines*
:Clap blines             List Lines in the current buffer.


                                                    *:Clap-buffers*
:Clap buffers            List open buffers.


                                                    *:Clap-colors*
:Clap colors             List Colorschemes.
                         Support preview.


                                                    *:Clap-command*
:Clap command            List Command.


                                                    *:Clap-hist:*
                                                    *:Clap-command_history*
:Clap hist:              List Command history.
:Clap command_history


                                                    *:Clap-commits*
:Clap commits            List Git commits.
                         Require `git`


:Clap files              List Files.
                         Require `fd`/`rg`/`git`/`find`

                         The order of default finder executable used
                         for files is [ `fd`, `rg`, `git`, `find` ] .

                         Use `++finder` to specify another finder
                         executable for the files and pass the options
                         after, e.g., `:Clap files ++finder=rg --files` means
                         the actual command line used is `rg --files` .

                         If you have `fd` installed, `:Clap files` is equivalent to
                         `:Clap files ++finder=fd --type f` .

                         For the `fd` and `rg` finder, you can pass
                         `--hidden` to search the hidden files as well, i.e,
                         `:Clap files --hidden` .

                         The last argument can be a directory, i.e.,
                         `Clap files [DIR]` to search files under a
                         specific directory. By default clap will try to use
                         the git base directory or `getcwd()` . For example,
                         use `Clap files ..` to search files under the parent directory.


                                                     *:Clap-filetypes*
:Clap filetypes          List File types.


                                                     *:Clap-gfiles*
                                                     *:Clap-git_files*
:Clap gfiles             List Files managed by git.
:Clap git_files          Require `git`


                                                     *:Clap-git_diff_files*
:Clap git_diff_files     List Files managed by git and having uncommitted changes.
                         Require `git`

                                                     *:Clap-grep*
:Clap grep               Grep on the fly.
                         Require `rg`

                         Use `Clap grep ++query=<cword>` to grep
                         the word under cursor.

                         Use `Clap grep ++opt=[OPTION]` to pass extra options
                         from the command line which will be put after
                         `g:clap_provider_grep_opts`, e.g.,
                         `Clap grep ++opt=--no-ignore ++opt=--hidden` .

                         The last argument can be a directory, i.e.,
                         `Clap grep [DIR]` to start the grep job under a
                         specific directory. By default clap will try to use
                         the git base directory or `getcwd()` . For example,
                         use `Clap grep ..` to grep from the parent directory.


                                                      *:Clap-history*
:Clap history            List the open buffers and |v:oldfiles|.


                                                     *:Clap-jumps*
:Clap jumps              List Jumps
                         Support preview


                                                     *:Clap-lines*
:Clap lines              List the lines of the loaded buffers.


                                                     *:Clap-marks*
:Clap marks              List Marks
                         Support preview


                                                     *:Clap-registers*
:Clap registers          List Registers


                                                     *:Clap-tags*
:Clap tags               List Tags in the current buffer
                         Require `vista.vim`


                                                     *:Clap-windows*
:Clap windows            List Windows



