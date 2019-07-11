#! /bin/sh
#
# i3conkyrc.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


conky.config = {
	background           = false,
	out_to_console       = true,
	out_to_x             = false,
	update_interval      = 2,
	total_run_times      = 0,
	short_units          = true,
	pad_percents         = 3,
	override_utf8_locale = true,
};

conky.text = [[
,[{"full_text": " CPU: $acpitemp°C [$cpu%] ",                                         "color":"\#DC322F"},
  {"full_text": " MEM: [$membar] ",                                                   "color":"\#B58900"},
  ${if_up tap0}
  {"full_text": " [VPN] ",                                                           "color":"\#2AA198"},
  $endif
  ${if_up tun0}
  {"full_text": " [VPN] ",                                                           "color":"\#2AA198"},
  $endif
  ${if_up wlan0}
  {"full_text": " WLAN: ${wireless_essid wlan0} [${wireless_link_qual_perc wlan0}%] ","color":"\#2AA198"},
  $else${if_up eth1}
  {"full_text": " eth1 ",                                                             "color":"\#2AA198"},
  $else${if_up eth0}
  {"full_text": " eth0 ",                                                             "color":"\#2AA198"},
  $else
  {"full_text": " ~ no connection ",                                                  "color":"\#2AA198"},
  $endif$endif$endif
  ${if_existing /sys/class/power_supply/BAT0}
  {"full_text": " BAT: [$battery_percent%]${exec bat_charge.sh} ",                    "color":"\#7C71C4"},
  $endif
  ${if_pa_sink_muted}
  {"full_text": " SND: [XX] ",                                                   "color":"\#268BD2"},
  $else
  {"full_text": " SND: [${pa_sink_volume}%] ",                                                   "color":"\#268BD2"},
  $endif
  {"full_text": " PT ${tztime US/Pacific %H:%M} "},
  {"full_text": " PL ${tztime Europe/Warsaw %H:%M} "},
  {"full_text": " ${time WW%V.%u, %a %d %b} "},
  {"full_text": " FI ${time %H:%M} "}
]
]];
