#! /bin/sh
#
# SPACESHIP.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



Virtualenv (venv)

   Variable Default Meaning
   SPACESHIP_VENV_SHOW true Show current Python virtualenv or not
   SPACESHIP_VENV_PREFIX $SPACESHIP_PROMPT_DEFAULT_PREFIX Prefix before
   the virtualenv section
   SPACESHIP_VENV_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix after the
   virtualenv section
   SPACESHIP_VENV_SYMBOL · Character to be shown before virtualenv
   SPACESHIP_VENV_GENERIC_NAMES (virtualenv venv .venv) If the virtualenv
   folder is in this array, than use its parent directory as its name
   instead
   SPACESHIP_VENV_COLOR blue Color of virtualenv environment section

Conda virtualenv (conda)

   Show activated conda virtual environment. Disable native conda prompt
   by conda config --set changeps1 False.
   Variable Default Meaning
   SPACESHIP_CONDA_SHOW true Show current Python conda virtualenv or not
   SPACESHIP_CONDA_PREFIX $SPACESHIP_PROMPT_DEFAULT_PREFIX Prefix before
   the conda virtualenv section
   SPACESHIP_CONDA_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix after
   the conda virtualenv section
   SPACESHIP_CONDA_SYMBOL 🅒· Character to be shown before conda virtualenv
   section
   SPACESHIP_CONDA_COLOR blue Color of conda virtualenv environment
   section
   SPACESHIP_CONDA_VERBOSE true Toggle to truncate environment names under
   custom prefix

Pyenv (pyenv)

   pyenv section is shown only in directories that contain
   requirements.txt, pyproject.toml or any other file with .py extension.
   Variable Default Meaning
   SPACESHIP_PYENV_SHOW true Show current Pyenv version or not
   SPACESHIP_PYENV_PREFIX $SPACESHIP_PROMPT_DEFAULT_PREFIX Prefix before
   the pyenv section
   SPACESHIP_PYENV_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix after
   the pyenv section
   SPACESHIP_PYENV_SYMBOL 🐍· Character to be shown before Pyenv version
   SPACESHIP_PYENV_COLOR yellow Color of Pyenv section

Execution time (exec_time)

   Execution time of the last command. Will be displayed if it exceeds the
   set threshold of time.
   Variable Default Meaning
   SPACESHIP_EXEC_TIME_SHOW true Show execution time
   SPACESHIP_EXEC_TIME_PREFIX took· Prefix before execution time section
   SPACESHIP_EXEC_TIME_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix
   after execution time section
   SPACESHIP_EXEC_TIME_COLOR yellow Color of execution time section
   SPACESHIP_EXEC_TIME_ELAPSED 2 The minimum number of seconds for showing
   execution time section

Battery (battery)

   By default, Battery section is shown only if battery level is below
   SPACESHIP_BATTERY_THRESHOLD (default: 10%).
   Variable Default Meaning
   SPACESHIP_BATTERY_SHOW true Show battery section or not (true, false, always or charged)
   SPACESHIP_BATTERY_PREFIX Prefix before battery section
   SPACESHIP_BATTERY_SUFFIX SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix after
   battery section
   SPACESHIP_BATTERY_SYMBOL_CHARGING ⇡ Character to be shown if battery is
   charging
   SPACESHIP_BATTERY_SYMBOL_DISCHARGING ⇣ Character to be shown if battery
   is discharging
   SPACESHIP_BATTERY_SYMBOL_FULL • Character to be shown if battery is
   full
   SPACESHIP_BATTERY_THRESHOLD 10 Battery level below which battery
   section will be shown

   SPACESHIP_BATTERY_SHOW defines when to show battery section. Here are
   possible values:
   SPACESHIP_BATTERY_SHOW Below threshold Above threshold Fully charged
   false                  Hidden          Hidden          Hidden
   always                 Shown           Shown           Shown
   true                   Shown           Hidden          Hidden
   charged                Shown           Hidden          Shown

Vi-mode (vi_mode)

   This section shows mode indicator only when Vi-mode is enabled.
   Variable Default Meaning
   SPACESHIP_VI_MODE_SHOW true Shown current Vi-mode or not
   SPACESHIP_VI_MODE_PREFIX Prefix before Vi-mode section
   SPACESHIP_VI_MODE_SUFFIX $SPACESHIP_PROMPT_DEFAULT_SUFFIX Suffix after
   Vi-mode section
   SPACESHIP_VI_MODE_INSERT [I] Text to be shown when in insert mode
   SPACESHIP_VI_MODE_NORMAL [N] Text to be shown when in normal mode
   SPACESHIP_VI_MODE_COLOR white Color of Vi-mode section

   You can temporarily enable or disable vi-mode with handy functions
   (just execute them in terminal as any other regular command):
           Function                            Meaning
   spaceship_vi_mode_enable  Enable vi-mode for current terminal session
   spaceship_vi_mode_disable Disable vi-mode for current terminal session

   Note: For oh-my-zsh users with vi-mode plugin enabled: Add export
   RPS1="%{$reset_color%}" before source $ZSH/oh-my-zsh.sh in .zshrc to
   disable default <<< NORMAL mode indicator in right prompt.

Jobs (jobs)

   This section show only when there are active jobs in the background.
   Variable Default Meaning
   SPACESHIP_JOBS_SHOW true Show background jobs indicator
   SPACESHIP_JOBS_PREFIX Prefix before the jobs indicator
   SPACESHIP_JOBS_SUFFIX Suffix after the jobs indicator
   SPACESHIP_JOBS_SYMBOL ✦ Character to be shown when jobs are hiding
   SPACESHIP_JOBS_COLOR blue Color of background jobs section
   SPACESHIP_JOBS_AMOUNT_PREFIX Prefix before the number of jobs (between
   jobs indicator and jobs amount)
   SPACESHIP_JOBS_AMOUNT_SUFFIX Suffix after the number of jobs
   SPACESHIP_JOBS_AMOUNT_THRESHOLD 1 Number of jobs after which job count
   will be shown

Exit code (exit_code)

   Disabled by default. Set SPACESHIP_EXIT_CODE_SHOW to true in your
   .zshrc, if you need to show exit code of last command.
            Variable          Default                Meaning
   SPACESHIP_EXIT_CODE_SHOW   false   Show exit code of last command
   SPACESHIP_EXIT_CODE_PREFIX         Prefix before exit code section
   SPACESHIP_EXIT_CODE_SUFFIX         Suffix after exit code section
   SPACESHIP_EXIT_CODE_SYMBOL ✘       Character to be shown before exit code
   SPACESHIP_EXIT_CODE_COLOR  red     Color of exit code section

