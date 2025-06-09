set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {leds_0[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {leds_0[1]}]


set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports busy_0]; 

set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports O_LDAC_0]
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports O_RESET_N_0]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports O_CLR_N_0]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports I_BUSY_N_0]


set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports mosi_0]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports miso_0]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports sclk_0]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports ss_n_0]