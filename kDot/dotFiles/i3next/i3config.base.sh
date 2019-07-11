#! /bin/sh
#
# i3config.base.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


set $mod Mod4

font -*-terminus-*-*-*-*-12-*-*-*-*-*-*-13

new_window pixel 3
focus_follows_mouse  no

force_focus_wrapping yes

set $based3    #002b36
set $based2    #073642
set $based1    #586e75
set $based0    #657b83
set $base0     #839496
set $base1     #93a1a1
set $base2     #eee8d5
set $base3     #fdf6e3
set $yellow    #b58900
set $orange    #cb4b16
set $red       #dc322f
set $magenta   #d33682
set $violet    #6c71c4
set $blue      #268bd2
set $cyan      #2aa198
set $green     #859900


client.focused            $based3   $based2   $base3   $based3  $based2
client.focused_inactive   $based3   $based3   $base0   $based3  $based3
client.unfocused          $based3   $based3   $base0   $based3  $based3
client.urgent             $based3   $magenta  $base3   $based3  $magenta


floating_modifier $mod

bindsym $mod+Return exec st

bindsym $mod+c kill

bindsym $mod+p       exec dmenu_run -p run          -sb "$based1"  -nb "$based3" -nf "$based0" -fn Terminus-11
bindsym $mod+Shift+p exec ~/bin/pass-autotype -sb "$magenta" -nb "$based3" -nf "$based0" -fn Terminus-11

bindsym Control+$mod+l exec i3lock -c "$based3"

bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

bindsym $mod+v split h
bindsym $mod+g split v

bindsym $mod+f fullscreen

bindsym $mod+n layout tabbed
bindsym $mod+m layout toggle split

bindsym $mod+d focus parent
bindsym $mod+b focus child

bindsym $mod+semicolon move workspace to output right

bindsym $mod+Shift+f floating toggle

bindsym $mod+space focus mode_toggle

bindsym $mod+6 workspace back_and_forth

bindsym $mod+q workspace 1:q
bindsym $mod+w workspace 2:w
bindsym $mod+e workspace 3:e
bindsym $mod+r workspace 4:r
bindsym $mod+t workspace 5:t
bindsym $mod+y workspace 6:y
bindsym $mod+u workspace 7:u
bindsym $mod+i workspace 8:i
bindsym $mod+o workspace 9:o

bindsym $mod+Shift+q move container to workspace 1:q
bindsym $mod+Shift+w move container to workspace 2:w
bindsym $mod+Shift+e move container to workspace 3:e
bindsym $mod+Shift+r move container to workspace 4:r
bindsym $mod+Shift+t move container to workspace 5:t
bindsym $mod+Shift+y move container to workspace 6:y
bindsym $mod+Shift+u move container to workspace 7:u
bindsym $mod+Shift+i move container to workspace 8:i
bindsym $mod+Shift+o move container to workspace 9:o

bindsym $mod+z reload
bindsym $mod+Shift+x restart
bindsym $mod+Shift+z exit

mode "resize" {
        bindsym h   resize shrink width 10 px or 10 ppt
        bindsym j   resize grow height 10 px or 10 ppt
        bindsym k   resize shrink height 10 px or 10 ppt
        bindsym l   resize grow width 10 px or 10 ppt

        bindsym Return mode "default"
        bindsym q mode "default"
        bindsym Escape mode "default"
        bindcode Control+34 mode "default"
}

bindsym $mod+s mode "resize"

bindsym XF86AudioRaiseVolume exec "amixer -D pulse sset Master '3%+'"
bindsym XF86AudioLowerVolume exec "amixer -D pulse sset Master '1%-'"
bindsym XF86AudioMute exec "amixer -D pulse set Master toggle"
bindsym XF86AudioMicMute exec "amixer -D pulse sset Capture toggle"

bindsym XF86WakeUp exec "synclient TouchpadOff=$(synclient | awk '/TouchpadOff/ {print ($3+1)%2}')"

bindsym XF86Display exec "arandr"

bindsym $mod+a exec "st -e alsamixer"
bindsym $mod+Shift+a exec "pavucontrol"

bar {
        position top
        status_command conky-wrapper
        strip_workspace_numbers yes
        colors {
                statusline $based0
                background $based3
                focused_workspace $based3 $based3 $base3
                inactive_workspace $based3 $based2 $base0
                active_workspace $based3 $based2 $base3
                urgent_workspace $based3 $magenta $base2
        }
}
