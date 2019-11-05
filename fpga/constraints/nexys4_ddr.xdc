# on board single-end clock, 100MHz
set_property PACKAGE_PIN E3 [get_ports clk_p]
set_property IOSTANDARD LVCMOS33 [get_ports clk_p]
create_clock -period 10.000 -waveform {0.000 5.000} [get_ports clk_p]

# JTAG clock
create_clock -period 100.000 -name shell1/BSCANE2_inst1/TCK -waveform {0.000 50.000} [get_pins shell1/BSCANE2_inst1/TCK]

## Buttons
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports cpu_resetn]

##Pmod Header JC (for JTAG adapter)
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { tck }]; #IO_L23N_T3_35 Sch=jc[1]
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { tdi }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { tdo }]; #IO_L22N_T3_35 Sch=jc[3]
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { tms }]; #IO_L19P_T3_35 Sch=jc[4]
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { trst_n }]; #IO_L6P_T0_35 Sch=jc[7]
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { JC[8] }]; #IO_L22P_T3_35 Sch=jc[8]
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { JC[9] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { fan_pwm }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]
# To work around lack of dedicated clock pin (deprecated)
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets tck_IBUF]

## Mouse
##Pmod Header JB

set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { PS2_MDATA }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { PS2_MCLK }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]

##7 segment display

set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { CA }]; #IO_L24N_T3_A00_D16_14 Sch=ca
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { CB }]; #IO_25_14 Sch=cb
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { CC }]; #IO_25_15 Sch=cc
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { CD }]; #IO_L17P_T2_A26_15 Sch=cd
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { CE }]; #IO_L13P_T2_MRCC_14 Sch=ce
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { CF }]; #IO_L19P_T3_A10_D26_14 Sch=cf
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { CG }]; #IO_L4P_T0_D04_14 Sch=cg

set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { DP }]; #IO_L19N_T3_A21_VREF_15 Sch=dp

set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L23P_T3_35 Sch=an[6]
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]

## UART
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports tx]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports rx]

## LEDs
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {led[4]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {led[5]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {led[6]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {led[7]}]

## Switches
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {sw[0]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {sw[2]}]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {sw[3]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {sw[4]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {sw[5]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {sw[6]}]
set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports {sw[7]}]

##SMSC Ethernet PHY
set_property -dict {PACKAGE_PIN C9  IOSTANDARD LVCMOS33} [get_ports eth_mdc]
set_property -dict {PACKAGE_PIN A9  IOSTANDARD LVCMOS33} [get_ports eth_mdio]
set_property -dict {PACKAGE_PIN B3  IOSTANDARD LVCMOS33} [get_ports o_erstn]
set_property -dict {PACKAGE_PIN D9  IOSTANDARD LVCMOS33} [get_ports i_erx_dv]
set_property -dict {PACKAGE_PIN C10 IOSTANDARD LVCMOS33} [get_ports i_erx_er]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS33} [get_ports {i_erxd[0]}]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports {i_erxd[1]}]
set_property -dict {PACKAGE_PIN B9  IOSTANDARD LVCMOS33} [get_ports o_etx_en]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS33} [get_ports {o_etxd[0]}]
set_property -dict {PACKAGE_PIN A8  IOSTANDARD LVCMOS33} [get_ports {o_etxd[1]}]
set_property -dict {PACKAGE_PIN D5  IOSTANDARD LVCMOS33} [get_ports o_erefclk]
set_property -dict {PACKAGE_PIN B8  IOSTANDARD LVCMOS33} [get_ports i_emdint]

#############################################
## SD Card
set_property -dict { PACKAGE_PIN B1  IOSTANDARD LVCMOS33 } [get_ports { sd_sclk }]; #IO_L11P_T1_SRCC_14 Sch=sd_sclk
set_property -dict { PACKAGE_PIN A1  IOSTANDARD LVCMOS33 } [get_ports { sd_detect }]; #IO_L8N_T1_D12_14 Sch=sd_cd
set_property -dict { PACKAGE_PIN C1  IOSTANDARD LVCMOS33 } [get_ports { sd_cmd }]; #IO_L7N_T1_D10_14 Sch=sd_cmd
set_property -dict { PACKAGE_PIN C2  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[0] }]; #IO_L10N_T1_D15_14 Sch=sd_dat[0]
set_property -dict { PACKAGE_PIN E1  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[1] }]; #IO_L9P_T1_DQS_14 Sch=sd_dat[1]
set_property -dict { PACKAGE_PIN F1  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[2] }]; #IO_L7P_T1_D09_14 Sch=sd_dat[2]
set_property -dict { PACKAGE_PIN D2  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[3] }]; #IO_L9N_T1_DQS_D13_14 Sch=sd_dat[3]
set_property -dict { PACKAGE_PIN E2  IOSTANDARD LVCMOS33 } [get_ports { sd_reset }]; #IO_L12N_T1_MRCC_12 Sch=sd_reset

# Flash/QSPI Pins
set_property PACKAGE_PIN L13 [get_ports QSPI_CSN]
set_property IOSTANDARD LVCMOS33 [get_ports QSPI_CSN]
set_property PACKAGE_PIN K17 [get_ports QSPI_D[0]]
set_property IOSTANDARD LVCMOS33 [get_ports QSPI_D[0]]
set_property PACKAGE_PIN K18 [get_ports QSPI_D[1]]
set_property IOSTANDARD LVCMOS33 [get_ports QSPI_D[1]]
set_property PACKAGE_PIN L14 [get_ports QSPI_D[2]]
set_property IOSTANDARD LVCMOS33 [get_ports QSPI_D[2]]
set_property PACKAGE_PIN M14 [get_ports QSPI_D[3]]
set_property IOSTANDARD LVCMOS33 [get_ports QSPI_D[3]]

#VGA Connector

set_property PACKAGE_PIN A3 [get_ports {VGA_RED_O[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[0]}]
set_property PACKAGE_PIN B4 [get_ports {VGA_RED_O[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[1]}]
set_property PACKAGE_PIN C5 [get_ports {VGA_RED_O[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[2]}]
set_property PACKAGE_PIN A4 [get_ports {VGA_RED_O[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[3]}]

set_property PACKAGE_PIN C6 [get_ports {VGA_GREEN_O[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[0]}]
set_property PACKAGE_PIN A5 [get_ports {VGA_GREEN_O[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[1]}]
set_property PACKAGE_PIN B6 [get_ports {VGA_GREEN_O[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[2]}]
set_property PACKAGE_PIN A6 [get_ports {VGA_GREEN_O[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[3]}]

set_property PACKAGE_PIN B7 [get_ports {VGA_BLUE_O[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[0]}]
set_property PACKAGE_PIN C7 [get_ports {VGA_BLUE_O[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[1]}]
set_property PACKAGE_PIN D7 [get_ports {VGA_BLUE_O[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[2]}]
set_property PACKAGE_PIN D8 [get_ports {VGA_BLUE_O[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[3]}]

set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports VGA_HS_O]
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports VGA_VS_O]

#USB HID (PS/2)

set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports PS2_CLK]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports PS2_DATA]

set_property INTERNAL_VREF  0.750 [get_iobanks 35]
set_property CFGBVS VCCO [current_design]
#where value1 is either VCCO or GND  
set_property CONFIG_VOLTAGE 3.3 [current_design]
#where value2 is the voltage provided to configuration bank 0 

# Nexys4DDR has a quad SPI flash
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

## JTAG
# minimize routing delay

set_max_delay -to   [get_ports { tdo } ] 20
set_max_delay -from [get_ports { tms } ] 20
set_max_delay -from [get_ports { tdi } ] 20
set_max_delay -from [get_ports { trst_n } ] 20

# reset signal
set_false_path -from [get_ports { trst_n } ]
#set_false_path -from [get_pins i_ddr/u_xlnx_mig_7_ddr3_mig/u_ddr3_infrastructure/rstdiv0_sync_r1_reg_rep/C]

# For random-number generator
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {i_ariane_peripherals/gen_gpio.rng/x0[1]}]
set_disable_timing -from I -to O \i_ariane_peripherals/gen_gpio.rng/gio[0].bufx0_inst
