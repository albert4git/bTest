This is a mirror of http://www.vim.org/scripts/script.php?script_id=614

The intention of this project is to provide a C-reference manual that can
be viewed with Vim and accessed from within Vim. 
The C-reference is a reference, it is NOT a tutorial or a guide on how
to write C-programs. It is a quick reference to the functions and syntax 
of the standard C language.

There are several ways to specify a word CRefVim should search for in order
to view help:

  <Leader>cr normal mode:  get help for word under cursor
                           Memory aid cr: (c)-(r)eference
  <Leader>cr visual mode:  get help for visually selected text
                           Memory aid cr: (c)-(r)eference
  <Leader>cw:              prompt for word CRefVim should search for
                           Memory aid cw: (c)-reference (w)hat
  <Leader>cc:              jump to table of contents of the C-reference manual
                           Memory aid cc: (c)-reference (c)ontents

Note: by default <Leader> is \, e.g. press \cr to invoke C-reference

Note: The best way to search for an operator (++, --, %, ...) is to visually
select it and press <Leader>cr.

To get help do :help crefvimdoc
To show the C-reference manual do :help crefvim

  -- Comments -----------------------------------------------------------

  [n]\cl       end-of-line comment                 (n,v,i)
  [n]\cj       adjust end-of-line comment(s)       (n,v,i)
     \cs       set end-of-line comment column      (n)
  [n]\c*       code -> comment /* */               (n,v)
  [n]\cc       code -> comment //                  (n,v)
  [n]\co       comment -> code                     (n,v)
     \cfr      frame comment                       (n,i)
     \cfu      function comment                    (n,i)
     \cme      method description                  (n,i)
     \ccl      class description                   (n,i)
     \cfdi     file description (implementation)   (n,i)
     \cfdh     file description (header)           (n,i)
     \ccs      C/C++-file section  (tab. compl.)   (n,i)
     \chs      H-file section      (tab. compl.)   (n,i)
     \ckc      keyword comment     (tab. compl.)   (n,i)
     \csc      special comment     (tab. compl.)   (n,i)
     \cd       date                                (n,v,i)
     \ct       date \& time                        (n,v,i)
  [n]\cx       toggle comments: C <--> C++         (n,v,i)

  -- Statements ---------------------------------------------------------

     \sd       do { } while                        (n,v,i)
     \sf       for                                 (n,i)
     \sfo      for { }                             (n,v,i)
     \si       if                                  (n,i)
     \sif      if { }                              (n,v,i)
     \sie      if else                             (n,v,i)
     \sife     if { } else { }                     (n,v,i)
     \se       else { }                            (n,v,i)
     \sw       while                               (n,i)
     \swh      while { }                           (n,v,i)
     \ss       switch                              (n,v,i)
     \sc       case                                (n,i)
     \s{ \sb   { }                                 (n,v,i)

  -- Preprocessor -------------------------------------------------------

     \ps       choose a standard library include   (n,i)
     \pc       choose a C99 include                (n,i)
     \p<       #include <>                         (n,i)
     \p"       #include ""                         (n,i)
     \pd       #define                             (n,i)
     \pu       #undef                              (n,i)
     \pif      #if  #endif                         (n,v,i)
     \pie      #if  #else #endif                   (n,v,i)
     \pid      #ifdef #else #endif                 (n,v,i)
     \pin      #ifndef #else #endif                (n,v,i)
     \pind     #ifndef #def #endif                 (n,v,i)
     \pi0      #if 0 #endif                        (n,v,i)
     \pr0      remove #if 0 #endif                 (n,i)
     \pe       #error                              (n,i)
     \pl       #line                               (n,i)
     \pp       #pragma                             (n,i)

  -- Idioms -------------------------------------------------------------

     \if       function                            (n,v,i)
     \isf      static function                     (n,v,i)
     \im       main()                              (n,v,i)
  [n]\i0       for( x=0; x<n; x+=1 )               (n,v,i)
  [n]\in       for( x=n-1; x>=0; x-=1 )            (n,v,i)
     \ie       enum   + typedef                    (n,i)
     \is       struct + typedef                    (n,i)
     \iu       union  + typedef                    (n,i)
     \ip       printf()                            (n,i)
     \isc      scanf()                             (n,i)
     \ica      p=calloc()                          (n,i)
     \ima      p=malloc()                          (n,i)
     \ire      p=realloc()                         (n,i)
     \isi      sizeof()                            (n,v,i)
     \ias      assert()                            (n,v)
     \ii       open input file                     (n,i)
     \io       open output file                    (n,i)
     \ifs      fscanf                              (n,i)
     \ifp      fprintf                             (n,i)

  -- Snippets -----------------------------------------------------------

     \nr       read code snippet                   (n,i)
     \nw       write code snippet                  (n,v,i)
     \ne       edit code snippet                   (n,i)
  [n]\nf       pick up function prototype          (n,v,i)
  [n]\np       pick up function prototype          (n,v,i)
  [n]\nm       pick up method prototype            (n,v,i)
     \ni       insert prototype(s)                 (n,i)
     \nc       clear  prototype(s)                 (n,i)
     \ns       show   prototype(s)                 (n,i)
     \ntl      edit local templates                (n,i)
     \ntg      edit global templates               (n,i)
     \ntr      rebuild templates                   (n,i)

  -- C++ ----------------------------------------------------------------

     \+co      cout  <<  << endl;                  (n,i)
     \+"       << ""                               (n,i)
     \+c       class                               (n,i)
     \+ps      #include <...> STL                  (n,i)
     \+pc      #include <c..> C                    (n,i)
     \+cn      class (using new)                   (n,i)
     \+ci      class implementation                (n,i)
     \+cni     class (using new) implementation    (n,i)
     \+mi      method implementation               (n,i)
     \+ai      accessor implementation             (n,i)

     \+tc      template class                      (n,i)
     \+tcn     template class (using new)          (n,i)
     \+tci     template class implementation       (n,i)
     \+tcni    template class (using new) impl.    (n,i)
     \+tmi     template method implementation      (n,i)
     \+tai     template accessor implementation    (n,i)

     \+tf      template function                   (n,i)
     \+ec      error class                         (n,i)
     \+tr      try ... catch                       (n,v,i)
     \+ca      catch                               (n,v,i)
     \+c.      catch(...)                          (n,v,i)

  -- Run ----------------------------------------------------------------

    \rc       save and compile                    (n,i)
    \rl       link                                (n,i)
    \rr       run                                 (n,i)
    \ra       set comand line arguments           (n,i)
    \rm       run make                            (n,i)
    \rmc      run 'make clean'                    (n,i)
    \rcm      choose makefile                     (n,i)
    \rme      executable to run                   (n,i)
    \rma      cmd. line arg. for make             (n,i)
    \rp       run splint                          (n,i)
    \rpa      cmd. line arg. for splint           (n,i)
    \rk       run CodeCheck (TM)                  (n,i)
    \rka      cmd. line arg. for CodeCheck (TM)   (n,i)
    \rd       run indent                          (n,v,i)
 [n]\rh       hardcopy buffer                     (n,v,i)
    \rs       show plugin settings                (n,i)
    \rx       set xterm size                      (n, only Linux/UNIX & GUI)
    \ro       change output destination           (n,i)

