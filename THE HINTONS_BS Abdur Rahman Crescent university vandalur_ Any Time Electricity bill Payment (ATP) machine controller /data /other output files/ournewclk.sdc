## Generated SDC file "ournewclk.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Mon Jul 10 23:07:52 2023"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {ournewclk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {ournewclk}] -rise_to [get_clocks {ournewclk}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {ournewclk}] -rise_to [get_clocks {ournewclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ournewclk}] -fall_to [get_clocks {ournewclk}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {ournewclk}] -fall_to [get_clocks {ournewclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ournewclk}] -rise_to [get_clocks {ournewclk}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {ournewclk}] -rise_to [get_clocks {ournewclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ournewclk}] -fall_to [get_clocks {ournewclk}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {ournewclk}] -fall_to [get_clocks {ournewclk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {confirm_amount}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {display_parameter}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {insert_cash_or_cheque}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {place_voucher}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {provide_bill}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {rst}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {scan_voucher}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {select_payment}]
set_input_delay -add_delay  -clock [get_clocks {ournewclk}]  1.000 [get_ports {validate_payment}]


#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

