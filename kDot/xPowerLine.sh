#! /bin/sh
#
# xPowerLine.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



Fonts installation
Fontconfig

This method only works on Linux. It’s the second recommended method if terminal emulator supports it as patching fonts is not needed, and it generally works with any coding font.

    Download the latest version of the symbol font and fontconfig file:

    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

    Move the symbol font to a valid X font path. Valid font paths can be listed with xset q:

    mv PowerlineSymbols.otf ~/.local/share/fonts/

    Update font cache for the path the font was moved to (root priveleges may be needed to update cache for the system-wide paths):

    fc-cache -vf ~/.local/share/fonts/

    Install the fontconfig file. For newer versions of fontconfig the config path is ~/.config/fontconfig/conf.d/, for older versions it’s ~/.fonts.conf.d/:

    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

If custom symbols still cannot be seen then try closing all instances of the terminal emulator. Restarting X may be needed for the changes to take effect.

If custom symbols still can’t be seen, double-check that the font have been installed to a valid X font path, and that the fontconfig file was installed to a valid fontconfig path. Alternatively try to install a patched font.
Patched font installation

This is the preferred method, but it is not always available because not all fonts were patched and not all fonts can be patched due to licensing issues.

After downloading font the following should be done:

    Move the patched font to a valid X font path. Valid font paths can be listed with xset q:

    mv 'SomeFont for Powerline.otf' ~/.local/share/fonts/

    Update font cache for the path the font was moved to (root privileges may be needed for updating font cache for some paths):

    fc-cache -vf ~/.local/share/fonts/

