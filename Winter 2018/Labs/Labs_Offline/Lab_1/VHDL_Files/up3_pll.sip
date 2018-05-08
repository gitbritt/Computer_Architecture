set_global_assignment -entity "up3_pll" -library "lib_up3_pll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "up3_pll" -library "lib_up3_pll" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "up3_pll" -library "lib_up3_pll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_up3_pll" -name SPD_FILE [file join $::quartus(sip_path) "up3_pll.spd"]

set_global_assignment -library "lib_up3_pll" -name MISC_FILE [file join $::quartus(sip_path) "up3_pll_sim/up3_pll.vho"]
