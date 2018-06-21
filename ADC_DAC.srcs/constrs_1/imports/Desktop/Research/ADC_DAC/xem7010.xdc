############################################################################
# XEM7010 - Xilinx constraints file
#
# Pin mappings for the XEM7010.  Use this as a template and comment out 
# the pins that are not used in your design.  (By default, map will fail
# if this file contains constraints for signals not in your design).
#
# Copyright (c) 2004-2016 Opal Kelly Incorporated
############################################################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS True [current_design]

set_property PACKAGE_PIN P20 [get_ports {hi_muxsel}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_muxsel}]

############################################################################
## FrontPanel Host Interface
############################################################################
set_property PACKAGE_PIN Y18  [get_ports {hi_in[0]}]
set_property PACKAGE_PIN V17  [get_ports {hi_in[1]}]
set_property PACKAGE_PIN AA19 [get_ports {hi_in[2]}]
set_property PACKAGE_PIN V20  [get_ports {hi_in[3]}]
set_property PACKAGE_PIN W17  [get_ports {hi_in[4]}]
set_property PACKAGE_PIN AB20 [get_ports {hi_in[5]}]
set_property PACKAGE_PIN V19  [get_ports {hi_in[6]}]
set_property PACKAGE_PIN AA18 [get_ports {hi_in[7]}]

set_property SLEW FAST [get_ports {hi_in[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_in[*]}]

set_property PACKAGE_PIN Y21 [get_ports {hi_out[0]}]
set_property PACKAGE_PIN U20 [get_ports {hi_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_out[*]}]

set_property PACKAGE_PIN AB22 [get_ports {hi_inout[0]}]
set_property PACKAGE_PIN AB21 [get_ports {hi_inout[1]}]
set_property PACKAGE_PIN Y22  [get_ports {hi_inout[2]}]
set_property PACKAGE_PIN AA21 [get_ports {hi_inout[3]}]
set_property PACKAGE_PIN AA20 [get_ports {hi_inout[4]}]
set_property PACKAGE_PIN W22  [get_ports {hi_inout[5]}]
set_property PACKAGE_PIN W21  [get_ports {hi_inout[6]}]
set_property PACKAGE_PIN T20  [get_ports {hi_inout[7]}]
set_property PACKAGE_PIN R19  [get_ports {hi_inout[8]}]
set_property PACKAGE_PIN P19  [get_ports {hi_inout[9]}]
set_property PACKAGE_PIN U21  [get_ports {hi_inout[10]}]
set_property PACKAGE_PIN T21  [get_ports {hi_inout[11]}]
set_property PACKAGE_PIN R21  [get_ports {hi_inout[12]}]
set_property PACKAGE_PIN P21  [get_ports {hi_inout[13]}]
set_property PACKAGE_PIN R22  [get_ports {hi_inout[14]}]
set_property PACKAGE_PIN P22  [get_ports {hi_inout[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_inout[*]}]

set_property PACKAGE_PIN V22 [get_ports {hi_aa}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_aa}]


create_clock -name okHostClk -period 20.83 [get_ports {hi_in[0]}]

set_input_delay -add_delay -max -clock [get_clocks {okHostClk}]  11.000 [get_ports {hi_inout[*]}]
set_input_delay -add_delay -min -clock [get_clocks {okHostClk}]  0.000  [get_ports {hi_inout[*]}]
set_multicycle_path -setup -from [get_ports {hi_inout[*]}] 2

set_input_delay -add_delay -max -clock [get_clocks {okHostClk}]  6.700 [get_ports {hi_in[*]}]
set_input_delay -add_delay -min -clock [get_clocks {okHostClk}]  0.000 [get_ports {hi_in[*]}]
set_multicycle_path -setup -from [get_ports {hi_in[*]}] 2

set_output_delay -add_delay -clock [get_clocks {okHostClk}]  8.900 [get_ports {hi_out[*]}]

set_output_delay -add_delay -clock [get_clocks {okHostClk}]  9.200 [get_ports {hi_inout[*]}]


set_property IOSTANDARD LVDS_25 [get_ports {sys_clk_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sys_clk_n}]
set_property PACKAGE_PIN K4 [get_ports {sys_clk_p}]
set_property PACKAGE_PIN J4 [get_ports {sys_clk_n}]

# MC1-30 
set_property PACKAGE_PIN M5 [get_ports {reset_in}]
set_property IOSTANDARD LVCMOS25 [get_ports {reset_in}]

# MC1-31 
set_property PACKAGE_PIN L3 [get_ports {done}]
set_property IOSTANDARD LVCMOS25 [get_ports {done}]

# MC1-32 
set_property PACKAGE_PIN L5 [get_ports {start}]
set_property IOSTANDARD LVCMOS25 [get_ports {start}]

# MC1-63 
set_property PACKAGE_PIN E13 [get_ports {data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[5]}]

# MC2-23 
set_property PACKAGE_PIN N22 [get_ports {cnv_p}]
set_property IOSTANDARD LVCMOS25 [get_ports {cnv_p}]

# MC1-25 
set_property PACKAGE_PIN N3 [get_ports {cnv_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {cnv_n}]

# MC2-27 
set_property PACKAGE_PIN M21 [get_ports {tl}]
set_property IOSTANDARD LVCMOS25 [get_ports {tl}]

# MC2-31 
set_property PACKAGE_PIN L19 [get_ports {aclk_p}]
set_property IOSTANDARD LVDS_25 [get_ports {aclk_p}]

# MC2-33 
set_property PACKAGE_PIN L20 [get_ports {aclk_n}]
set_property IOSTANDARD LVDS_25 [get_ports {aclk_n}]

# MC2-41 
set_property PACKAGE_PIN K13 [get_ports {dco_p}]
set_property IOSTANDARD LVDS_25 [get_ports {dco_p}]

# MC2-43 
set_property PACKAGE_PIN K14 [get_ports {dco_n}]
set_property IOSTANDARD LVDS_25 [get_ports {dco_n}]

# MC2-46 
set_property PACKAGE_PIN J15 [get_ports {clk}]
set_property IOSTANDARD LVCMOS25 [get_ports {clk}]

# MC2-49 
set_property PACKAGE_PIN H17 [get_ports {da_p}]
set_property IOSTANDARD LVDS_25 [get_ports {da_p}]

# MC2-51 
set_property PACKAGE_PIN H18 [get_ports {da_n}]
set_property IOSTANDARD LVDS_25 [get_ports {da_n}]

# MC2-57 
set_property PACKAGE_PIN H22 [get_ports {tp}]
set_property IOSTANDARD LVCMOS25 [get_ports {tp}]

# MC2-59 
set_property PACKAGE_PIN H13 [get_ports {db_p}]
set_property IOSTANDARD LVDS_25 [get_ports {db_p}]

# MC2-61 
set_property PACKAGE_PIN G13 [get_ports {db_n}]
set_property IOSTANDARD LVDS_25 [get_ports {db_n}]

# MC2-65
set_property PACKAGE_PIN G22 [get_ports {data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[9]}]

# MC2-67 
set_property PACKAGE_PIN E22 [get_ports {data[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[8]}]

# MC2-68 
set_property PACKAGE_PIN E21 [get_ports {data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[2]}]

# MC2-69 
set_property PACKAGE_PIN D22 [get_ports {data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[7]}]

# MC2-70 
set_property PACKAGE_PIN D21 [get_ports {data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[3]}]

# MC2-71 
set_property PACKAGE_PIN D20 [get_ports {data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[6]}]

# MC2-72 
set_property PACKAGE_PIN C22 [get_ports {dacclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {dacclk}]

# MC2-73 
set_property PACKAGE_PIN C20 [get_ports {data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[5]}]

# MC2-74 
set_property PACKAGE_PIN B22 [get_ports {data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[0]}]

# MC2-75 
set_property PACKAGE_PIN B21 [get_ports {data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[4]}]

# MC2-76 
set_property PACKAGE_PIN A21 [get_ports {data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data[1]}]