# ------------------------------Timing Constraints ------------------------------ #
create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports sys_clk_p]
create_clock -period 100.000 -name tck -waveform {0.000 50.000} [get_ports tck]
set_input_jitter tck 1.000
set_input_delay -clock tck -clock_fall 5.000 [get_ports tdi]
set_input_delay -clock tck -clock_fall 5.000 [get_ports tms]
set_output_delay -clock tck 5.000 [get_ports tdo]
set_false_path -from [get_ports trst_n]
# ------------------------------PIN Constraints ------------------------------ #
set_property PACKAGE_PIN K22 [get_ports sys_clk_p]
set_property PACKAGE_PIN K23 [get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_n]

# Reset Constraints
set_property PACKAGE_PIN J14 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]


# JTAG Constraints
set_property PACKAGE_PIN D14 [get_ports tck]
set_property PACKAGE_PIN A13 [get_ports tms]
set_property PACKAGE_PIN G12 [get_ports tdi]
set_property PACKAGE_PIN E13 [get_ports tdo]
set_property PACKAGE_PIN C12 [get_ports trst_n]

# Set IOSTANDARD for JTAG
set_property IOSTANDARD LVCMOS33 [get_ports tck]
set_property IOSTANDARD LVCMOS33 [get_ports trst_n]
set_property IOSTANDARD LVCMOS33 [get_ports tms]
set_property IOSTANDARD LVCMOS33 [get_ports tdi]
set_property IOSTANDARD LVCMOS33 [get_ports tdo]

set_property KEEPER true [get_ports tms]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets tck_IBUF_inst/O]

# UART Constraints
set_property PACKAGE_PIN AE15 [get_ports rx_i]
set_property PACKAGE_PIN AD15 [get_ports tx_o]

# Set IOSTANDARD for UART
set_property IOSTANDARD LVCMOS33 [get_ports rx_i]
set_property IOSTANDARD LVCMOS33 [get_ports tx_o]
