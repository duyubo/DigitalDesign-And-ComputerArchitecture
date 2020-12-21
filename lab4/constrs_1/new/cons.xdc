# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

create_clock -period 10 -waveform {0 5} [get_ports clk]
# LEDs
set_property PACKAGE_PIN U14 [get_ports light[2]]
set_property PACKAGE_PIN U15 [get_ports light[1]]
set_property PACKAGE_PIN W18 [get_ports light[0]]
set_property PACKAGE_PIN U19 [get_ports light[3]]
set_property PACKAGE_PIN E19 [get_ports light[4]]
set_property PACKAGE_PIN U16 [get_ports light[5]]
set_property IOSTANDARD LVCMOS33 [get_ports  light]
# Buttons
set_property PACKAGE_PIN W19 [get_ports l]
set_property PACKAGE_PIN U18 [get_ports reset]
set_property PACKAGE_PIN T17 [get_ports r]
set_property IOSTANDARD LVCMOS33 [get_ports {l r reset}]