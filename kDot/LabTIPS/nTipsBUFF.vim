
VimTip	{{{1 133: Windo and Bufdo
http://vim.sourceforge.net/tip_view.php?tip_id=

i like bufdo and windo but i don't like the fact that the commands end in a
different window/buffer than from where i executed them.  these versions
(starts with a capital letter) will restore the current window or buffer when
the command's done.

for example, to turn on line numbers everywhere, i use :Windo set nu -- :windo
  set nu does the trick also but leaves me in a different window than where i
  started.

" just like windo but restores the current window when it's done
function! WinDo(command)
  let currwin=winnr()
  execute 'windo ' . a:command
  execute currwin . 'wincmd w'
endfunction
com! -nargs=+ -complete=command Windo call WinDo(<q-args>)

" just like bufdo but restores the current buffer when it's done
function! BufDo(command)
 let currBuff=bufnr("%")
 execute 'bufdo ' . a:command
 execute 'buffer ' . currBuff
endfunction
com! -nargs=+ -complete=command Bufdo call BufDo(<q-args>)


VimTip	{{{1 135: Vim buffer FAQ
http://vim.sourceforge.net/tip_view.php?tip_id=


Vim provides various commands and options to support editing multiple
buffers.  This document covers some of the questions asked about using
multiple buffers with Vim.  You can get more detailed information about Vim
buffer support using ":help windows.txt" in Vim.  You can also use the help
keywords mentioned in this document to read more about a particular command
or option.  To read more about a particular command or option use, ":help
<helpkeyword>" in Vim.

1. What is a Vim buffer?
   A buffer is a file loaded into memory for editing.  All opened files are
   associated with a buffer. There are also buffers not associated with any
   file.

   Help keyword(s): windows-intro

2. How do I identify a buffer?
   Vim buffers are identified using a name and a number.  The name of the
   buffer is the name of the file associated with that buffer.  The buffer
   number is a unique sequential number assigned by Vim.  This buffer
   number will not change in a single Vim session.

   Help keyword(s): :buffers

3. How do I create a buffer?
   When you open a file using any of the Vim commands, a buffer is
   automatically created.  For example, if you use the ":edit file" command
   to edit a file, a new buffer is automatically created.

4. How do I add a new buffer for a file to the buffer list without opening
   the file?
   You can add a new buffer for a file without opening it, using the
   ":badd" ex command.  For example,

       :badd f1.txt
       :badd f2.txt

   The above commands will add two new buffers for the files f1.txt and
   f2.txt to the buffer list.

   Help keyword(s): :badd

5. How do I get a list of all the existing buffers?
   You can get a list of all the existing buffers using the ":buffers" or
   ":ls" or ":files" ex command.  This list is called the 'buffer list'.

   In Vim 6.0, to display all the buffers including unlisted buffers, use
   the ":buffers!" or ":ls!" or ":files!" ex command.

   Help keyword(s): :buffers, :ls, :files

6. How do I delete a buffer?
   You can delete a buffer using the ":bdelete" ex command.  You can use
   either the buffer name or the buffer number to specify a buffer.  For
   example,

       :bdelete f1.txt
       :bdelete 4

   The above commands will delete the buffer named "f1.txt" and the fourth
   buffer in the buffer list.  The ":bdelete" command will remove the buffer
   from the buffer list.

   In Vim 6.0, when a buffer is deleted, the buffer becomes an
   unlisted-buffer and is no longer included in the buffer list.  But the
   buffer name and other information associated with the buffer is still
   remembered.  To completely delete the buffer, use the ":bwipeout" ex
   command.  This command will remove the buffer completely (i.e. the
   buffer will not become a unlisted buffer).

   Help keyword(s): :bdelete, :bwipeout

7. How do I delete multiple buffers?
   You can delete multiple buffers in several ways:

   1. Pass a range argument to the ":bdelete" command. For example,

           :3,5bdelete

      This command will delete the buffers 3, 4 and 5.
   2. Pass multiple buffer names to the ":bdelete" command.  For example,

           :bdelete buf1.txt buf2.c buf3.h

      This command will delete buf1.txt, buf2.c and buf3.h buffers.  In
      this example, after typing ":bdelete buf", you can press <Ctrl-A> to
      expand all the buffer names starting with 'buf'.

   Help keyword(s): :bdelete, :bwipeout

8. How do I remove a buffer from a window?
   You can remove a buffer displayed in a window in several ways:

   1. Close the window or edit another buffer/file in that window.
   2. Use the ":bunload" ex command. This command will remove the buffer
      from the window and unload the buffer contents from memory.  The
      buffer will not be removed from the buffer list.

   Help keyword(s): :bunload

9. How do I edit an existing buffer from the buffer list?
   You can edit or jump to a buffer in the buffer list in several ways:

   1. Use the ":buffer" ex command passing the name of an existing buffer
      or the buffer number.  Note that buffer name completion can be used
      here by pressing the <Tab> key.
   2. You can enter the buffer number you want to jump/edit and press the
      Ctrl-^ key.
   3. Use the ":sbuffer" ex command passing the name of the buffer or the
      buffer number.  Vim will split open a new window and open the
      specified buffer in that window.
   4. You can enter the buffer number you want to jump/edit and press the
      Ctrl-W ^ or Ctrl-W Ctrl-^ keys.  This will open the specified buffer
      in a new window.

   Help keyword(s): :buffer, :sbuffer, CTRL-W_^, CTRL-^

10. How do I browse through all the available buffers?
    You can browse through the buffers in the buffer list in several ways:

    1. To jump to the first buffer in the buffer list, use the ":bfirst" or
       ":brewind" ex command.
    2. To jump to the first buffer in the buffer list in a new window, use
       the ":sbfirst" or ":sbrewind" ex command.
    3. To edit the next buffer in the buffer list, use the ":bnext" ex
       command.
    4. To open the next buffer in the buffer list in a new window, use the
       ":sbnext" ex command.
    5. To edit the previous buffer in the buffer list, use the ":bprevious"
       or ":bNext" ex command.
    6. To open the previous buffer in the buffer list in a new window, use
       the ":sbprevious" or ":sbNext" ex command.
    7. To open the last buffer in the buffer list, use the ":blast" ex
       command.
    8. To open the last buffer in the buffer list in a new window, use the
       ":sblast" ex command.

    Help keyword(s): :bfirst, :brewind, :sbfirst, :sbrewind, :bnext,
                     :sbnext, :bprevious, :bNext, :sbprevious, :sbNext,
                     :blast, :sblast

11. How do I open all the buffers in the buffer list?
    You can open all the buffers present in the buffer list using the
    ":ball" or ":sball" ex commands.

    Help keyword(s): :ball, :sball

12. How do I open all the loaded buffers?
    You can open all the loaded buffers in the buffer list using the
    ":unhide" or ":sunhide" ex commands.  Each buffer will be loaded in a
    separate new window.

    Help keyword(s): :unhide, :sunhide

13. How do I open the next modified buffer?
    You can open the next or a specific modified buffer using the
    ":bmodified" ex command.  You can open the next or a specific modified
    buffer in a new window using the ":sbmodified" ex command.

    Help keyword(s): :bmodified, :sbmodified

14. I am using the GUI version of Vim (gvim), is there a simpler way for
    using the buffers instead of the ex commands?
    Yes.  In the GUI version of Vim, you can use the 'Buffers' menu, which
    simplifies the use of buffers.  All the buffers in the buffer list are
    listed in this menu.  You can select a buffer name from this menu to
    edit the buffer.  You can also delete a buffer or browse the buffer
    list.

    Help keyword(s): buffers-menu

15. Is there a Vim script that simplifies using buffers with Vim?
    Yes.  You can use the bufexplorer.vim script to simplify the process of
    using buffers.  You can download the bufexplorer script from:

        http://lanzarotta.tripod.com/vim.html

16. Is it possible to save and restore the buffer list across Vim sessions?
    Yes.  To save and restore the buffer list across Vim session, include
    the '%' flag in the 'viminfo' option.  Note that if Vim is invoked with
    a filename argument, then the buffer list will not be restored from the
    last session.  To use buffer lists across sessions, invoke Vim without
    passing filename arguments.

    Help keyword(s): 'viminfo', viminfo

17. How do I remove all the entries from the buffer list?
    You can remove all the entries in the buffer list by starting Vim with
    a file argument.  You can also manually remove all the buffers using
    the ":bdelete" ex command.

18. What is a hidden buffer?
    A hidden buffer is a buffer with some unsaved modifications and is not
    displayed in a window.  Hidden buffers are useful, if you want to edit
    multiple buffers without saving the modifications made to a buffer
    while loading other buffers.

    Help keyword(s): :buffer-!, 'hidden', hidden-buffer, buffer-hidden

19. How do I load buffers in a window, which currently has a buffer with
    unsaved modifications?
    By setting the option 'hidden', you can load buffers in a window that
    currently has a modified buffer.  Vim will remember your modifications
    to the buffer.  When you quit Vim, you will be asked to save the
    modified buffers.  It is important to note that, if you have the
    'hidden' option set, and you quit Vim forcibly, for example using
    ":quit!", then you will lose all your modifications to the hidden
    buffers.

    Help keyword(s): 'hidden'

20. Is it possible to unload or delete a buffer when it becomes hidden?
    The following works only in Vim 6.0 and above. By setting the
    'bufhidden' option to either 'hide' or 'unload' or 'delete', you can
    control what happens to a buffer when it becomes hidden.  When
    'bufhidden' is set to 'delete', the buffer is deleted when it becomes
    hidden. When 'bufhidden' is set to 'unload', the buffer is unloaded
    when it becomes hidden.  When 'bufhidden' is set to 'hide', the buffer
    is hidden.

    Help keyword(s): 'bufhidden'

21. How do I execute a command on all the buffers in the buffer list?
    In Vim 6.0, you can use the ":bufdo" ex command to execute an ex
    command on all the buffers in the buffer list.

    Help keyword(s): :bufdo

22. When I open an existing buffer from the buffer list, if the buffer is
    already displayed in one of the existing windows, I want Vim to jump to
    that window instead of creating a new window for this buffer.  How do I
    do this?
    When opening a buffer using one of the split open buffer commands
    (:sbuffer, :sbnext), Vim will open the specified buffer in a new
    window.  If the buffer is already opened in one of the existing
    windows, then you will have two windows containing the same buffer.
    You can change this behavior by setting the 'switchbuf' option to
    'useopen'.  With this setting, if a buffer is already opened in one of
    the windows, Vim will jump to that window, instead of creating a new
    window.

    Help keyword(s): 'switchbuf'

23. What information is stored as part of a buffer?
    Every buffer in the buffer list contains information about the last
    cursor position, marks, jump list, etc.

24. What is the difference between deleting a buffer and unloading a
    buffer?
    When a buffer is unloaded, it is not removed from the buffer list.
    Only the file contents associated with the buffer are removed from
    memory.  When a buffer is deleted, it is unloaded and removed from the
    buffer list.  In Vim 6, a deleted buffer becomes an 'unlisted' buffer.

    Help keyword(s): :bunload, :bdelete, :bwipeout, unlisted-buffer

25. Is it possible to configure Vim, by setting some option, to re-use the
    number of a deleted buffer for a new buffer?
    No.  Vim will not re-use the buffer number of a deleted buffer for a
    new buffer.  Vim will always assign the next sequential number for a
    new buffer.  The buffer number assignment is implemented this way, so
    that you can always jump to a buffer using the same buffer number.  One
    method to achieve buffer number reordering is to restart Vim.  If you
    restart Vim, it will re-assign numbers sequentially to all the buffers
    in the buffer list (assuming you have properly set 'viminfo' to save
    and restore the buffer list across vim sessions).

    Help keyword(s): :buffers

26. What options do I need to set for a scratch (temporary) buffer?
    The following works only in Vim 6.0 and above.  You can set the the
    following options to create a scratch (temporary) buffer:

        :set buftype=nofile
        :set bufhidden=hide
        :setlocal noswapfile

    This will create a buffer which is not associated with a file, which
    does not have a associated swap file and will be hidden when removed
    from a window.

    Help keyword(s): special-buffers, 'buftype'

27. How do I prevent a buffer from being added to the buffer list?
    The following works only in Vim 6.0 and above. You can prevent a buffer
    from being added to the buffer list by resetting the 'buflisted'
    option.

        :set nobuflisted

    Help keyword(s): 'buflisted'

28. How do I determine whether a buffer is modified or not?
    There are several ways to find out whether a buffer is modified or not.
    The simplest way is to look at the status line or the title bar.  If
    the displayed string contains a '+' character, then the buffer is
    modified.  Another way is to check whether the 'modified' option is set
    or not.  If 'modified' is set, then the buffer is modified.  To check
    the value of modified, use

        :set modified?

    You can also explicitly set the 'modified' option to mark the buffer as
    modified like this:

        :set modified

    Help keyword(s): 'modified'

29. How can I prevent modifications to a buffer?
    The following works only in Vim 6.0 and above. You can prevent any
    modification to a buffer by re-setting the 'modifiable' option.  To
    reset this option, use

        :set nomodifiable

    To again allow modifications to the buffer, use:

        :set modifiable

    Help keyword(s): 'modifiable'

30. How do I set options specific to the current buffer?
    The following works only in Vim 6.0 and above.  You can set Vim options
    which are specific to a buffer using the "setlocal" command.  For
    example,

        :setlocal textwidth=70

    This will set the 'textwidth' option to 70 only for the current buffer.
    All other buffers will have the default or the previous 'textwidth'
    value.

    Help keyword(s): 'setlocal', local-options

31. How do I define mappings specific to the current buffer?
    The following works only in Vim 6.0 and above.  You can define mappings
    specific to the current buffer by using the keyword "<buffer>" in the
    map command.  For example,

        :map <buffer>  ,w  /[.,;]<CR>

    Help keyword(s): :map-local

32. How do I define abbreviations specific to the current buffer?
    The following works only in Vim 6.0 and above.  You can define
    abbreviations specific to the current buffer by using the keyword
    "<buffer>" in the :abbreviate command.  For example,

        :abb <buffer> FF  for (i = 0; i < ; ++i)

    Help keyword(s): :abbreviate-local

