#===TMUX==================================================================================
#===FREE==================================================================================
#===WILLY=================================================================================


  <CF>      From `stage mode`: amend the staged changes into the previous
            commit, without modifying previous commit message.

  <CC>      From `commit mode`, commit all staged changes with commit flavor
            (`normal` or `amend`) with message in "Commit message" section.

  <CA>      From `stage mode` or `commit mode`: set commit mode in amend
            flavor, and display "Commit message" section with previous commit
            message.
            Commit will be meld with previous commit.

  <CU>      From `commit mode`: go back to stage mode (current commit message
            will be lost).

//FLAG
//FLAG
//FLAG

# USA

windows:
  - pdbA:
      layout: main-vertical
      panes:
        - CdInPdbA:
          - cd pdbA
          - nvim FindMax.py
        - SideZSH:
          - cd pdbA
          - zsh
  - nini:
      layout: main-vertical
      panes:
        - Ni:
          - nvim
        - ZSH:
          - zsh
  - One:
      layout: tiled
      panes:
        - BigBASH:
          - bash
  - io:
      layout: tiled
      panes:
        - ZSH1:
          - zsh
        - FISH2:
          - fish
        - SH3:
          - sh
        - BASH4:
          - bash



