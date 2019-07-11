i3 is keyboard driven. Not reading your ~/.config/i3/config file would be a mistake. All your keyboard shortcuts are defined in that file.

SUPER + SHIFT + Q closes an application
CTRL + ALT +T opens a terminal
SUPER + ENTER opens a terminal
SUPER + SHIFT + ENTER opens thunar your file manager

We explain the order of the workspaces.

Workspace 1 – browsers
Workspace 2 – editors
Workspace 3 – inkscape
Workspace 4 – gimp
Workspace 5 – meld – images
Workspace 6 – video
Workspace 7 – virtual machines
Workspace 8 – file managers
Workspace 9 – mail clients
Workspace 10 – music

SUPER + X is the button to get out of i3
CTRL + SHIFT + ESC is our taskmanager
ALT + F3 is XFCE APPLICATION FINDER
ALT + F2 is GMRUN
CTRL + ALT +M to run Settings Manager
CTRL + ALT + U to set your audio
PRINT to take a screenshot – shows up in your pictures folder
SUPER + SHIFT  + R is reloading the config of i3
SUPER + SHIFT + C is reloading the config of i3


$ sudo dnf install i3 i3status dmenu i3lock xbacklight feh conky

Confirm the download and wait until it finishes installing. Curious about what you installed? Here is the package-by-package breakdown.

    i3 is the main window manager package.
    i3status is a utility to generate a string with information to be displayed in the i3bar.
    dmenu is a utility to launch our apps in the i3 desktop.
    xbacklight is a utility to set our laptop’s screen brightness.
    feh is a utility to set a wallpaper.
    conky is a utility to display information of the system in a awesome way.
