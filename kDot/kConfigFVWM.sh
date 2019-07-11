################################################################################################
SetEnv img_home $[HOME]/Pictures
SetEnv fvwm_home $[HOME]/.fvwm
SetEnv fvwm_img $[fvwm_home]/images
SetEnv fvwm_icon $[fvwm_img]/icons
SetEnv fvwm_wallpaper $[fvwm_img]/wallpaper

###########
# SetEnv fvwm_music_player /usr/bin/audacious
# SetEnv fvwm_video_player /usr/bin/vlc
# SetEnv fvwm_editor /usr/bin/emacs
# SetEnv fvwm_ss /usr/bin/ss-qt5
###########

ImagePath $[fvwm_icon]:$[fvwm_icon];.png:$[fvwm_wallpaper]:+
################################################################################################

# Define height of FvwmButtons ("taskbar") and workspace area.
# ----------------------------------
# If changing the height of the taskbar you may also want to edit the file dmenu_launch
# to adjust the height of the program launcher (+5 matches 18, +6 matches 17, etc).
# ----------------------------------
SetEnv FVWM_TB_HEIGHT 18
EwmhBaseStruts 0 0 $[FVWM_TB_HEIGHT] 0

# Define default width of master area (in percent of screen)
SetEnv FVWM_MASTER_WIDTH 50
Piperead 'echo SetEnv FVWM_MASTER_PIXWIDTH $(( $[FVWM_MASTER_WIDTH]*$[vp.width]/100 ))'

# Define pages which start in tiling mode per default
# ----------------------------------
# Usage: SetEnv FVWM_TILING_$[Desk.n]-$[Page.nx]-$[Page.ny] Bool
# (Repeat for each page that is to start in tiling mode)
# ----------------------------------
SetEnv FVWM_TILING_0-0-0 1

###############################################################################
#                                                                             #
# Menus                                                                       #
#                                                                             #
###############################################################################

AddToMenu RootMenu "Root Menu" Title
+ "&Terminal"         Exec exec x-terminal-emulator || xterm
+ "&Clock"            Exec exec xclock
+ "&Blueman"          Exec exec blueman-applet
+ "XDG &Menu%icons/apps.png%" Popup XDGMenu
+ "&Wallpapers%icons/wallpaper.png%" Popup BGMenu
+ ""                  Nop
+ "&Stick"            Stick
+ "&Move"             Move
+ "&Close"            Close
+ "&Destroy"          Destroy
+ "StaysOnTop"          Pick (CirculateHit) Layer 0 6
+ "StaysPut"            Pick (CirculateHit) Layer 0 4
+ "StaysOnBottom"       Pick (CirculateHit) Layer 0 2
+ "&Window Ops"       Popup Window-Ops
+ ""                  Nop
+ "&X11 Session"      Popup X11-Session
+ "&Restart WM"       Restart

Test (x firefox) + "Firefox" Exec exec firefox

#################################################################################

DestroyMenu MenuSendTo
AddToMenu MenuSendTo
+ "Current" MoveToCurrent
+ "Page" PopUp MenuSendToPage
+ "Desk" PopUp MenuSendToDesk

DestroyMenu MenuSendToDesk
AddToMenu   MenuSendToDesk
+ "Desk 0"	MoveToDesk 0 0
+ "Desk 1"	MoveToDesk 0 1
+ "Desk 2"	MoveToDesk 0 2
+ "Desk 3"	MoveToDesk 0 3

DestroyMenu MenuSendToPage
AddToMenu   MenuSendToPage
+ "Page (0,0)"	MoveToPage 0 0
+ "Page (0,1)"	MoveToPage 0 1
+ "Page (0,2)"	MoveToPage 0 2

+ "Page (1,0)"	MoveToPage 1 0
+ "Page (1,1)"	MoveToPage 1 1
+ "Page (1,2)"	MoveToPage 1 2

+ "Page (2,0)"	MoveToPage 2 0
+ "Page (2,1)"	MoveToPage 2 1
+ "Page (2,2)"	MoveToPage 2 2


###############################################################################
AddToMenu Window-Ops
+ "(Un)Sticky"		Stick
+ "StaysOnTop"          Pick (CirculateHit) Layer 0 6
+ "StaysPut"            Pick (CirculateHit) Layer 0 4
+ "StaysOnBottom"       Pick (CirculateHit) Layer 0 2
+ "(De)Iconify"         Iconify
+ "&Move"             Move
+ "&Resize"           Resize
+ "&Close"            Close
+ "&Destroy"          Destroy
+ "" Nop
+ "Send To"             Popup MenuSendTo
+ "" Nop
+ "More..."   Menu MenuWindowOpsLong This 0 0
###############################################################################

AddToMenu X11-Session
+ "Re&fresh Screen"   Refresh
+ "&Restart WM"       Restart
+ ""                  Nop
+ "Exit to xterm"     Restart xterm
+ "Exit WM"           Quit

###############################################################################
#                                                                             #
# Keyboard & Mouse Bindings                                                   #
#                                                                             #
###############################################################################

# Ignore the "Numlock" key so it does not interfere with keyboard shortcuts
#
IgnoreModifiers L2


# Simple default mouse bindings for the root window:
#
Mouse 1	R A           Menu RootMenu Nop
Mouse 2	R A           Menu Window-Ops Nop
Mouse 3	R A           WindowList

# ... and for the title bar buttons:
#
Mouse 0	1 A           Menu Window-Ops Close
Mouse 0	2 A           Maximize
Mouse 0	4 A           Iconify

# ... and other parts of the windows / borders / icons:
#
Mouse 1	FS   A        Resize-or-Raise
Mouse 1	T    A        Move-or-Raise
Mouse 1	I    A        Move-or-Iconify
Mouse 2	I    A        Iconify
Mouse 2	FST  A        Menu Window-Ops Nop
Mouse 3	TSIF A        RaiseLower

###############################################################################
###############################################################################
###############################################################################


# Default Font
DefaultFont "xft:Sans:Bold:size=12:antialias=True"
###############################################################################
# Init & Restart Functions                                                    #
###############################################################################
# DestroyFunc StartFunction
# AddToFunc   StartFunction
# + I Test (Init, f $[FVWM_USERDIR]/.BGdefault) \
#     Exec exec fvwm-root $[FVWM_USERDIR]/.BGdefault
# + I TestRc (NoMatch) Exec exec fvwm-root \
#     $[FVWM_DATADIR]/default-config/images/background/bg1.png
# + I Test (Init) Module FvwmBanner
# + I Module FvwmButtons RightPanel
# + I Module FvwmEvent EventNewDesk


DestroyFunc StartFunction
AddToFunc StartFunction
+ I Module FvwmButtons RightPanel
+ I Module FvwmEvent EventNewDesk
+ I Module FvwmCommandS
+ I Module FvwmPager
+ I Read mystyle quiet
+ I TestRc (-1) Read $./mystyle quiet
+ I TestRc (-1) Exec exec xsetroot -solid \#202020

DestroyFunc InitFunction
AddToFunc InitFunction
+ I Nop

DestroyFunc RestartFunction
AddToFunc RestartFunction
+ I Nop

DestroyFunc SessionInitFunction
AddToFunc SessionInitFunction
+ I Nop

DestroyFunc SessionRestartFunction
AddToFunc SessionRestartFunction
+ I Nop

###############################################################################
# Custom Functions                                                            #
###############################################################################

DestroyFunc Move-or-Raise
AddToFunc Move-or-Raise
+ I Raise
+ M Move

DestroyFunc Move-or-Iconify
AddToFunc Move-or-Iconify
+ I Raise
+ M Move
+ D Iconify

DestroyFunc Resize-or-Raise
AddToFunc Resize-or-Raise
+ I Raise
+ M Resize

###############################################################################
# Global Behavior Commands                                                    #
###############################################################################

ClickTime 750
# DeskTopSize 3x3
EdgeResistance 250
EdgeScroll 0 0


###############################################################################
# Basic Style Settings                                                        #
###############################################################################
DefaultColors \#000000 \#c0c0c0
DefaultFont xft:Sans:Normal:size=10:antialias=True
Emulate Mwm
MenuStyle * Background \#c0c0c0
MenuStyle * Foreground \#000000
MenuStyle * Mwm
Style * BackColor \#c0c0c0
Style * BorderWidth 6
Style * ClickToFocus
Style * DecorateTransient
Style * EdgeMoveDelay 250
Style * EdgeMoveResistance 10
Style * Font xft:Sans:Bold:size=10:antialias=True
Style * ForeColor \#606060
Style * FPLenient
Style * HandleWidth 6
Style * HilightBack \#c0c0c0
Style * HilightFore \#000000
Style * HintOverride
Style * Icon /usr/share/pixmaps/fvwm/xterm.xpm
Style * IconBox 1 -300 -1 -1, IconFill Left Bottom
Style * MwmBorder
Style * MwmButtons
Style * MwmDecor
Style * MwmFunctions
Style * TileCascadePlacement
Style * !UsePPosition
TitleStyle Centered Height 20

Style Fvwm* BorderWidth 2
Style Fvwm* CirculateSkip
Style Fvwm* CirculateSkipIcon
Style Fvwm* Sticky
Style Fvwm* !Title
Style Fvwm* WindowListSkip


#######################################################################################
DestroyModuleConfig SimpleButtons: *
*SimpleButtons: Geometry 560x60+780-50
*SimpleButtons: Colorset 11
*Simplebuttons: Frame 0
*SimpleButtons: Rows 1
*SimpleButtons: Columns 9

*SimpleButtons: (1x1, Icon "48x48/terminal.png", \
              Action(Mouse 1) "Exec exec xfce4-terminal")

*SimpleButtons: (1x1, Icon 48x48/firefox.png, \
              Action(Mouse 1) "Exec exec firefox")

*SimpleButtons: (1x1, Icon 48x48/vim.png, \
              Action(Mouse 1) "Exec exec gvim")

*SimpleButtons: (1x1, Icon 48x48/Thunar.png, \
              Action(Mouse 1) "Exec exec nautilus")

*SimpleButtons: (1x1, Icon 48x48/Thunar.png, \
              Action(Mouse 1) "Exec exec thunar")

*SimpleButtons: (1x1, Icon 48x48/x.png, \
              Action(Mouse 1) "Exec exec tilix")

*SimpleButtons: (1x1, Icon 48x48/x.png, \
              Action(Mouse 1) "Exec exec sakura")

*SimpleButtons: (1x1, Icon 48x48/tux.png, \
              Action(Mouse 1) "Exec exec xfce4-appfinder")

*SimpleButtons: (1x1, Icon 48x48/tux.png, \
              Action(Mouse 1) "Exec exec xfce4-panel")

Colorset 10 fg #ffffff, bg #003c3c
Style SimpleButtons Borders, !Title, WindowListSkip

Module FvwmButtons SimpleButtons
AddToFunc StartFunction I Module FvwmButtons SimpleButtons
#######################################################################################
Style * Icon
#########
DestroyFunc InitFunction
AddToFunc InitFunction
# will cause problems when move windows across pages
# + I Exec exec xcompmgr -c -t-5 -l-5 -r4.2 -o.55 &
#+ I Exec exec feh --bg-scale $[fvwm_wallpaper]/clannad.jpg
+ I Exec exec feh --bg-scale $[fvwm_wallpaper]/w6.png
#########

#######################################################################################
# FvwmPager YYY XXX
#######################################################################################
Style "FvwmPager" !Title, !Handles, Sticky, WindowListSkip, \
CirculateSkip, BorderWidth 5

DestroyModuleConfig FvwmPager:*
*FvwmPager: Colorset * 9
*FvwmPager: HilightColorset * 5
*FvwmPager: BalloonColorset * 10
*FvwmPager: WindowColorsets 10 11
*FvwmPager: Font None
*FvwmPager: Balloons All
*FvwmPager: BalloonFont "xft:Sans:Bold:size=8:antialias=True"
*FvwmPager: BallonYOffset +2
*FvwmPager: Window3dBorders
*FvwmPager: MiniIcons
#######################################################################################


#######################################################################################
# Generate XDGMenu
PipeRead "fvwm-menu-desktop -e"
#######################################################################################

DestroyMenu BGMenu
AddToMenu   BGMenu "Wallpapers" Title
+ "Floral%bgicons/bg1.png%" SetBG bg1.png
+ "Circles%bgicons/bg2.png%" SetBG bg2.png
+ "Space%bgicons/bg3.png%" SetBG bg3.png

#######################################################################################
# This function is called by FvwmEvent every time the Desk is changed.
DestroyFunc ChangeDesk
AddToFunc   ChangeDesk
+ I SendToModule FvwmButtons ChangeButton desk0 Colorset 10
+ I SendToModule FvwmButtons ChangeButton desk1 Colorset 10
+ I SendToModule FvwmButtons ChangeButton desk2 Colorset 10
+ I SendToModule FvwmButtons ChangeButton desk3 Colorset 10
+ I SendToModule FvwmButtons ChangeButton desk$0 Colorset 11


#########################################################
DestroyModuleConfig FvwmIdent:*
*FvwmIdent: Colorset 10
*FvwmIdent: Font "xft:Sans:size=10:antialias=True"

#########################################################
# when fvwm starts.
DestroyModuleConfig FvwmBanner:*
*FvwmBanner: NoDecor
*FvwmBanner: Timeout 5

#########################################################
# Window Specific Styles
Style RightPanel !Title, Borders, !Handles, Sticky, \
                 WindowListSkip, NeverFocus
#777
#Style RightPanel StaysOnTop

Style ConfirmQuit !Title, PositionPlacement Center, WindowListSkip, Layer 6
Style FvwmIdent WindowListSkip

##############################################################################
# Desktops and Pages
# Fvwm has both Virtual Desktops and Pages. Each Desktop is built from
# a grid of Pages. The following sets the name of four Desktops and then
# divides each Desktop into a 2x2 grid of Pages that are positioned as
#   +---+---+
#   |   |   |
#   +---+---+
#   |   |   |
#   +---+---+
#

DesktopName 0 Main
DesktopName 1 Desk1
DesktopName 2 Desk2
DesktopName 3 Desk3
DesktopSize 3x3

#################################################################################

# EwmhBaseStruts [left] [right] [top] [bottom]
# Reserves space along the edge(s) of the Screen that will not
# be covered when maximizing or placing windows.
EwmhBaseStruts 0 120 0 0

# This sets the ClickTime and MoveThreshold used to determine
# Double Clicks, Hold and Move for the mouse.
ClickTime 250
MoveThreshold 3

###NoWinGitter!!!###############################################################
# # Window Placement
# Style * MinOverlapPlacement, GrabFocusOff, !UsePPosition

# # Sets all windows to OpaqueMove (vs a wired frame) and  windows will
# # snap to each other and the edge of the screen.
# OpaqueMoveSize unlimited
# Style * ResizeOpaque, SnapAttraction 15 SameType ScreenAll, SnapGrid

#################################################################################
# FvwmEvent is a module that can run an action or function
# on specific events. This instance changes which desk number
# is highlighted when the desk is changed.
DestroyModuleConfig EventNewDesk:*
*EventNewDesk: PassID
*EventNewDesk: new_desk ChangeDesk
#################################################################################

DestroyModuleConfig FvwmScript:*
*FvwmScript: DefaultColorset 10
#################################################################################

# Note - To use the system tray you must have "stalonetray" installed.
DestroyModuleConfig RightPanel:*
*RightPanel: Geometry 120x$[vp.height]-0+0
*RightPanel: Colorset 12
*RightPanel: Rows $[vp.height]
*RightPanel: Columns 120
*RightPanel: Frame 0
*RightPanel: Font "xft:Sans:Bold:size=10:antialias=True"
*RightPanel: (110x40, Icon "fvwm-logo-small.png", Frame 0)
*RightPanel: (120x5, Frame 0)
*RightPanel: (10x20, Frame 0)

*RightPanel: (25x20, Id desk0, Title "0", Action (Mouse 1) GotoDesk 0 0, Colorset 11, ActiveColorset 13, Frame 0)
*RightPanel: (25x20, Id desk1, Title "1", Action (Mouse 1) GotoDesk 0 1, ActiveColorset 13, Frame 0)
*RightPanel: (25x20, Id desk2, Title "2", Action (Mouse 1) GotoDesk 0 2, ActiveColorset 13, Frame 0)
*RightPanel: (25x20, Id desk3, Title "3", Action (Mouse 1) GotoDesk 0 3, ActiveColorset 13, Frame 0)
*RightPanel: (10x20, Frame 0)
*RightPanel: (5x80, Frame 0)
*RightPanel: (110x80, Swallow FvwmPager 'Module FvwmPager *', Frame 0)
*RightPanel: (5x80, Frame 0)
*RightPanel: (120x5, Frame 0)
Test (x stalonetray) *RightPanel: (120x20, Swallow(NoClose,UseOld) \
    stalonetray 'Exec exec stalonetray --config \
    "$[FVWM_DATADIR]/default-config/.stalonetrayrc"', Frame 0)
Test (x stalonetray) PipeRead 'echo "*RightPanel: (120x$(($[vp.height]-225)), \
    Top, Swallow FvwmIconMan \'Module FvwmIconMan\', Frame 0)"'
Test (!x stalonetray) PipeRead 'echo "*RightPanel: (120x$(($[vp.height]-205)),\
    Top, Swallow FvwmIconMan \'Module FvwmIconMan\', Frame 0)"'
*RightPanel: (120x45, Swallow DateTime 'Module FvwmScript FvwmScript-DateTime',\
    Frame 0)
*RightPanel: (120x5, Frame 0)

#################################################################################
# FvwmIconMan is a powerful tool to list and manage windows. This
# is used as the window list in the panel or taskbar.
DestroyModuleConfig FvwmIconMan:*
*FvwmIconMan: UseWinList true
*FvwmIconMan: ButtonGeometry 100x20
*FvwmIconMan: ManagerGeometry 1x1
*FvwmIconMan: Background #003c3c
*FvwmIconMan: Foreground #ffffff
*FvwmIconMan: FocusColorset 11
*FvwmIconMan: IconColorset 14
*FvwmIconMan: FocusAndSelectColorset 12
*FvwmIconMan: SelectColorset 12
*FvwmIconMan: IconAndSelectColorset 12
*FvwmIconMan: DrawIcons always
*FvwmIconMan: ReliefThickness 0
*FvwmIconMan: Format "%t"
*FvwmIconMan: Font "xft:Sans:Bold:size=8:antialias=True"
*FvwmIconMan: Action Mouse 0 A ret
*FvwmIconMan: Action Mouse 1 A sendcommand IconManClick
*FvwmIconMan: Action Mouse 3 A sendcommand "Menu MenuIconOps"
*FvwmIconMan: Resolution global
*FvwmIconMan: Tips needed
*FvwmIconMan: Sort id

######################################################
# This function is run from FvwmIconMan when the button is clicked.
DestroyFunc IconManClick
AddToFunc   IconManClick
+ I ThisWindow (Raised, !Shaded, !Iconic, CurrentPage) Iconify
+ I TestRc (Match) Break
+ I ThisWindow WindowShade off
+ I ThisWindow Iconify off
+ I ThisWindow Raise
+ I ThisWindow (AcceptsFocus) FlipFocus
#######################################################################################

########
DestroyModuleConfig SensorDock: *
#*SensorDock: Geometry 190x300-1750+800
*SensorDock: Geometry 190x300-1700+400
*SensorDock: Colorset 13
*SensorDock: Rows 47
*SensorDock: Columns 24
*SensorDock: Font "xft:Sans:Bold:size=10:antialias=True"
*SensorDock: Frame 0
#*SensorDock: (17x7, Swallow DateTime 'Module FvwmScript $[FVWM_USERDIR]/scripts/DateTime', Frame 0)
*SensorDock: (24x1, Frame 0)
*SensorDock: (2x5, Frame 0)
*SensorDock: (5x5, Id desk0, Title "0", Action (Mouse 1) GotoDesk 0 0, Colorset 11, ActiveColorset 12, Frame 0)
*SensorDock: (5x5, Id desk1, Title "1", Action (Mouse 1) GotoDesk 0 1, Colorset 10, ActiveColorset 12, Frame 0)
*SensorDock: (5x5, Id desk2, Title "2", Action (Mouse 1) GotoDesk 0 2, Colorset 10, ActiveColorset 12, Frame 0)
*SensorDock: (5x5, Id desk3, Title "3", Action (Mouse 1) GotoDesk 0 3, Colorset 10, ActiveColorset 12, Frame 0)
*SensorDock: (2x5, Frame 0)
*SensorDock: (2x12, Frame 0)
*SensorDock: (20x12, Swallow FvwmPager 'Module FvwmPager *', Frame 0)
*SensorDock: (2x12, Frame 0)
*SensorDock: (12x1, Frame 0)
*SensorDock: (12x18, Swallow Sensors 'Module FvwmScript $[FVWM_USERDIR]/scripts/Sensors', Frame 2)
*SensorDock: (1x16, Frame 0)
*SensorDock: (10x10, Swallow(UseOld) "cpumon" `Exec exec xosview -title cpumon +cpu`, Frame 0)
*SensorDock: (1x16, Frame 0)
*SensorDock: (10x2, Swallow(UseOld) "memmon" `Exec exec xosview -title memmon +mem`, Frame 0)
*SensorDock: (10x2, Swallow(UseOld) "netmon" `Exec exec xosview -title netmon +net`, Frame 0)
*SensorDock: (10x2, Swallow(UseOld) "hdmon" `Exec exec xosview -title hdmon +disk`, Frame 0)
*SensorDock: (2x4, Frame 0)
*SensorDock: (20x4, Swallow(NoClose,UseOld) "stalonetray" 'Exec exec stalonetray', Frame 0)
*SensorDock: (2x4, Frame 0)
########
AddToFunc StartFunction I Module FvwmButtons SensorDock
AddToFunc StartFunction I Module FvwmEvent EventNewDesk
########

AddToFunc TileLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 100
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

AddToFunc TileRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 100
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 +0

AddToFunc TileTop
+ I ThisWindow (!Shaded, !Iconic) Maximize 100 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

AddToFunc TileBottom
+ I ThisWindow (!Shaded, !Iconic) Maximize 100 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 -0


#######################################################################################
Colorset 0  fg #ffffff, bg #003c3c, hi, sh, Plain, NoShape
Colorset 1  fg #000000, bg #8f9f8f, hi, sh, Plain, NoShape
Colorset 2  fg #ffffff, bg #003c3c, hi, sh, Plain, NoShape
Colorset 3  fg black, bg #4d4d4d, hi #676767, sh #303030, Plain, NoShape
Colorset 4  fg black, bg #2d2d2d, hi #474747, sh #101010, Plain, NoShape
Colorset 5  fg #000000, bg #ffffff, hi, sh, Plain, NoShape
Colorset 6  fg #ffffff, bg #2d2d2d, hi, sh, Plain, NoShape
Colorset 7  fg grey30, bg #ffffff, hi, sh, Plain, NoShape
Colorset 8  fg #ffffff, bg #003c3c, hi, sh, Plain, NoShape
Colorset 10 fg #ffffff, bg #003c3c, hi #aaaaaa, sh #999999, Plain, NoShape
Colorset 11 fg #ffffff, bg #1a6e99, hi #ffffff, sh #ffffff, Plain, NoShape
Colorset 12 fg #2d2d2d, bg #ffffff, hi, sh, Plain, NoShape
Colorset 13 fg #ffffff, bg #006c6c, hi, sh, Plain, NoShape
Colorset 14 fg #555555, bg #003c3c, hi #aaaaaa, sh #999999, Plain, NoShape

###############################################################################
### FFF ###
###############################################################################
### Ctrl+Alt virtual desktop navigation
Key Up   A  M           Scroll -100000 0
Key Down A  M         Scroll  100000 0
############################################################################
### Ctrl+Alt virtual desktop navigation
Key Up   A CM           Scroll -100000 0
Key Down A CM         Scroll  100000 0
############################################################################
Key Left       A    M    PrevWindow 
Key Right      A    M    NextWindow 
############################################################################
Key F5     A    M    ToggleTiling 
Key Space  A    M    ToggleTiling 
############################################################################
Key s      A    CM   SwapWindowsDir SouthEast SouthWest 
Key s      A    M    SwapWindowsDir NorthEast NorthWest 
############################################################################

# Key Super_R A A SwapWindowsDir SouthEast SouthWest 
# Key Super_R A M SwapWindowsDir SouthEast SouthWest 

############################################################################


###############################################################################
### Ctrl+Alt program shortcuts
Key C A SM            Close
Key C A CM            Close

Key R A CM            Restart
Key T A CM            Exec exec x-terminal-emulator || xterm
############################################################################
Silent Key 1 A M GotoPage 0 0
Silent Key 2 A M GotoPage 1 0
Silent Key 3 A M GotoPage 1 1
Silent Key 4 A M GotoPage 1 2
############################################################################
Silent Key F1 A M TileRight 
Silent Key F2 A M TileLeft 
Silent Key F3 A M TileTop
Silent Key F4 A M TileBottom
############################################################################
Silent Key 1 A C GotoDesk 0 0
Silent Key 2 A C GotoDesk 0 1
Silent Key 3 A C GotoDesk 0 2
Silent Key 4 A C GotoDesk 0 3
Silent Key Super_R A A Exec exec $[infostore.terminal]
#######################################
Key F6     A    M    SetCurrentMaster 
Key Return A    CM   SetCurrentMaster 
Key Return A    SM   SetCurrentMaster  # alternate shortcut when running under vmware
#######################################
Key T      A    M    Toggle-Title
Key S      A    M    Stick
Key X      A    M    Iconify true
Key R      A    SM   RefreshWindow

#######################################
### FFF ###

DestroyFunc 	LeftClick 
AddToFunc   	LeftClick
+ M Raise
+ M Move-and-SetFloating
+ C RaiseLower
+ D Raise
+ D Maximize-and-SetFloating 0 100

DestroyFunc		RightClick
AddToFunc 		RightClick
+ M Raise
+ M Resize-and-SetFloating
+ C WindowshadeFunc


############################################################################
DestroyFunc 	WindowListFunc
AddToFunc 		WindowListFunc
+ I Iconify false
+ I Windowshade false
+ I Raise
+ I FlipFocus
#+ I WarpToWindow 50 8p

DestroyFunc 	NextWindow
AddToFunc 		NextWindow
+ I ScanForWindow NorthEast NorthWest (CurrentPage, !Iconic, AcceptsFocus) FlipFocus
+ I Current Raise
#+ I Current WarpToWindow 5 5

DestroyFunc 	PrevWindow
AddToFunc 		PrevWindow
+ I ScanForWindow SouthEast SouthWest (CurrentPage, !Iconic, AcceptsFocus) FlipFocus
+ I Current Raise
#+ I Current WarpToWindow 5 5

DestroyFunc     Warp-and-Move
AddToFunc 		Warp-and-Move
+ I WarpToWindow 50 50
+ I Move-and-SetFloating

DestroyFunc     Warp-and-Resize
AddToFunc 		Warp-and-Resize
+ I WarpToWindow 50 50
+ I Resize-and-SetFloating

DestroyFunc     MoveAndGotoPage
AddToFunc 		MoveAndGotoPage
+ I MoveToPage $0w $1w
+ I GotoPage $0p $1p

DestroyFunc 	WindowShadeFunc
AddToFunc 		WindowShadeFunc
+ I Current WindowStyle Title
+ I Current State 3 False
+ I WindowShade
#+ I All (Shaded, CurrentPage) PlaceAgain
#+ I PlaceAgain

DestroyFunc 	RemoveTitle
AddToFunc 		RemoveTitle
+ I Current WindowStyle !Title
#+ I Current Resize keep w+15p
+ I Current State 3 True

DestroyFunc     Toggle-Title
AddToFunc       Toggle-Title
+ I Current (State 3) WindowStyle Title
+ I TestRc (Match) Current Resize keep w-19p
+ I Current State 3 Toggle
+ I Current (State 3) WindowStyle !Title
+ I TestRc (Match) Current Resize keep w+19p

DestroyFunc 	LockScreen
AddToFunc 		LockScreen
+ I Next (FvwmButtons, State 0) EdgeThickness 1
+ I Next (FvwmButtons) State 0
+ I Next (FvwmButtons, State 0) EdgeThickness 0

DestroyFunc     rxvt-under-mouse
AddToFunc       rxvt-under-mouse
+ I Style "urxvt" PositionPlacement UnderMouse
+ I Exec exec urxvtcd
+ I Wait urxvt
+ I Style "urxvt" MinOverlapPercentPlacement

DestroyFunc 	Maintenance
AddToFunc 		Maintenance
+ I SendToModule FvwmAnimate pause
+ I All (!Visible, CurrentPage, !Iconic, !Sticky, !Focused) Iconify on
+ I SendToModule FvwmAnimate play

# requires screen (uses configuration screenrc.bgc) 

DestroyFunc ToggleBGC
AddToFunc ToggleBGC
+ I None (urxvt.bgc) BGC_Init
#+ I All (urxvt.bgc, CurrentDesk) BGC_Hide
+ I All (urxvt.bgc, !iconic) BGC_Hide
+ I TestRc (0) BGC_Show

DestroyFunc BGC_Init
AddToFunc BGC_Init
+ I Exec exec urxvt -geometry 100x62 -name urxvt.bgc -e screen -d -R BGC -c $FVWM_USERDIR/screenrc.bgc
+ I Wait urxvt.bgc
#+ I All (urxvt.bgc) MoveToDesk 0 666
+ I All (urxvt.bgc) Iconify true
+ I Prev (CurrentPage, !iconic, AcceptsFocus) FlipFocus

DestroyFunc BGC_Show
AddToFunc BGC_Show
#+ I All (urxvt.bgc) MoveToDesk 0 $[desk.n]
+ I All (urxvt.bgc) Iconify false
+ I All (urxvt.bgc) Raise 
+ I All (urxvt.bgc) WindowShade false
+ I All (urxvt.bgc) WindowStyle WindowListHit
+ I Next (urxvt.bgc) FlipFocus
#+ I NewWindow

DestroyFunc BGC_Hide
AddToFunc BGC_Hide
+ I All (urxvt.bgc) WindowShade true
#+ I All (urxvt.bgc) MoveToDesk 0 666 
+ I All (urxvt.bgc) Iconify true 
+ I All (urxvt.bgc) WindowStyle WindowListSkip, CirculateHit
+ I None (CurrentPage, Focused) Prev (CurrentPage, !iconic, AcceptsFocus) FlipFocus
#+ I DestroyWindow


#--------- General / Initialization {{{3

Style * ResizeHintOverride

DestroyModuleConfig FvwmEvent: *
*FvwmEvent: Cmd
*FvwmEvent: add_window "NewWindow"
*FvwmEvent: destroy_window "DestroyWindow"
*FvwmEvent: deiconify "NewWindow"
*FvwmEvent: iconify "DestroyWindow"
#*FvwmEvent: windowshade "DestroyWindow"
#*FvwmEvent: dewindowshade "NewWindow"
# *FvwmEvent: new_page "NewPageFunc"
# *FvwmEvent: new_desk "NewPageFunc"

### Executed on page/desk change
DestroyFunc NewPageFunc
AddToFunc NewPageFunc
+ I None (CurrentPage, Focused) Prev (CurrentPage, !iconic, AcceptsFocus) FlipFocus
+ I FixSticky
+ I SendToModule FvwmButtons ChangeButton Layout Icon floating18.png
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break
+ I SendToModule FvwmButtons ChangeButton Layout Icon tile18.png
+ I None (CurrentPage, !State 1, !State 2, !iconic, AcceptsFocus) Break
+ I Refresh
+ I All (CurrentPage, !iconic, AcceptsFocus, State 1) \
    Resize frame $[FVWM_MASTER_PIXWIDTH]p keep
+ I All (CurrentPage, !iconic, AcceptsFocus, !State 1, !State 2) \
    PipeRead 'echo ResizeMove frame \
    $(( $[vp.width] - $[FVWM_MASTER_PIXWIDTH] ))p keep $[FVWM_MASTER_PIXWIDTH]p keep'

SetEnv Fvwm_CurrentPage $[desk.n]-$[page.nx]-$[page.ny]

### Nicely fit sticky windows into current page when in tiling mode
DestroyFunc FixSticky
AddToFunc FixSticky
+ I SetEnv Fvwm_PrevPage $[Fvwm_CurrentPage]
+ I SetEnv Fvwm_CurrentPage $[desk.n]-$[page.nx]-$[page.ny]
+ I All (sticky, !iconic, !State 2) SetEnv Fvwm_SavePage_$[Fvwm_PrevPage]
+ I TestRc (Match) KeepRc None (sticky, !iconic, state 1) \
    KeepRc Next (CurrentPage, state 1) Schedule 5 FlipFocus
+ I TestRc (Match) KeepRc Next (sticky, !iconic, !State 2, State 1) Schedule 5 FlipFocus
+ I TestRc (Match) Schedule 10 NewWindow
+ I TestRc (Match) UnsetEnv Fvwm_SavePage_$[Fvwm_CurrentPage]
+ I TestRc (Match) Break 1
+ I Test (EnvIsSet Fvwm_SavePage_$[Fvwm_CurrentPage]) Schedule 10 DestroyWindow
+ I UnsetEnv Fvwm_SavePage_$[Fvwm_CurrentPage]

#--------- Toggle floating for individual windows {{{3

### Toggles tiling/floating for current window
DestroyFunc WindowToggleTiling
AddToFunc WindowToggleTiling 
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break 1
+ I Current State 2 Toggle
+ I Current (State 2) Piperead 'echo Move 50-50w 50-50w+$(( $[FVWM_TB_HEIGHT] / 2 ))p'
+ I TestRC (Match) Raise
+ I TestRC (Match) WarpToWindow 50 50
+ I PostToggleTiling

### Move window and set to floating mode
DestroyFunc Move-and-SetFloating
AddToFunc Move-and-SetFloating
+ I Move
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break 1
+ I Current State 2 True
+ I PostToggleTiling

### Resize window and set to floating mode
DestroyFunc Resize-and-SetFloating
AddToFunc Resize-and-SetFloating
+ I Resize Direction SE warptoborder
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break 1
+ I Current State 2 True
+ I PostToggleTiling

### Maximize window and set to floating/tiling mode
DestroyFunc Maximize-and-SetFloating
AddToFunc Maximize-and-SetFloating
+ I Maximize $0 $1
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break 1
#---Use 1st line to push window into tiling mode when unmaximizing,
#   use 2nd line to leave it floating (when needed, use CM+Space)  ---
#+ I Current (!Maximized) State 2 False
+ I Current (!Maximized) Break 1
#---------------------------------------------------------------------
+ I Current (Maximized) State 2 True
+ I PostToggleTiling
+ I Current Raise

### Rearrange remaining windows when in tiling mode
DestroyFunc PostToggleTiling
AddToFunc PostToggleTiling
+ I Current (State 2) State 1 False
+ I TestRC (Match) DestroyWindow
#+ I TestRC (Match) WindowStyle Title
#+ I Current (!State 2) WindowStyle !Title
+ I Current (!State 2) NewWindow 
# TODO: Mark floating window in IconMan

#--------- New Windows / Toggle Tiling / WMIArrange {{{3

### Executed when new window enters tiling mode
DestroyFunc NewWindow
AddToFunc NewWindow
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break 1
+ I Current (State 2|Transient) NoWindow Break 1
#---Comment the next 2 lines for new windows to start in slave area---
+ I Current (CurrentPage, !State 2, !iconic, AcceptsFocus) \
    KeepRc All (CurrentPage, State 1) State 1 false
+ I TestRc (Match) Current State 1 true
#---------------------------------------------------------------------
+ I None (CurrentPage, State 1) Prev (CurrentPage, !State 2, !iconic, AcceptsFocus) \
    State 1 True 
+ I WMIArrange
+ I Next (FvwmButtons, !HasPointer) Next (CurrentPage, State 1) WarpToWindow -5 5
#+ I Next (CurrentPage, State 1) Schedule 120 $[w.id] FlipFocus

### Executed when window leaves tiling mode
DestroyFunc DestroyWindow
AddToFunc DestroyWindow
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break
+ I All (iconic) State 1 False
+ I None (CurrentPage, State 1) Current (CurrentPage, !State 2, !iconic, AcceptsFocus) \
    State 1 True 
+ I None (CurrentPage, State 1) Prev (CurrentPage, !State 2, !iconic, AcceptsFocus) \
    State 1 True 
+ I WMIArrange

### Toggle tiling mode for current workspace
DestroyFunc ToggleTiling
AddToFunc ToggleTiling
+ I Test (EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) \
    SetEnv FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 0
+ I TestRc (Match) All (CurrentPage) State 1 False
+ I TestRc (Match) SendToModule FvwmButtons ChangeButton Layout Icon floating18.png
#+ I TestRc (Match) KeepRc All (CurrentPage, AcceptsFocus) WindowStyle Title
+ I TestRc (Match) Break
+ I SetEnv FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1
+ I All (CurrentPage) State 1 False
#+ I All (CurrentPage, AcceptsFocus) WindowStyle !Title
#+ I UpdateStyles
+ I Current (State 2|Transient) Prev Focus
+ I Current State 1 True
+ I WMIArrange
+ I SendToModule FvwmButtons ChangeButton Layout Icon tile18.png


PipeRead 'echo SetEnv vp.width_1 $(( $[vp.width] - 1 ))'
PipeRead 'echo SetEnv vp.height_1 $(( $[vp.height] - 1 ))'

### Does the rearranging when in tiling mode
DestroyFunc WMIArrange
AddToFunc WMIArrange
+ I Next (CurrentPage, State 1) \
    ResizeMove frame $[FVWM_MASTER_PIXWIDTH]p -$[FVWM_TB_HEIGHT]p \
    0 $[FVWM_TB_HEIGHT]p
+ I None (CurrentPage, !State 1, !State 2, !iconic, AcceptsFocus) \
    Next (CurrentPage, State 1) \
    ResizeMove frame 100 -$[FVWM_TB_HEIGHT]p 0 $[FVWM_TB_HEIGHT]p
+ I All (CurrentPage, State 1) WindowStyle WindowListSkip
+ I All (CurrentPage, State 2) WindowStyle WindowListSkip
+ I UpdateStyles
+ I ModuleSynchronous FvwmRearrange -tile -u -m -s -r -h -noraise \
    $[FVWM_MASTER_PIXWIDTH]p $[FVWM_TB_HEIGHT]p $[vp.width_1]p $[vp.height_1]p
+ I All (CurrentPage, State 1) WindowStyle WindowListHit
+ I All (CurrentPage, State 2) WindowStyle WindowListHit
+ I All (FvwmButtons|FvwmPager) WindowStyle WindowListSkip

### Does the rearranging when in horizontal tiling mode
DestroyFunc WMIArrangeH
AddToFunc WMIArrangeH
+ I Next (CurrentPage, State 1) \
    PipeRead 'echo ResizeMove frame 100 $(( $[FVWM_MASTER_PIXWIDTH] - $[FVWM_TB_HEIGHT] ))p \
    0 $[FVWM_TB_HEIGHT]p'
+ I None (CurrentPage, !State 1, !State 2, !iconic, AcceptsFocus) \
    Next (CurrentPage, State 1) \
    ResizeMove frame 100 -$[FVWM_TB_HEIGHT]p 0 $[FVWM_TB_HEIGHT]p
+ I All (CurrentPage, State 1) WindowStyle WindowListSkip
+ I All (CurrentPage, State 2) WindowStyle WindowListSkip
+ I UpdateStyles
+ I ModuleSynchronous FvwmRearrange -tile -u -m -s -r -noraise \
    0 $[FVWM_MASTER_PIXWIDTH]p $[vp.width_1]p $[vp.height_1]p
+ I All (CurrentPage, State 1) WindowStyle WindowListHit
+ I All (CurrentPage, State 2) WindowStyle WindowListHit
+ I All (FvwmButtons|FvwmPager) WindowStyle WindowListSkip

#--------- SetCurrentMaster / SwapWindows {{{3

### Set the current window to master
DestroyFunc SetCurrentMaster
AddToFunc SetCurrentMaster
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break
+ I Current (State 2|Transient) NoWindow Break
+ I Current SetEnv FvwmId_current $$$$[w.id]
+ I Next (CurrentPage, State 1) SetEnv FvwmId_dest $$$$[w.id]
+ I SwapWindowsToggleState
+ I SwapWindows

### Swap window with next window in specified direction
DestroyFunc SwapWindowsDir
AddToFunc SwapWindowsDir
+ I Current (State 2|Transient) NoWindow Break
+ I Current SetEnv FvwmId_current $$$$[w.id]
+ I ScanForWindow $0 $1 (CurrentPage, !Iconic, AcceptsFocus, !State 2) \
    SetEnv FvwmId_dest $$$$[w.id]
+ I SwapWindowsToggleState
+ I SwapWindows

### Toggles master/floating when swapping windows
DestroyFunc SwapWindowsToggleState
AddToFunc SwapWindowsToggleState
+ I Piperead '[ $[FvwmId_current] = $[FvwmId_dest] ] && echo Break 1'
+ I WindowId $[FvwmId_current] ThisWindow (state 1) \
    WindowId $[FvwmId_dest] State 1 True
+ I WindowId $[FvwmId_current] ThisWindow (state 1) \
    WindowId $[FvwmId_current] State 1 False
+ I TestRc (Match) Break 1
+ I WindowId $[FvwmId_dest] ThisWindow (state 1) \
    WindowId $[FvwmId_current] State 1 True
+ I WindowId $[FvwmId_dest] ThisWindow (state 1) \
    WindowId $[FvwmId_dest] State 1 False

### Does the actually swapping
DestroyFunc SwapWindows
AddToFunc SwapWindows
+ I WindowId $[FvwmId_current] \
    SetEnv FvwmCoord_current \
    '$$$$[w.width]p $$$$[w.height]p $$$$[w.x]p $$$$[w.y]p'
+ I WindowId $[FvwmId_dest] \
    SetEnv FvwmCoord_dest \
    '$$$$[w.width]p $$$$[w.height]p $$$$[w.x]p $$$$[w.y]p'
+ I WindowId $[FvwmId_current] ResizeMove frame $[FvwmCoord_dest]
+ I WindowId $[FvwmId_dest] ResizeMove frame $[FvwmCoord_current]
+ I WindowId $[FvwmId_current] WarpToWindow 50 50
+ I UnsetEnv FvwmId_current
+ I UnsetEnv FvwmCoord_current
+ I UnsetEnv FvwmId_dest
+ I UnsetEnv FvwmCoord_dest

#--------- Increase/Decrease MasterWidth {{{3

### Increases width of master area
DestroyFunc IncreaseMasterWidth
AddToFunc IncreaseMasterWidth
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break
+ I Test (EnvMatch FVWM_MASTER_WIDTH 80) Break
+ I None (CurrentPage, !State 1, !State 2, !iconic, AcceptsFocus) Break
+ I PipeRead 'echo SetEnv FVWM_MASTER_WIDTH $(( $[FVWM_MASTER_WIDTH] + 5 ))'
+ I Piperead 'echo SetEnv FVWM_MASTER_PIXWIDTH $(( $[FVWM_MASTER_WIDTH]*$[vp.width]/100 ))'
+ I All (CurrentPage, !iconic, AcceptsFocus, State 1) \
    Resize frame $[FVWM_MASTER_PIXWIDTH]p keep
+ I All (CurrentPage, !iconic, AcceptsFocus, !State 1, !State 2) \
    PipeRead 'echo ResizeMove frame \
    $(( $[vp.width] - $[FVWM_MASTER_PIXWIDTH] ))p keep $[FVWM_MASTER_PIXWIDTH]p keep'

### Decreases width of master area
DestroyFunc DecreaseMasterWidth
AddToFunc DecreaseMasterWidth
+ I Test (!EnvMatch FVWM_TILING_$[desk.n]-$[page.nx]-$[page.ny] 1) Break
+ I Test (EnvMatch FVWM_MASTER_WIDTH 20) Break
+ I None (CurrentPage, !State 1, !State 2, !iconic, AcceptsFocus) Break
+ I PipeRead 'echo SetEnv FVWM_MASTER_WIDTH $(( $[FVWM_MASTER_WIDTH] - 5 ))'
+ I Piperead 'echo SetEnv FVWM_MASTER_PIXWIDTH $(( $[FVWM_MASTER_WIDTH]*$[vp.width]/100 ))'
+ I All (CurrentPage, !iconic, AcceptsFocus, State 1) \
    Resize frame $[FVWM_MASTER_PIXWIDTH]p keep
+ I All (CurrentPage, !iconic, AcceptsFocus, !State 1, !State 2) \
    PipeRead 'echo ResizeMove frame \
    $(( $[vp.width] - $[FVWM_MASTER_PIXWIDTH] ))p keep $[FVWM_MASTER_PIXWIDTH]p keep'

