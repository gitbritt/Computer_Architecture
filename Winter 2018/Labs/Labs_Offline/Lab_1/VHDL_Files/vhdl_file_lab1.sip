set_global_assignment -entity "vhdl_file_lab1" -library "lib_vhdl_file_lab1" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "vhdl_file_lab1" -library "lib_vhdl_file_lab1" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "vhdl_file_lab1" -library "lib_vhdl_file_lab1" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_vhdl_file_lab1" -name SPD_FILE [file join $::quartus(sip_path) "vhdl_file_lab1.spd"]

set_global_assignment -library "lib_vhdl_file_lab1" -name MISC_FILE [file join $::quartus(sip_path) "vhdl_file_lab1_sim/vhdl_file_lab1.vho"]
