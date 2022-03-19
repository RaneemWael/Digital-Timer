-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/08/2019 20:26:38"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	clk_in : IN std_logic;
	reset : IN std_logic;
	pause : IN std_logic;
	left_out : BUFFER std_logic_vector(6 DOWNTO 0);
	right_out : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- left_out[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_out[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_out[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_out[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_out[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_out[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_out[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_out[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pause : std_logic;
SIGNAL ww_left_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_right_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \current_count|tmp_left[3]~33clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_out|tmp_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \left_out[0]~output_o\ : std_logic;
SIGNAL \left_out[1]~output_o\ : std_logic;
SIGNAL \left_out[2]~output_o\ : std_logic;
SIGNAL \left_out[3]~output_o\ : std_logic;
SIGNAL \left_out[4]~output_o\ : std_logic;
SIGNAL \left_out[5]~output_o\ : std_logic;
SIGNAL \left_out[6]~output_o\ : std_logic;
SIGNAL \right_out[0]~output_o\ : std_logic;
SIGNAL \right_out[1]~output_o\ : std_logic;
SIGNAL \right_out[2]~output_o\ : std_logic;
SIGNAL \right_out[3]~output_o\ : std_logic;
SIGNAL \right_out[4]~output_o\ : std_logic;
SIGNAL \right_out[5]~output_o\ : std_logic;
SIGNAL \right_out[6]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_out|Add0~0_combout\ : std_logic;
SIGNAL \clk_out|count[0]~20_combout\ : std_logic;
SIGNAL \clk_out|Add0~1\ : std_logic;
SIGNAL \clk_out|Add0~2_combout\ : std_logic;
SIGNAL \clk_out|Add0~3\ : std_logic;
SIGNAL \clk_out|Add0~4_combout\ : std_logic;
SIGNAL \clk_out|Add0~5\ : std_logic;
SIGNAL \clk_out|Add0~6_combout\ : std_logic;
SIGNAL \clk_out|Add0~7\ : std_logic;
SIGNAL \clk_out|Add0~8_combout\ : std_logic;
SIGNAL \clk_out|Equal0~1_combout\ : std_logic;
SIGNAL \clk_out|Add0~9\ : std_logic;
SIGNAL \clk_out|Add0~10_combout\ : std_logic;
SIGNAL \clk_out|Add0~11\ : std_logic;
SIGNAL \clk_out|Add0~12_combout\ : std_logic;
SIGNAL \clk_out|count~8_combout\ : std_logic;
SIGNAL \clk_out|Add0~13\ : std_logic;
SIGNAL \clk_out|Add0~14_combout\ : std_logic;
SIGNAL \clk_out|Add0~15\ : std_logic;
SIGNAL \clk_out|Add0~16_combout\ : std_logic;
SIGNAL \clk_out|Equal0~0_combout\ : std_logic;
SIGNAL \clk_out|Add0~17\ : std_logic;
SIGNAL \clk_out|Add0~18_combout\ : std_logic;
SIGNAL \clk_out|Add0~19\ : std_logic;
SIGNAL \clk_out|Add0~20_combout\ : std_logic;
SIGNAL \clk_out|Add0~21\ : std_logic;
SIGNAL \clk_out|Add0~22_combout\ : std_logic;
SIGNAL \clk_out|count~9_combout\ : std_logic;
SIGNAL \clk_out|Add0~23\ : std_logic;
SIGNAL \clk_out|Add0~24_combout\ : std_logic;
SIGNAL \clk_out|count~10_combout\ : std_logic;
SIGNAL \clk_out|Add0~25\ : std_logic;
SIGNAL \clk_out|Add0~26_combout\ : std_logic;
SIGNAL \clk_out|count~11_combout\ : std_logic;
SIGNAL \clk_out|Add0~27\ : std_logic;
SIGNAL \clk_out|Add0~28_combout\ : std_logic;
SIGNAL \clk_out|count~12_combout\ : std_logic;
SIGNAL \clk_out|Add0~29\ : std_logic;
SIGNAL \clk_out|Add0~30_combout\ : std_logic;
SIGNAL \clk_out|Equal0~3_combout\ : std_logic;
SIGNAL \clk_out|Equal0~2_combout\ : std_logic;
SIGNAL \clk_out|Equal0~4_combout\ : std_logic;
SIGNAL \clk_out|Add0~31\ : std_logic;
SIGNAL \clk_out|Add0~32_combout\ : std_logic;
SIGNAL \clk_out|count~13_combout\ : std_logic;
SIGNAL \clk_out|Add0~33\ : std_logic;
SIGNAL \clk_out|Add0~34_combout\ : std_logic;
SIGNAL \clk_out|Add0~35\ : std_logic;
SIGNAL \clk_out|Add0~36_combout\ : std_logic;
SIGNAL \clk_out|count~14_combout\ : std_logic;
SIGNAL \clk_out|Add0~37\ : std_logic;
SIGNAL \clk_out|Add0~38_combout\ : std_logic;
SIGNAL \clk_out|count~15_combout\ : std_logic;
SIGNAL \clk_out|Add0~39\ : std_logic;
SIGNAL \clk_out|Add0~40_combout\ : std_logic;
SIGNAL \clk_out|count~16_combout\ : std_logic;
SIGNAL \clk_out|Add0~41\ : std_logic;
SIGNAL \clk_out|Add0~42_combout\ : std_logic;
SIGNAL \clk_out|count~17_combout\ : std_logic;
SIGNAL \clk_out|Add0~43\ : std_logic;
SIGNAL \clk_out|Add0~44_combout\ : std_logic;
SIGNAL \clk_out|count~18_combout\ : std_logic;
SIGNAL \clk_out|Add0~45\ : std_logic;
SIGNAL \clk_out|Add0~46_combout\ : std_logic;
SIGNAL \clk_out|Equal0~6_combout\ : std_logic;
SIGNAL \clk_out|Equal0~5_combout\ : std_logic;
SIGNAL \clk_out|Add0~47\ : std_logic;
SIGNAL \clk_out|Add0~48_combout\ : std_logic;
SIGNAL \clk_out|count~19_combout\ : std_logic;
SIGNAL \clk_out|Add0~49\ : std_logic;
SIGNAL \clk_out|Add0~50_combout\ : std_logic;
SIGNAL \clk_out|Add0~51\ : std_logic;
SIGNAL \clk_out|Add0~52_combout\ : std_logic;
SIGNAL \clk_out|Add0~53\ : std_logic;
SIGNAL \clk_out|Add0~54_combout\ : std_logic;
SIGNAL \clk_out|Add0~55\ : std_logic;
SIGNAL \clk_out|Add0~56_combout\ : std_logic;
SIGNAL \clk_out|Add0~57\ : std_logic;
SIGNAL \clk_out|Add0~58_combout\ : std_logic;
SIGNAL \clk_out|Add0~59\ : std_logic;
SIGNAL \clk_out|Add0~60_combout\ : std_logic;
SIGNAL \clk_out|Add0~61\ : std_logic;
SIGNAL \clk_out|Add0~62_combout\ : std_logic;
SIGNAL \clk_out|Equal0~8_combout\ : std_logic;
SIGNAL \clk_out|Equal0~7_combout\ : std_logic;
SIGNAL \clk_out|Equal0~9_combout\ : std_logic;
SIGNAL \clk_out|tmp_out~0_combout\ : std_logic;
SIGNAL \clk_out|tmp_out~feeder_combout\ : std_logic;
SIGNAL \clk_out|tmp_out~q\ : std_logic;
SIGNAL \clk_out|tmp_out~clkctrl_outclk\ : std_logic;
SIGNAL \current_count|tmp_left[2]~38\ : std_logic;
SIGNAL \current_count|tmp_left[3]~39_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \current_count|tmp_left[3]~33_combout\ : std_logic;
SIGNAL \current_count|tmp_left[3]~33clkctrl_outclk\ : std_logic;
SIGNAL \current_count|tmp_left[6]~46\ : std_logic;
SIGNAL \current_count|tmp_left[7]~47_combout\ : std_logic;
SIGNAL \current_count|tmp_left[7]~48\ : std_logic;
SIGNAL \current_count|tmp_left[8]~49_combout\ : std_logic;
SIGNAL \current_count|tmp_left[8]~50\ : std_logic;
SIGNAL \current_count|tmp_left[9]~51_combout\ : std_logic;
SIGNAL \current_count|tmp_left[9]~52\ : std_logic;
SIGNAL \current_count|tmp_left[10]~53_combout\ : std_logic;
SIGNAL \current_count|tmp_left[10]~54\ : std_logic;
SIGNAL \current_count|tmp_left[11]~55_combout\ : std_logic;
SIGNAL \current_count|tmp_left[11]~56\ : std_logic;
SIGNAL \current_count|tmp_left[12]~57_combout\ : std_logic;
SIGNAL \current_count|tmp_left[12]~58\ : std_logic;
SIGNAL \current_count|tmp_left[13]~59_combout\ : std_logic;
SIGNAL \current_count|tmp_left[13]~60\ : std_logic;
SIGNAL \current_count|tmp_left[14]~61_combout\ : std_logic;
SIGNAL \current_count|tmp_left[14]~62\ : std_logic;
SIGNAL \current_count|tmp_left[15]~63_combout\ : std_logic;
SIGNAL \current_count|tmp_left[15]~64\ : std_logic;
SIGNAL \current_count|tmp_left[16]~65_combout\ : std_logic;
SIGNAL \current_count|tmp_left[16]~66\ : std_logic;
SIGNAL \current_count|tmp_left[17]~67_combout\ : std_logic;
SIGNAL \current_count|tmp_left[17]~68\ : std_logic;
SIGNAL \current_count|tmp_left[18]~69_combout\ : std_logic;
SIGNAL \current_count|tmp_left[18]~70\ : std_logic;
SIGNAL \current_count|tmp_left[19]~71_combout\ : std_logic;
SIGNAL \current_count|tmp_left[19]~72\ : std_logic;
SIGNAL \current_count|tmp_left[20]~73_combout\ : std_logic;
SIGNAL \current_count|tmp_left[20]~74\ : std_logic;
SIGNAL \current_count|tmp_left[21]~75_combout\ : std_logic;
SIGNAL \current_count|tmp_left[21]~76\ : std_logic;
SIGNAL \current_count|tmp_left[22]~77_combout\ : std_logic;
SIGNAL \current_count|tmp_left[22]~78\ : std_logic;
SIGNAL \current_count|tmp_left[23]~79_combout\ : std_logic;
SIGNAL \current_count|tmp_left[23]~80\ : std_logic;
SIGNAL \current_count|tmp_left[24]~81_combout\ : std_logic;
SIGNAL \current_count|tmp_left[24]~82\ : std_logic;
SIGNAL \current_count|tmp_left[25]~83_combout\ : std_logic;
SIGNAL \current_count|tmp_left[25]~84\ : std_logic;
SIGNAL \current_count|tmp_left[26]~85_combout\ : std_logic;
SIGNAL \current_count|tmp_left[26]~86\ : std_logic;
SIGNAL \current_count|tmp_left[27]~87_combout\ : std_logic;
SIGNAL \current_count|process_0~7_combout\ : std_logic;
SIGNAL \current_count|process_0~5_combout\ : std_logic;
SIGNAL \current_count|tmp_left[27]~88\ : std_logic;
SIGNAL \current_count|tmp_left[28]~89_combout\ : std_logic;
SIGNAL \current_count|tmp_left[28]~90\ : std_logic;
SIGNAL \current_count|tmp_left[29]~91_combout\ : std_logic;
SIGNAL \current_count|tmp_left[29]~92\ : std_logic;
SIGNAL \current_count|tmp_left[30]~93_combout\ : std_logic;
SIGNAL \current_count|tmp_left[30]~94\ : std_logic;
SIGNAL \current_count|tmp_left[31]~95_combout\ : std_logic;
SIGNAL \current_count|process_0~8_combout\ : std_logic;
SIGNAL \current_count|process_0~6_combout\ : std_logic;
SIGNAL \current_count|process_0~9_combout\ : std_logic;
SIGNAL \current_count|tmp_left[3]~36_combout\ : std_logic;
SIGNAL \current_count|tmp_left[3]~40\ : std_logic;
SIGNAL \current_count|tmp_left[4]~41_combout\ : std_logic;
SIGNAL \current_count|tmp_left[4]~42\ : std_logic;
SIGNAL \current_count|tmp_left[5]~43_combout\ : std_logic;
SIGNAL \current_count|tmp_left[5]~44\ : std_logic;
SIGNAL \current_count|tmp_left[6]~45_combout\ : std_logic;
SIGNAL \current_count|process_0~1_combout\ : std_logic;
SIGNAL \current_count|tmp_left[1]~34_combout\ : std_logic;
SIGNAL \current_count|process_0~0_combout\ : std_logic;
SIGNAL \current_count|process_0~2_combout\ : std_logic;
SIGNAL \current_count|process_0~3_combout\ : std_logic;
SIGNAL \current_count|process_0~4_combout\ : std_logic;
SIGNAL \current_count|tmp_left[3]~31_combout\ : std_logic;
SIGNAL \current_count|Add1~0_combout\ : std_logic;
SIGNAL \current_count|Add1~1\ : std_logic;
SIGNAL \current_count|Add1~2_combout\ : std_logic;
SIGNAL \current_count|tmp_right[3]~0_combout\ : std_logic;
SIGNAL \current_count|tmp_right[1]~1_combout\ : std_logic;
SIGNAL \current_count|Add1~3\ : std_logic;
SIGNAL \current_count|Add1~4_combout\ : std_logic;
SIGNAL \current_count|Add1~5\ : std_logic;
SIGNAL \current_count|Add1~6_combout\ : std_logic;
SIGNAL \current_count|tmp_right[3]~2_combout\ : std_logic;
SIGNAL \current_count|Add1~7\ : std_logic;
SIGNAL \current_count|Add1~8_combout\ : std_logic;
SIGNAL \current_count|Equal1~9_combout\ : std_logic;
SIGNAL \current_count|Add1~9\ : std_logic;
SIGNAL \current_count|Add1~10_combout\ : std_logic;
SIGNAL \current_count|Add1~11\ : std_logic;
SIGNAL \current_count|Add1~12_combout\ : std_logic;
SIGNAL \current_count|Add1~13\ : std_logic;
SIGNAL \current_count|Add1~14_combout\ : std_logic;
SIGNAL \current_count|Add1~15\ : std_logic;
SIGNAL \current_count|Add1~16_combout\ : std_logic;
SIGNAL \current_count|Equal1~8_combout\ : std_logic;
SIGNAL \current_count|Add1~17\ : std_logic;
SIGNAL \current_count|Add1~18_combout\ : std_logic;
SIGNAL \current_count|Add1~19\ : std_logic;
SIGNAL \current_count|Add1~20_combout\ : std_logic;
SIGNAL \current_count|tmp_right[10]~feeder_combout\ : std_logic;
SIGNAL \current_count|Add1~21\ : std_logic;
SIGNAL \current_count|Add1~22_combout\ : std_logic;
SIGNAL \current_count|Add1~23\ : std_logic;
SIGNAL \current_count|Add1~24_combout\ : std_logic;
SIGNAL \current_count|tmp_right[12]~feeder_combout\ : std_logic;
SIGNAL \current_count|Add1~25\ : std_logic;
SIGNAL \current_count|Add1~26_combout\ : std_logic;
SIGNAL \current_count|Add1~27\ : std_logic;
SIGNAL \current_count|Add1~28_combout\ : std_logic;
SIGNAL \current_count|Add1~29\ : std_logic;
SIGNAL \current_count|Add1~30_combout\ : std_logic;
SIGNAL \current_count|Add1~31\ : std_logic;
SIGNAL \current_count|Add1~32_combout\ : std_logic;
SIGNAL \current_count|tmp_right[16]~feeder_combout\ : std_logic;
SIGNAL \current_count|Add1~33\ : std_logic;
SIGNAL \current_count|Add1~34_combout\ : std_logic;
SIGNAL \current_count|Add1~35\ : std_logic;
SIGNAL \current_count|Add1~36_combout\ : std_logic;
SIGNAL \current_count|Add1~37\ : std_logic;
SIGNAL \current_count|Add1~38_combout\ : std_logic;
SIGNAL \current_count|Add1~39\ : std_logic;
SIGNAL \current_count|Add1~40_combout\ : std_logic;
SIGNAL \current_count|Add1~41\ : std_logic;
SIGNAL \current_count|Add1~42_combout\ : std_logic;
SIGNAL \current_count|Add1~43\ : std_logic;
SIGNAL \current_count|Add1~44_combout\ : std_logic;
SIGNAL \current_count|tmp_right[22]~feeder_combout\ : std_logic;
SIGNAL \current_count|Add1~45\ : std_logic;
SIGNAL \current_count|Add1~46_combout\ : std_logic;
SIGNAL \current_count|Add1~47\ : std_logic;
SIGNAL \current_count|Add1~48_combout\ : std_logic;
SIGNAL \current_count|Add1~49\ : std_logic;
SIGNAL \current_count|Add1~50_combout\ : std_logic;
SIGNAL \current_count|Add1~51\ : std_logic;
SIGNAL \current_count|Add1~52_combout\ : std_logic;
SIGNAL \current_count|Add1~53\ : std_logic;
SIGNAL \current_count|Add1~54_combout\ : std_logic;
SIGNAL \current_count|Add1~55\ : std_logic;
SIGNAL \current_count|Add1~56_combout\ : std_logic;
SIGNAL \current_count|Add1~57\ : std_logic;
SIGNAL \current_count|Add1~58_combout\ : std_logic;
SIGNAL \current_count|Add1~59\ : std_logic;
SIGNAL \current_count|Add1~60_combout\ : std_logic;
SIGNAL \current_count|Add1~61\ : std_logic;
SIGNAL \current_count|Add1~62_combout\ : std_logic;
SIGNAL \current_count|Equal1~0_combout\ : std_logic;
SIGNAL \current_count|Equal1~1_combout\ : std_logic;
SIGNAL \current_count|Equal1~3_combout\ : std_logic;
SIGNAL \current_count|Equal1~2_combout\ : std_logic;
SIGNAL \current_count|Equal1~4_combout\ : std_logic;
SIGNAL \current_count|Equal1~6_combout\ : std_logic;
SIGNAL \current_count|Equal1~5_combout\ : std_logic;
SIGNAL \current_count|Equal1~7_combout\ : std_logic;
SIGNAL \current_count|Equal1~10_combout\ : std_logic;
SIGNAL \current_count|tmp_left[0]~32_combout\ : std_logic;
SIGNAL \current_count|tmp_left[1]~35\ : std_logic;
SIGNAL \current_count|tmp_left[2]~37_combout\ : std_logic;
SIGNAL \decoder1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder1|Mux0~0_combout\ : std_logic;
SIGNAL \decoder2|Mux6~0_combout\ : std_logic;
SIGNAL \decoder2|Mux5~0_combout\ : std_logic;
SIGNAL \decoder2|Mux4~0_combout\ : std_logic;
SIGNAL \decoder2|Mux3~0_combout\ : std_logic;
SIGNAL \decoder2|Mux2~0_combout\ : std_logic;
SIGNAL \decoder2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder2|Mux0~0_combout\ : std_logic;
SIGNAL \current_count|tmp_left\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \current_count|tmp_right\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_out|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\ : std_logic;
SIGNAL \decoder2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_reset <= reset;
ww_pause <= pause;
left_out <= ww_left_out;
right_out <= ww_right_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\current_count|tmp_left[3]~33clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \current_count|tmp_left[3]~33_combout\);

\clk_out|tmp_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_out|tmp_out~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\ <= NOT \current_count|tmp_left[3]~33clkctrl_outclk\;
\decoder2|ALT_INV_Mux0~0_combout\ <= NOT \decoder2|Mux0~0_combout\;
\decoder1|ALT_INV_Mux0~0_combout\ <= NOT \decoder1|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X69_Y54_N23
\left_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \left_out[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\left_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \left_out[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\left_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \left_out[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\left_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \left_out[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\left_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \left_out[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\left_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \left_out[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\left_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \left_out[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\right_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \right_out[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\right_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \right_out[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\right_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \right_out[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\right_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \right_out[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\right_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \right_out[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\right_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \right_out[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\right_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \right_out[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G19
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y46_N0
\clk_out|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~0_combout\ = \clk_out|count\(0) $ (GND)
-- \clk_out|Add0~1\ = CARRY(!\clk_out|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(0),
	datad => VCC,
	combout => \clk_out|Add0~0_combout\,
	cout => \clk_out|Add0~1\);

-- Location: LCCOMB_X50_Y46_N26
\clk_out|count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count[0]~20_combout\ = !\clk_out|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_out|Add0~0_combout\,
	combout => \clk_out|count[0]~20_combout\);

-- Location: FF_X51_Y46_N29
\clk_out|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \clk_out|count[0]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(0));

-- Location: LCCOMB_X51_Y46_N2
\clk_out|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~2_combout\ = (\clk_out|count\(1) & (!\clk_out|Add0~1\)) # (!\clk_out|count\(1) & ((\clk_out|Add0~1\) # (GND)))
-- \clk_out|Add0~3\ = CARRY((!\clk_out|Add0~1\) # (!\clk_out|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(1),
	datad => VCC,
	cin => \clk_out|Add0~1\,
	combout => \clk_out|Add0~2_combout\,
	cout => \clk_out|Add0~3\);

-- Location: FF_X51_Y46_N3
\clk_out|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(1));

-- Location: LCCOMB_X51_Y46_N4
\clk_out|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~4_combout\ = (\clk_out|count\(2) & (\clk_out|Add0~3\ $ (GND))) # (!\clk_out|count\(2) & (!\clk_out|Add0~3\ & VCC))
-- \clk_out|Add0~5\ = CARRY((\clk_out|count\(2) & !\clk_out|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(2),
	datad => VCC,
	cin => \clk_out|Add0~3\,
	combout => \clk_out|Add0~4_combout\,
	cout => \clk_out|Add0~5\);

-- Location: FF_X51_Y46_N5
\clk_out|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(2));

-- Location: LCCOMB_X51_Y46_N6
\clk_out|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~6_combout\ = (\clk_out|count\(3) & (!\clk_out|Add0~5\)) # (!\clk_out|count\(3) & ((\clk_out|Add0~5\) # (GND)))
-- \clk_out|Add0~7\ = CARRY((!\clk_out|Add0~5\) # (!\clk_out|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(3),
	datad => VCC,
	cin => \clk_out|Add0~5\,
	combout => \clk_out|Add0~6_combout\,
	cout => \clk_out|Add0~7\);

-- Location: FF_X51_Y46_N7
\clk_out|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(3));

-- Location: LCCOMB_X51_Y46_N8
\clk_out|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~8_combout\ = (\clk_out|count\(4) & (\clk_out|Add0~7\ $ (GND))) # (!\clk_out|count\(4) & (!\clk_out|Add0~7\ & VCC))
-- \clk_out|Add0~9\ = CARRY((\clk_out|count\(4) & !\clk_out|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(4),
	datad => VCC,
	cin => \clk_out|Add0~7\,
	combout => \clk_out|Add0~8_combout\,
	cout => \clk_out|Add0~9\);

-- Location: FF_X51_Y46_N9
\clk_out|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(4));

-- Location: LCCOMB_X50_Y46_N22
\clk_out|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~1_combout\ = (!\clk_out|count\(1) & (!\clk_out|count\(4) & (!\clk_out|count\(2) & !\clk_out|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(1),
	datab => \clk_out|count\(4),
	datac => \clk_out|count\(2),
	datad => \clk_out|count\(3),
	combout => \clk_out|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y46_N10
\clk_out|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~10_combout\ = (\clk_out|count\(5) & (!\clk_out|Add0~9\)) # (!\clk_out|count\(5) & ((\clk_out|Add0~9\) # (GND)))
-- \clk_out|Add0~11\ = CARRY((!\clk_out|Add0~9\) # (!\clk_out|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(5),
	datad => VCC,
	cin => \clk_out|Add0~9\,
	combout => \clk_out|Add0~10_combout\,
	cout => \clk_out|Add0~11\);

-- Location: FF_X51_Y46_N11
\clk_out|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(5));

-- Location: LCCOMB_X51_Y46_N12
\clk_out|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~12_combout\ = (\clk_out|count\(6) & (\clk_out|Add0~11\ $ (GND))) # (!\clk_out|count\(6) & (!\clk_out|Add0~11\ & VCC))
-- \clk_out|Add0~13\ = CARRY((\clk_out|count\(6) & !\clk_out|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(6),
	datad => VCC,
	cin => \clk_out|Add0~11\,
	combout => \clk_out|Add0~12_combout\,
	cout => \clk_out|Add0~13\);

-- Location: LCCOMB_X50_Y45_N24
\clk_out|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~8_combout\ = (\clk_out|Add0~12_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~12_combout\,
	combout => \clk_out|count~8_combout\);

-- Location: FF_X50_Y45_N25
\clk_out|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(6));

-- Location: LCCOMB_X51_Y46_N14
\clk_out|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~14_combout\ = (\clk_out|count\(7) & (!\clk_out|Add0~13\)) # (!\clk_out|count\(7) & ((\clk_out|Add0~13\) # (GND)))
-- \clk_out|Add0~15\ = CARRY((!\clk_out|Add0~13\) # (!\clk_out|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(7),
	datad => VCC,
	cin => \clk_out|Add0~13\,
	combout => \clk_out|Add0~14_combout\,
	cout => \clk_out|Add0~15\);

-- Location: FF_X51_Y46_N15
\clk_out|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(7));

-- Location: LCCOMB_X51_Y46_N16
\clk_out|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~16_combout\ = (\clk_out|count\(8) & (\clk_out|Add0~15\ $ (GND))) # (!\clk_out|count\(8) & (!\clk_out|Add0~15\ & VCC))
-- \clk_out|Add0~17\ = CARRY((\clk_out|count\(8) & !\clk_out|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(8),
	datad => VCC,
	cin => \clk_out|Add0~15\,
	combout => \clk_out|Add0~16_combout\,
	cout => \clk_out|Add0~17\);

-- Location: FF_X51_Y46_N17
\clk_out|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(8));

-- Location: LCCOMB_X50_Y46_N28
\clk_out|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~0_combout\ = (!\clk_out|count\(5) & (!\clk_out|count\(8) & (!\clk_out|count\(7) & \clk_out|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(5),
	datab => \clk_out|count\(8),
	datac => \clk_out|count\(7),
	datad => \clk_out|count\(6),
	combout => \clk_out|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y46_N18
\clk_out|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~18_combout\ = (\clk_out|count\(9) & (!\clk_out|Add0~17\)) # (!\clk_out|count\(9) & ((\clk_out|Add0~17\) # (GND)))
-- \clk_out|Add0~19\ = CARRY((!\clk_out|Add0~17\) # (!\clk_out|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(9),
	datad => VCC,
	cin => \clk_out|Add0~17\,
	combout => \clk_out|Add0~18_combout\,
	cout => \clk_out|Add0~19\);

-- Location: FF_X51_Y46_N19
\clk_out|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(9));

-- Location: LCCOMB_X51_Y46_N20
\clk_out|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~20_combout\ = (\clk_out|count\(10) & (\clk_out|Add0~19\ $ (GND))) # (!\clk_out|count\(10) & (!\clk_out|Add0~19\ & VCC))
-- \clk_out|Add0~21\ = CARRY((\clk_out|count\(10) & !\clk_out|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(10),
	datad => VCC,
	cin => \clk_out|Add0~19\,
	combout => \clk_out|Add0~20_combout\,
	cout => \clk_out|Add0~21\);

-- Location: FF_X51_Y46_N21
\clk_out|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(10));

-- Location: LCCOMB_X51_Y46_N22
\clk_out|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~22_combout\ = (\clk_out|count\(11) & (!\clk_out|Add0~21\)) # (!\clk_out|count\(11) & ((\clk_out|Add0~21\) # (GND)))
-- \clk_out|Add0~23\ = CARRY((!\clk_out|Add0~21\) # (!\clk_out|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(11),
	datad => VCC,
	cin => \clk_out|Add0~21\,
	combout => \clk_out|Add0~22_combout\,
	cout => \clk_out|Add0~23\);

-- Location: LCCOMB_X50_Y45_N10
\clk_out|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~9_combout\ = (\clk_out|Add0~22_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~22_combout\,
	combout => \clk_out|count~9_combout\);

-- Location: FF_X50_Y45_N11
\clk_out|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(11));

-- Location: LCCOMB_X51_Y46_N24
\clk_out|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~24_combout\ = (\clk_out|count\(12) & (\clk_out|Add0~23\ $ (GND))) # (!\clk_out|count\(12) & (!\clk_out|Add0~23\ & VCC))
-- \clk_out|Add0~25\ = CARRY((\clk_out|count\(12) & !\clk_out|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(12),
	datad => VCC,
	cin => \clk_out|Add0~23\,
	combout => \clk_out|Add0~24_combout\,
	cout => \clk_out|Add0~25\);

-- Location: LCCOMB_X50_Y45_N20
\clk_out|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~10_combout\ = (\clk_out|Add0~24_combout\ & ((!\clk_out|Equal0~4_combout\) # (!\clk_out|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~9_combout\,
	datac => \clk_out|Add0~24_combout\,
	datad => \clk_out|Equal0~4_combout\,
	combout => \clk_out|count~10_combout\);

-- Location: FF_X50_Y45_N21
\clk_out|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(12));

-- Location: LCCOMB_X51_Y46_N26
\clk_out|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~26_combout\ = (\clk_out|count\(13) & (!\clk_out|Add0~25\)) # (!\clk_out|count\(13) & ((\clk_out|Add0~25\) # (GND)))
-- \clk_out|Add0~27\ = CARRY((!\clk_out|Add0~25\) # (!\clk_out|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(13),
	datad => VCC,
	cin => \clk_out|Add0~25\,
	combout => \clk_out|Add0~26_combout\,
	cout => \clk_out|Add0~27\);

-- Location: LCCOMB_X50_Y45_N18
\clk_out|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~11_combout\ = (\clk_out|Add0~26_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~26_combout\,
	combout => \clk_out|count~11_combout\);

-- Location: FF_X50_Y45_N19
\clk_out|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(13));

-- Location: LCCOMB_X51_Y46_N28
\clk_out|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~28_combout\ = (\clk_out|count\(14) & (\clk_out|Add0~27\ $ (GND))) # (!\clk_out|count\(14) & (!\clk_out|Add0~27\ & VCC))
-- \clk_out|Add0~29\ = CARRY((\clk_out|count\(14) & !\clk_out|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(14),
	datad => VCC,
	cin => \clk_out|Add0~27\,
	combout => \clk_out|Add0~28_combout\,
	cout => \clk_out|Add0~29\);

-- Location: LCCOMB_X50_Y45_N0
\clk_out|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~12_combout\ = (\clk_out|Add0~28_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~28_combout\,
	combout => \clk_out|count~12_combout\);

-- Location: FF_X50_Y45_N1
\clk_out|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(14));

-- Location: LCCOMB_X51_Y46_N30
\clk_out|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~30_combout\ = (\clk_out|count\(15) & (!\clk_out|Add0~29\)) # (!\clk_out|count\(15) & ((\clk_out|Add0~29\) # (GND)))
-- \clk_out|Add0~31\ = CARRY((!\clk_out|Add0~29\) # (!\clk_out|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(15),
	datad => VCC,
	cin => \clk_out|Add0~29\,
	combout => \clk_out|Add0~30_combout\,
	cout => \clk_out|Add0~31\);

-- Location: FF_X51_Y46_N31
\clk_out|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(15));

-- Location: LCCOMB_X50_Y46_N30
\clk_out|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~3_combout\ = (!\clk_out|count\(15) & (\clk_out|count\(14) & (\clk_out|count\(13) & \clk_out|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(15),
	datab => \clk_out|count\(14),
	datac => \clk_out|count\(13),
	datad => \clk_out|count\(12),
	combout => \clk_out|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y46_N12
\clk_out|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~2_combout\ = (!\clk_out|count\(10) & (!\clk_out|count\(9) & (\clk_out|count\(0) & \clk_out|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(10),
	datab => \clk_out|count\(9),
	datac => \clk_out|count\(0),
	datad => \clk_out|count\(11),
	combout => \clk_out|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y46_N8
\clk_out|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~4_combout\ = (\clk_out|Equal0~1_combout\ & (\clk_out|Equal0~0_combout\ & (\clk_out|Equal0~3_combout\ & \clk_out|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~1_combout\,
	datab => \clk_out|Equal0~0_combout\,
	datac => \clk_out|Equal0~3_combout\,
	datad => \clk_out|Equal0~2_combout\,
	combout => \clk_out|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y45_N0
\clk_out|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~32_combout\ = (\clk_out|count\(16) & (\clk_out|Add0~31\ $ (GND))) # (!\clk_out|count\(16) & (!\clk_out|Add0~31\ & VCC))
-- \clk_out|Add0~33\ = CARRY((\clk_out|count\(16) & !\clk_out|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(16),
	datad => VCC,
	cin => \clk_out|Add0~31\,
	combout => \clk_out|Add0~32_combout\,
	cout => \clk_out|Add0~33\);

-- Location: LCCOMB_X50_Y45_N26
\clk_out|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~13_combout\ = (\clk_out|Add0~32_combout\ & ((!\clk_out|Equal0~4_combout\) # (!\clk_out|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~9_combout\,
	datac => \clk_out|Add0~32_combout\,
	datad => \clk_out|Equal0~4_combout\,
	combout => \clk_out|count~13_combout\);

-- Location: FF_X50_Y45_N27
\clk_out|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(16));

-- Location: LCCOMB_X51_Y45_N2
\clk_out|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~34_combout\ = (\clk_out|count\(17) & (!\clk_out|Add0~33\)) # (!\clk_out|count\(17) & ((\clk_out|Add0~33\) # (GND)))
-- \clk_out|Add0~35\ = CARRY((!\clk_out|Add0~33\) # (!\clk_out|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(17),
	datad => VCC,
	cin => \clk_out|Add0~33\,
	combout => \clk_out|Add0~34_combout\,
	cout => \clk_out|Add0~35\);

-- Location: FF_X51_Y45_N3
\clk_out|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(17));

-- Location: LCCOMB_X51_Y45_N4
\clk_out|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~36_combout\ = (\clk_out|count\(18) & (\clk_out|Add0~35\ $ (GND))) # (!\clk_out|count\(18) & (!\clk_out|Add0~35\ & VCC))
-- \clk_out|Add0~37\ = CARRY((\clk_out|count\(18) & !\clk_out|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(18),
	datad => VCC,
	cin => \clk_out|Add0~35\,
	combout => \clk_out|Add0~36_combout\,
	cout => \clk_out|Add0~37\);

-- Location: LCCOMB_X50_Y45_N16
\clk_out|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~14_combout\ = (\clk_out|Add0~36_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~36_combout\,
	combout => \clk_out|count~14_combout\);

-- Location: FF_X50_Y45_N17
\clk_out|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(18));

-- Location: LCCOMB_X51_Y45_N6
\clk_out|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~38_combout\ = (\clk_out|count\(19) & (!\clk_out|Add0~37\)) # (!\clk_out|count\(19) & ((\clk_out|Add0~37\) # (GND)))
-- \clk_out|Add0~39\ = CARRY((!\clk_out|Add0~37\) # (!\clk_out|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(19),
	datad => VCC,
	cin => \clk_out|Add0~37\,
	combout => \clk_out|Add0~38_combout\,
	cout => \clk_out|Add0~39\);

-- Location: LCCOMB_X50_Y45_N14
\clk_out|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~15_combout\ = (\clk_out|Add0~38_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~38_combout\,
	combout => \clk_out|count~15_combout\);

-- Location: FF_X50_Y45_N15
\clk_out|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(19));

-- Location: LCCOMB_X51_Y45_N8
\clk_out|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~40_combout\ = (\clk_out|count\(20) & (\clk_out|Add0~39\ $ (GND))) # (!\clk_out|count\(20) & (!\clk_out|Add0~39\ & VCC))
-- \clk_out|Add0~41\ = CARRY((\clk_out|count\(20) & !\clk_out|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(20),
	datad => VCC,
	cin => \clk_out|Add0~39\,
	combout => \clk_out|Add0~40_combout\,
	cout => \clk_out|Add0~41\);

-- Location: LCCOMB_X50_Y45_N22
\clk_out|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~16_combout\ = (\clk_out|Add0~40_combout\ & ((!\clk_out|Equal0~4_combout\) # (!\clk_out|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~9_combout\,
	datac => \clk_out|Add0~40_combout\,
	datad => \clk_out|Equal0~4_combout\,
	combout => \clk_out|count~16_combout\);

-- Location: FF_X50_Y45_N23
\clk_out|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(20));

-- Location: LCCOMB_X51_Y45_N10
\clk_out|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~42_combout\ = (\clk_out|count\(21) & (!\clk_out|Add0~41\)) # (!\clk_out|count\(21) & ((\clk_out|Add0~41\) # (GND)))
-- \clk_out|Add0~43\ = CARRY((!\clk_out|Add0~41\) # (!\clk_out|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(21),
	datad => VCC,
	cin => \clk_out|Add0~41\,
	combout => \clk_out|Add0~42_combout\,
	cout => \clk_out|Add0~43\);

-- Location: LCCOMB_X50_Y45_N8
\clk_out|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~17_combout\ = (\clk_out|Add0~42_combout\ & ((!\clk_out|Equal0~4_combout\) # (!\clk_out|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~9_combout\,
	datac => \clk_out|Add0~42_combout\,
	datad => \clk_out|Equal0~4_combout\,
	combout => \clk_out|count~17_combout\);

-- Location: FF_X50_Y45_N9
\clk_out|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(21));

-- Location: LCCOMB_X51_Y45_N12
\clk_out|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~44_combout\ = (\clk_out|count\(22) & (\clk_out|Add0~43\ $ (GND))) # (!\clk_out|count\(22) & (!\clk_out|Add0~43\ & VCC))
-- \clk_out|Add0~45\ = CARRY((\clk_out|count\(22) & !\clk_out|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(22),
	datad => VCC,
	cin => \clk_out|Add0~43\,
	combout => \clk_out|Add0~44_combout\,
	cout => \clk_out|Add0~45\);

-- Location: LCCOMB_X50_Y45_N2
\clk_out|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~18_combout\ = (\clk_out|Add0~44_combout\ & ((!\clk_out|Equal0~4_combout\) # (!\clk_out|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~9_combout\,
	datac => \clk_out|Add0~44_combout\,
	datad => \clk_out|Equal0~4_combout\,
	combout => \clk_out|count~18_combout\);

-- Location: FF_X50_Y45_N3
\clk_out|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(22));

-- Location: LCCOMB_X51_Y45_N14
\clk_out|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~46_combout\ = (\clk_out|count\(23) & (!\clk_out|Add0~45\)) # (!\clk_out|count\(23) & ((\clk_out|Add0~45\) # (GND)))
-- \clk_out|Add0~47\ = CARRY((!\clk_out|Add0~45\) # (!\clk_out|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(23),
	datad => VCC,
	cin => \clk_out|Add0~45\,
	combout => \clk_out|Add0~46_combout\,
	cout => \clk_out|Add0~47\);

-- Location: FF_X51_Y45_N15
\clk_out|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(23));

-- Location: LCCOMB_X50_Y45_N12
\clk_out|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~6_combout\ = (\clk_out|count\(20) & (\clk_out|count\(21) & (!\clk_out|count\(23) & \clk_out|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(20),
	datab => \clk_out|count\(21),
	datac => \clk_out|count\(23),
	datad => \clk_out|count\(22),
	combout => \clk_out|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y45_N28
\clk_out|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~5_combout\ = (\clk_out|count\(16) & (\clk_out|count\(18) & (\clk_out|count\(19) & !\clk_out|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(16),
	datab => \clk_out|count\(18),
	datac => \clk_out|count\(19),
	datad => \clk_out|count\(17),
	combout => \clk_out|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y45_N16
\clk_out|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~48_combout\ = (\clk_out|count\(24) & (\clk_out|Add0~47\ $ (GND))) # (!\clk_out|count\(24) & (!\clk_out|Add0~47\ & VCC))
-- \clk_out|Add0~49\ = CARRY((\clk_out|count\(24) & !\clk_out|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(24),
	datad => VCC,
	cin => \clk_out|Add0~47\,
	combout => \clk_out|Add0~48_combout\,
	cout => \clk_out|Add0~49\);

-- Location: LCCOMB_X50_Y45_N6
\clk_out|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|count~19_combout\ = (\clk_out|Add0~48_combout\ & ((!\clk_out|Equal0~9_combout\) # (!\clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|Equal0~4_combout\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Add0~48_combout\,
	combout => \clk_out|count~19_combout\);

-- Location: FF_X50_Y45_N7
\clk_out|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(24));

-- Location: LCCOMB_X51_Y45_N18
\clk_out|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~50_combout\ = (\clk_out|count\(25) & (!\clk_out|Add0~49\)) # (!\clk_out|count\(25) & ((\clk_out|Add0~49\) # (GND)))
-- \clk_out|Add0~51\ = CARRY((!\clk_out|Add0~49\) # (!\clk_out|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(25),
	datad => VCC,
	cin => \clk_out|Add0~49\,
	combout => \clk_out|Add0~50_combout\,
	cout => \clk_out|Add0~51\);

-- Location: FF_X51_Y45_N19
\clk_out|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(25));

-- Location: LCCOMB_X51_Y45_N20
\clk_out|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~52_combout\ = (\clk_out|count\(26) & (\clk_out|Add0~51\ $ (GND))) # (!\clk_out|count\(26) & (!\clk_out|Add0~51\ & VCC))
-- \clk_out|Add0~53\ = CARRY((\clk_out|count\(26) & !\clk_out|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(26),
	datad => VCC,
	cin => \clk_out|Add0~51\,
	combout => \clk_out|Add0~52_combout\,
	cout => \clk_out|Add0~53\);

-- Location: FF_X51_Y45_N21
\clk_out|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(26));

-- Location: LCCOMB_X51_Y45_N22
\clk_out|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~54_combout\ = (\clk_out|count\(27) & (!\clk_out|Add0~53\)) # (!\clk_out|count\(27) & ((\clk_out|Add0~53\) # (GND)))
-- \clk_out|Add0~55\ = CARRY((!\clk_out|Add0~53\) # (!\clk_out|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(27),
	datad => VCC,
	cin => \clk_out|Add0~53\,
	combout => \clk_out|Add0~54_combout\,
	cout => \clk_out|Add0~55\);

-- Location: FF_X51_Y45_N23
\clk_out|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(27));

-- Location: LCCOMB_X51_Y45_N24
\clk_out|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~56_combout\ = (\clk_out|count\(28) & (\clk_out|Add0~55\ $ (GND))) # (!\clk_out|count\(28) & (!\clk_out|Add0~55\ & VCC))
-- \clk_out|Add0~57\ = CARRY((\clk_out|count\(28) & !\clk_out|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(28),
	datad => VCC,
	cin => \clk_out|Add0~55\,
	combout => \clk_out|Add0~56_combout\,
	cout => \clk_out|Add0~57\);

-- Location: FF_X51_Y45_N25
\clk_out|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(28));

-- Location: LCCOMB_X51_Y45_N26
\clk_out|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~58_combout\ = (\clk_out|count\(29) & (!\clk_out|Add0~57\)) # (!\clk_out|count\(29) & ((\clk_out|Add0~57\) # (GND)))
-- \clk_out|Add0~59\ = CARRY((!\clk_out|Add0~57\) # (!\clk_out|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(29),
	datad => VCC,
	cin => \clk_out|Add0~57\,
	combout => \clk_out|Add0~58_combout\,
	cout => \clk_out|Add0~59\);

-- Location: FF_X51_Y45_N27
\clk_out|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(29));

-- Location: LCCOMB_X51_Y45_N28
\clk_out|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~60_combout\ = (\clk_out|count\(30) & (\clk_out|Add0~59\ $ (GND))) # (!\clk_out|count\(30) & (!\clk_out|Add0~59\ & VCC))
-- \clk_out|Add0~61\ = CARRY((\clk_out|count\(30) & !\clk_out|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|count\(30),
	datad => VCC,
	cin => \clk_out|Add0~59\,
	combout => \clk_out|Add0~60_combout\,
	cout => \clk_out|Add0~61\);

-- Location: FF_X51_Y45_N29
\clk_out|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(30));

-- Location: LCCOMB_X51_Y45_N30
\clk_out|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Add0~62_combout\ = \clk_out|count\(31) $ (\clk_out|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(31),
	cin => \clk_out|Add0~61\,
	combout => \clk_out|Add0~62_combout\);

-- Location: FF_X51_Y45_N31
\clk_out|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|count\(31));

-- Location: LCCOMB_X50_Y45_N4
\clk_out|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~8_combout\ = (!\clk_out|count\(29) & (!\clk_out|count\(30) & (!\clk_out|count\(28) & !\clk_out|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(29),
	datab => \clk_out|count\(30),
	datac => \clk_out|count\(28),
	datad => \clk_out|count\(31),
	combout => \clk_out|Equal0~8_combout\);

-- Location: LCCOMB_X52_Y45_N28
\clk_out|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~7_combout\ = (\clk_out|count\(24) & (!\clk_out|count\(25) & (!\clk_out|count\(26) & !\clk_out|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|count\(24),
	datab => \clk_out|count\(25),
	datac => \clk_out|count\(26),
	datad => \clk_out|count\(27),
	combout => \clk_out|Equal0~7_combout\);

-- Location: LCCOMB_X50_Y45_N30
\clk_out|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|Equal0~9_combout\ = (\clk_out|Equal0~6_combout\ & (\clk_out|Equal0~5_combout\ & (\clk_out|Equal0~8_combout\ & \clk_out|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out|Equal0~6_combout\,
	datab => \clk_out|Equal0~5_combout\,
	datac => \clk_out|Equal0~8_combout\,
	datad => \clk_out|Equal0~7_combout\,
	combout => \clk_out|Equal0~9_combout\);

-- Location: LCCOMB_X49_Y45_N10
\clk_out|tmp_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|tmp_out~0_combout\ = \clk_out|tmp_out~q\ $ (((\clk_out|Equal0~9_combout\ & \clk_out|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|tmp_out~q\,
	datac => \clk_out|Equal0~9_combout\,
	datad => \clk_out|Equal0~4_combout\,
	combout => \clk_out|tmp_out~0_combout\);

-- Location: LCCOMB_X49_Y45_N0
\clk_out|tmp_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out|tmp_out~feeder_combout\ = \clk_out|tmp_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out|tmp_out~0_combout\,
	combout => \clk_out|tmp_out~feeder_combout\);

-- Location: FF_X49_Y45_N1
\clk_out|tmp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clk_out|tmp_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out|tmp_out~q\);

-- Location: CLKCTRL_G11
\clk_out|tmp_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_out|tmp_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_out|tmp_out~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y50_N4
\current_count|tmp_left[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[2]~37_combout\ = (\current_count|tmp_left\(2) & (!\current_count|tmp_left[1]~35\)) # (!\current_count|tmp_left\(2) & ((\current_count|tmp_left[1]~35\) # (GND)))
-- \current_count|tmp_left[2]~38\ = CARRY((!\current_count|tmp_left[1]~35\) # (!\current_count|tmp_left\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(2),
	datad => VCC,
	cin => \current_count|tmp_left[1]~35\,
	combout => \current_count|tmp_left[2]~37_combout\,
	cout => \current_count|tmp_left[2]~38\);

-- Location: LCCOMB_X58_Y50_N6
\current_count|tmp_left[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[3]~39_combout\ = (\current_count|tmp_left\(3) & (\current_count|tmp_left[2]~38\ $ (GND))) # (!\current_count|tmp_left\(3) & (!\current_count|tmp_left[2]~38\ & VCC))
-- \current_count|tmp_left[3]~40\ = CARRY((\current_count|tmp_left\(3) & !\current_count|tmp_left[2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(3),
	datad => VCC,
	cin => \current_count|tmp_left[2]~38\,
	combout => \current_count|tmp_left[3]~39_combout\,
	cout => \current_count|tmp_left[3]~40\);

-- Location: IOIBUF_X49_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\pause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: LCCOMB_X49_Y52_N24
\current_count|tmp_left[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[3]~33_combout\ = (!\reset~input_o\ & !\pause~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \pause~input_o\,
	combout => \current_count|tmp_left[3]~33_combout\);

-- Location: CLKCTRL_G13
\current_count|tmp_left[3]~33clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \current_count|tmp_left[3]~33clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \current_count|tmp_left[3]~33clkctrl_outclk\);

-- Location: LCCOMB_X58_Y50_N12
\current_count|tmp_left[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[6]~45_combout\ = (\current_count|tmp_left\(6) & (!\current_count|tmp_left[5]~44\)) # (!\current_count|tmp_left\(6) & ((\current_count|tmp_left[5]~44\) # (GND)))
-- \current_count|tmp_left[6]~46\ = CARRY((!\current_count|tmp_left[5]~44\) # (!\current_count|tmp_left\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(6),
	datad => VCC,
	cin => \current_count|tmp_left[5]~44\,
	combout => \current_count|tmp_left[6]~45_combout\,
	cout => \current_count|tmp_left[6]~46\);

-- Location: LCCOMB_X58_Y50_N14
\current_count|tmp_left[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[7]~47_combout\ = (\current_count|tmp_left\(7) & (\current_count|tmp_left[6]~46\ $ (GND))) # (!\current_count|tmp_left\(7) & (!\current_count|tmp_left[6]~46\ & VCC))
-- \current_count|tmp_left[7]~48\ = CARRY((\current_count|tmp_left\(7) & !\current_count|tmp_left[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(7),
	datad => VCC,
	cin => \current_count|tmp_left[6]~46\,
	combout => \current_count|tmp_left[7]~47_combout\,
	cout => \current_count|tmp_left[7]~48\);

-- Location: FF_X58_Y50_N15
\current_count|tmp_left[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[7]~47_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(7));

-- Location: LCCOMB_X58_Y50_N16
\current_count|tmp_left[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[8]~49_combout\ = (\current_count|tmp_left\(8) & (!\current_count|tmp_left[7]~48\)) # (!\current_count|tmp_left\(8) & ((\current_count|tmp_left[7]~48\) # (GND)))
-- \current_count|tmp_left[8]~50\ = CARRY((!\current_count|tmp_left[7]~48\) # (!\current_count|tmp_left\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(8),
	datad => VCC,
	cin => \current_count|tmp_left[7]~48\,
	combout => \current_count|tmp_left[8]~49_combout\,
	cout => \current_count|tmp_left[8]~50\);

-- Location: FF_X58_Y50_N17
\current_count|tmp_left[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[8]~49_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(8));

-- Location: LCCOMB_X58_Y50_N18
\current_count|tmp_left[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[9]~51_combout\ = (\current_count|tmp_left\(9) & (\current_count|tmp_left[8]~50\ $ (GND))) # (!\current_count|tmp_left\(9) & (!\current_count|tmp_left[8]~50\ & VCC))
-- \current_count|tmp_left[9]~52\ = CARRY((\current_count|tmp_left\(9) & !\current_count|tmp_left[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(9),
	datad => VCC,
	cin => \current_count|tmp_left[8]~50\,
	combout => \current_count|tmp_left[9]~51_combout\,
	cout => \current_count|tmp_left[9]~52\);

-- Location: FF_X58_Y50_N19
\current_count|tmp_left[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[9]~51_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(9));

-- Location: LCCOMB_X58_Y50_N20
\current_count|tmp_left[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[10]~53_combout\ = (\current_count|tmp_left\(10) & (!\current_count|tmp_left[9]~52\)) # (!\current_count|tmp_left\(10) & ((\current_count|tmp_left[9]~52\) # (GND)))
-- \current_count|tmp_left[10]~54\ = CARRY((!\current_count|tmp_left[9]~52\) # (!\current_count|tmp_left\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(10),
	datad => VCC,
	cin => \current_count|tmp_left[9]~52\,
	combout => \current_count|tmp_left[10]~53_combout\,
	cout => \current_count|tmp_left[10]~54\);

-- Location: FF_X58_Y50_N21
\current_count|tmp_left[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[10]~53_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(10));

-- Location: LCCOMB_X58_Y50_N22
\current_count|tmp_left[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[11]~55_combout\ = (\current_count|tmp_left\(11) & (\current_count|tmp_left[10]~54\ $ (GND))) # (!\current_count|tmp_left\(11) & (!\current_count|tmp_left[10]~54\ & VCC))
-- \current_count|tmp_left[11]~56\ = CARRY((\current_count|tmp_left\(11) & !\current_count|tmp_left[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(11),
	datad => VCC,
	cin => \current_count|tmp_left[10]~54\,
	combout => \current_count|tmp_left[11]~55_combout\,
	cout => \current_count|tmp_left[11]~56\);

-- Location: FF_X58_Y50_N23
\current_count|tmp_left[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[11]~55_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(11));

-- Location: LCCOMB_X58_Y50_N24
\current_count|tmp_left[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[12]~57_combout\ = (\current_count|tmp_left\(12) & (!\current_count|tmp_left[11]~56\)) # (!\current_count|tmp_left\(12) & ((\current_count|tmp_left[11]~56\) # (GND)))
-- \current_count|tmp_left[12]~58\ = CARRY((!\current_count|tmp_left[11]~56\) # (!\current_count|tmp_left\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(12),
	datad => VCC,
	cin => \current_count|tmp_left[11]~56\,
	combout => \current_count|tmp_left[12]~57_combout\,
	cout => \current_count|tmp_left[12]~58\);

-- Location: FF_X58_Y50_N25
\current_count|tmp_left[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[12]~57_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(12));

-- Location: LCCOMB_X58_Y50_N26
\current_count|tmp_left[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[13]~59_combout\ = (\current_count|tmp_left\(13) & (\current_count|tmp_left[12]~58\ $ (GND))) # (!\current_count|tmp_left\(13) & (!\current_count|tmp_left[12]~58\ & VCC))
-- \current_count|tmp_left[13]~60\ = CARRY((\current_count|tmp_left\(13) & !\current_count|tmp_left[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(13),
	datad => VCC,
	cin => \current_count|tmp_left[12]~58\,
	combout => \current_count|tmp_left[13]~59_combout\,
	cout => \current_count|tmp_left[13]~60\);

-- Location: FF_X58_Y50_N27
\current_count|tmp_left[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[13]~59_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(13));

-- Location: LCCOMB_X58_Y50_N28
\current_count|tmp_left[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[14]~61_combout\ = (\current_count|tmp_left\(14) & (!\current_count|tmp_left[13]~60\)) # (!\current_count|tmp_left\(14) & ((\current_count|tmp_left[13]~60\) # (GND)))
-- \current_count|tmp_left[14]~62\ = CARRY((!\current_count|tmp_left[13]~60\) # (!\current_count|tmp_left\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(14),
	datad => VCC,
	cin => \current_count|tmp_left[13]~60\,
	combout => \current_count|tmp_left[14]~61_combout\,
	cout => \current_count|tmp_left[14]~62\);

-- Location: FF_X58_Y50_N29
\current_count|tmp_left[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[14]~61_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(14));

-- Location: LCCOMB_X58_Y50_N30
\current_count|tmp_left[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[15]~63_combout\ = (\current_count|tmp_left\(15) & (\current_count|tmp_left[14]~62\ $ (GND))) # (!\current_count|tmp_left\(15) & (!\current_count|tmp_left[14]~62\ & VCC))
-- \current_count|tmp_left[15]~64\ = CARRY((\current_count|tmp_left\(15) & !\current_count|tmp_left[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(15),
	datad => VCC,
	cin => \current_count|tmp_left[14]~62\,
	combout => \current_count|tmp_left[15]~63_combout\,
	cout => \current_count|tmp_left[15]~64\);

-- Location: FF_X58_Y50_N31
\current_count|tmp_left[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[15]~63_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(15));

-- Location: LCCOMB_X58_Y49_N0
\current_count|tmp_left[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[16]~65_combout\ = (\current_count|tmp_left\(16) & (!\current_count|tmp_left[15]~64\)) # (!\current_count|tmp_left\(16) & ((\current_count|tmp_left[15]~64\) # (GND)))
-- \current_count|tmp_left[16]~66\ = CARRY((!\current_count|tmp_left[15]~64\) # (!\current_count|tmp_left\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(16),
	datad => VCC,
	cin => \current_count|tmp_left[15]~64\,
	combout => \current_count|tmp_left[16]~65_combout\,
	cout => \current_count|tmp_left[16]~66\);

-- Location: FF_X58_Y49_N1
\current_count|tmp_left[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[16]~65_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(16));

-- Location: LCCOMB_X58_Y49_N2
\current_count|tmp_left[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[17]~67_combout\ = (\current_count|tmp_left\(17) & (\current_count|tmp_left[16]~66\ $ (GND))) # (!\current_count|tmp_left\(17) & (!\current_count|tmp_left[16]~66\ & VCC))
-- \current_count|tmp_left[17]~68\ = CARRY((\current_count|tmp_left\(17) & !\current_count|tmp_left[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(17),
	datad => VCC,
	cin => \current_count|tmp_left[16]~66\,
	combout => \current_count|tmp_left[17]~67_combout\,
	cout => \current_count|tmp_left[17]~68\);

-- Location: FF_X58_Y49_N3
\current_count|tmp_left[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[17]~67_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(17));

-- Location: LCCOMB_X58_Y49_N4
\current_count|tmp_left[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[18]~69_combout\ = (\current_count|tmp_left\(18) & (!\current_count|tmp_left[17]~68\)) # (!\current_count|tmp_left\(18) & ((\current_count|tmp_left[17]~68\) # (GND)))
-- \current_count|tmp_left[18]~70\ = CARRY((!\current_count|tmp_left[17]~68\) # (!\current_count|tmp_left\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(18),
	datad => VCC,
	cin => \current_count|tmp_left[17]~68\,
	combout => \current_count|tmp_left[18]~69_combout\,
	cout => \current_count|tmp_left[18]~70\);

-- Location: FF_X58_Y49_N5
\current_count|tmp_left[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[18]~69_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(18));

-- Location: LCCOMB_X58_Y49_N6
\current_count|tmp_left[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[19]~71_combout\ = (\current_count|tmp_left\(19) & (\current_count|tmp_left[18]~70\ $ (GND))) # (!\current_count|tmp_left\(19) & (!\current_count|tmp_left[18]~70\ & VCC))
-- \current_count|tmp_left[19]~72\ = CARRY((\current_count|tmp_left\(19) & !\current_count|tmp_left[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(19),
	datad => VCC,
	cin => \current_count|tmp_left[18]~70\,
	combout => \current_count|tmp_left[19]~71_combout\,
	cout => \current_count|tmp_left[19]~72\);

-- Location: FF_X58_Y49_N7
\current_count|tmp_left[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[19]~71_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(19));

-- Location: LCCOMB_X58_Y49_N8
\current_count|tmp_left[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[20]~73_combout\ = (\current_count|tmp_left\(20) & (!\current_count|tmp_left[19]~72\)) # (!\current_count|tmp_left\(20) & ((\current_count|tmp_left[19]~72\) # (GND)))
-- \current_count|tmp_left[20]~74\ = CARRY((!\current_count|tmp_left[19]~72\) # (!\current_count|tmp_left\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(20),
	datad => VCC,
	cin => \current_count|tmp_left[19]~72\,
	combout => \current_count|tmp_left[20]~73_combout\,
	cout => \current_count|tmp_left[20]~74\);

-- Location: FF_X58_Y49_N9
\current_count|tmp_left[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[20]~73_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(20));

-- Location: LCCOMB_X58_Y49_N10
\current_count|tmp_left[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[21]~75_combout\ = (\current_count|tmp_left\(21) & (\current_count|tmp_left[20]~74\ $ (GND))) # (!\current_count|tmp_left\(21) & (!\current_count|tmp_left[20]~74\ & VCC))
-- \current_count|tmp_left[21]~76\ = CARRY((\current_count|tmp_left\(21) & !\current_count|tmp_left[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(21),
	datad => VCC,
	cin => \current_count|tmp_left[20]~74\,
	combout => \current_count|tmp_left[21]~75_combout\,
	cout => \current_count|tmp_left[21]~76\);

-- Location: FF_X58_Y49_N11
\current_count|tmp_left[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[21]~75_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(21));

-- Location: LCCOMB_X58_Y49_N12
\current_count|tmp_left[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[22]~77_combout\ = (\current_count|tmp_left\(22) & (!\current_count|tmp_left[21]~76\)) # (!\current_count|tmp_left\(22) & ((\current_count|tmp_left[21]~76\) # (GND)))
-- \current_count|tmp_left[22]~78\ = CARRY((!\current_count|tmp_left[21]~76\) # (!\current_count|tmp_left\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(22),
	datad => VCC,
	cin => \current_count|tmp_left[21]~76\,
	combout => \current_count|tmp_left[22]~77_combout\,
	cout => \current_count|tmp_left[22]~78\);

-- Location: FF_X58_Y49_N13
\current_count|tmp_left[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[22]~77_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(22));

-- Location: LCCOMB_X58_Y49_N14
\current_count|tmp_left[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[23]~79_combout\ = (\current_count|tmp_left\(23) & (\current_count|tmp_left[22]~78\ $ (GND))) # (!\current_count|tmp_left\(23) & (!\current_count|tmp_left[22]~78\ & VCC))
-- \current_count|tmp_left[23]~80\ = CARRY((\current_count|tmp_left\(23) & !\current_count|tmp_left[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(23),
	datad => VCC,
	cin => \current_count|tmp_left[22]~78\,
	combout => \current_count|tmp_left[23]~79_combout\,
	cout => \current_count|tmp_left[23]~80\);

-- Location: FF_X58_Y49_N15
\current_count|tmp_left[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[23]~79_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(23));

-- Location: LCCOMB_X58_Y49_N16
\current_count|tmp_left[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[24]~81_combout\ = (\current_count|tmp_left\(24) & (!\current_count|tmp_left[23]~80\)) # (!\current_count|tmp_left\(24) & ((\current_count|tmp_left[23]~80\) # (GND)))
-- \current_count|tmp_left[24]~82\ = CARRY((!\current_count|tmp_left[23]~80\) # (!\current_count|tmp_left\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(24),
	datad => VCC,
	cin => \current_count|tmp_left[23]~80\,
	combout => \current_count|tmp_left[24]~81_combout\,
	cout => \current_count|tmp_left[24]~82\);

-- Location: FF_X58_Y49_N17
\current_count|tmp_left[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[24]~81_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(24));

-- Location: LCCOMB_X58_Y49_N18
\current_count|tmp_left[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[25]~83_combout\ = (\current_count|tmp_left\(25) & (\current_count|tmp_left[24]~82\ $ (GND))) # (!\current_count|tmp_left\(25) & (!\current_count|tmp_left[24]~82\ & VCC))
-- \current_count|tmp_left[25]~84\ = CARRY((\current_count|tmp_left\(25) & !\current_count|tmp_left[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(25),
	datad => VCC,
	cin => \current_count|tmp_left[24]~82\,
	combout => \current_count|tmp_left[25]~83_combout\,
	cout => \current_count|tmp_left[25]~84\);

-- Location: FF_X58_Y49_N19
\current_count|tmp_left[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[25]~83_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(25));

-- Location: LCCOMB_X58_Y49_N20
\current_count|tmp_left[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[26]~85_combout\ = (\current_count|tmp_left\(26) & (!\current_count|tmp_left[25]~84\)) # (!\current_count|tmp_left\(26) & ((\current_count|tmp_left[25]~84\) # (GND)))
-- \current_count|tmp_left[26]~86\ = CARRY((!\current_count|tmp_left[25]~84\) # (!\current_count|tmp_left\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(26),
	datad => VCC,
	cin => \current_count|tmp_left[25]~84\,
	combout => \current_count|tmp_left[26]~85_combout\,
	cout => \current_count|tmp_left[26]~86\);

-- Location: FF_X58_Y49_N21
\current_count|tmp_left[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[26]~85_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(26));

-- Location: LCCOMB_X58_Y49_N22
\current_count|tmp_left[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[27]~87_combout\ = (\current_count|tmp_left\(27) & (\current_count|tmp_left[26]~86\ $ (GND))) # (!\current_count|tmp_left\(27) & (!\current_count|tmp_left[26]~86\ & VCC))
-- \current_count|tmp_left[27]~88\ = CARRY((\current_count|tmp_left\(27) & !\current_count|tmp_left[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(27),
	datad => VCC,
	cin => \current_count|tmp_left[26]~86\,
	combout => \current_count|tmp_left[27]~87_combout\,
	cout => \current_count|tmp_left[27]~88\);

-- Location: FF_X58_Y49_N23
\current_count|tmp_left[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[27]~87_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(27));

-- Location: LCCOMB_X57_Y49_N30
\current_count|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~7_combout\ = (!\current_count|tmp_left\(26) & (!\current_count|tmp_left\(25) & (!\current_count|tmp_left\(27) & !\current_count|tmp_left\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(26),
	datab => \current_count|tmp_left\(25),
	datac => \current_count|tmp_left\(27),
	datad => \current_count|tmp_left\(24),
	combout => \current_count|process_0~7_combout\);

-- Location: LCCOMB_X57_Y49_N18
\current_count|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~5_combout\ = (!\current_count|tmp_left\(19) & (!\current_count|tmp_left\(16) & (!\current_count|tmp_left\(18) & !\current_count|tmp_left\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(19),
	datab => \current_count|tmp_left\(16),
	datac => \current_count|tmp_left\(18),
	datad => \current_count|tmp_left\(17),
	combout => \current_count|process_0~5_combout\);

-- Location: LCCOMB_X58_Y49_N24
\current_count|tmp_left[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[28]~89_combout\ = (\current_count|tmp_left\(28) & (!\current_count|tmp_left[27]~88\)) # (!\current_count|tmp_left\(28) & ((\current_count|tmp_left[27]~88\) # (GND)))
-- \current_count|tmp_left[28]~90\ = CARRY((!\current_count|tmp_left[27]~88\) # (!\current_count|tmp_left\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(28),
	datad => VCC,
	cin => \current_count|tmp_left[27]~88\,
	combout => \current_count|tmp_left[28]~89_combout\,
	cout => \current_count|tmp_left[28]~90\);

-- Location: FF_X58_Y49_N25
\current_count|tmp_left[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[28]~89_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(28));

-- Location: LCCOMB_X58_Y49_N26
\current_count|tmp_left[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[29]~91_combout\ = (\current_count|tmp_left\(29) & (\current_count|tmp_left[28]~90\ $ (GND))) # (!\current_count|tmp_left\(29) & (!\current_count|tmp_left[28]~90\ & VCC))
-- \current_count|tmp_left[29]~92\ = CARRY((\current_count|tmp_left\(29) & !\current_count|tmp_left[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(29),
	datad => VCC,
	cin => \current_count|tmp_left[28]~90\,
	combout => \current_count|tmp_left[29]~91_combout\,
	cout => \current_count|tmp_left[29]~92\);

-- Location: FF_X58_Y49_N27
\current_count|tmp_left[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[29]~91_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(29));

-- Location: LCCOMB_X58_Y49_N28
\current_count|tmp_left[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[30]~93_combout\ = (\current_count|tmp_left\(30) & (!\current_count|tmp_left[29]~92\)) # (!\current_count|tmp_left\(30) & ((\current_count|tmp_left[29]~92\) # (GND)))
-- \current_count|tmp_left[30]~94\ = CARRY((!\current_count|tmp_left[29]~92\) # (!\current_count|tmp_left\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(30),
	datad => VCC,
	cin => \current_count|tmp_left[29]~92\,
	combout => \current_count|tmp_left[30]~93_combout\,
	cout => \current_count|tmp_left[30]~94\);

-- Location: FF_X58_Y49_N29
\current_count|tmp_left[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[30]~93_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(30));

-- Location: LCCOMB_X58_Y49_N30
\current_count|tmp_left[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[31]~95_combout\ = \current_count|tmp_left\(31) $ (!\current_count|tmp_left[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(31),
	cin => \current_count|tmp_left[30]~94\,
	combout => \current_count|tmp_left[31]~95_combout\);

-- Location: FF_X58_Y49_N31
\current_count|tmp_left[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[31]~95_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(31));

-- Location: LCCOMB_X57_Y49_N8
\current_count|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~8_combout\ = (!\current_count|tmp_left\(31) & (!\current_count|tmp_left\(30) & (!\current_count|tmp_left\(29) & !\current_count|tmp_left\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(31),
	datab => \current_count|tmp_left\(30),
	datac => \current_count|tmp_left\(29),
	datad => \current_count|tmp_left\(28),
	combout => \current_count|process_0~8_combout\);

-- Location: LCCOMB_X57_Y49_N28
\current_count|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~6_combout\ = (!\current_count|tmp_left\(21) & (!\current_count|tmp_left\(20) & (!\current_count|tmp_left\(22) & !\current_count|tmp_left\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(21),
	datab => \current_count|tmp_left\(20),
	datac => \current_count|tmp_left\(22),
	datad => \current_count|tmp_left\(23),
	combout => \current_count|process_0~6_combout\);

-- Location: LCCOMB_X57_Y49_N2
\current_count|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~9_combout\ = (\current_count|process_0~7_combout\ & (\current_count|process_0~5_combout\ & (\current_count|process_0~8_combout\ & \current_count|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|process_0~7_combout\,
	datab => \current_count|process_0~5_combout\,
	datac => \current_count|process_0~8_combout\,
	datad => \current_count|process_0~6_combout\,
	combout => \current_count|process_0~9_combout\);

-- Location: LCCOMB_X57_Y50_N16
\current_count|tmp_left[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[3]~36_combout\ = (!\pause~input_o\ & (\current_count|Equal1~10_combout\ & ((!\current_count|process_0~9_combout\) # (!\current_count|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|process_0~4_combout\,
	datab => \pause~input_o\,
	datac => \current_count|process_0~9_combout\,
	datad => \current_count|Equal1~10_combout\,
	combout => \current_count|tmp_left[3]~36_combout\);

-- Location: FF_X58_Y50_N7
\current_count|tmp_left[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[3]~39_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(3));

-- Location: LCCOMB_X58_Y50_N8
\current_count|tmp_left[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[4]~41_combout\ = (\current_count|tmp_left\(4) & (!\current_count|tmp_left[3]~40\)) # (!\current_count|tmp_left\(4) & ((\current_count|tmp_left[3]~40\) # (GND)))
-- \current_count|tmp_left[4]~42\ = CARRY((!\current_count|tmp_left[3]~40\) # (!\current_count|tmp_left\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_left\(4),
	datad => VCC,
	cin => \current_count|tmp_left[3]~40\,
	combout => \current_count|tmp_left[4]~41_combout\,
	cout => \current_count|tmp_left[4]~42\);

-- Location: FF_X58_Y50_N9
\current_count|tmp_left[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[4]~41_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(4));

-- Location: LCCOMB_X58_Y50_N10
\current_count|tmp_left[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[5]~43_combout\ = (\current_count|tmp_left\(5) & (\current_count|tmp_left[4]~42\ $ (GND))) # (!\current_count|tmp_left\(5) & (!\current_count|tmp_left[4]~42\ & VCC))
-- \current_count|tmp_left[5]~44\ = CARRY((\current_count|tmp_left\(5) & !\current_count|tmp_left[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(5),
	datad => VCC,
	cin => \current_count|tmp_left[4]~42\,
	combout => \current_count|tmp_left[5]~43_combout\,
	cout => \current_count|tmp_left[5]~44\);

-- Location: FF_X58_Y50_N11
\current_count|tmp_left[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[5]~43_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(5));

-- Location: FF_X58_Y50_N13
\current_count|tmp_left[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[6]~45_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(6));

-- Location: LCCOMB_X58_Y50_N0
\current_count|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~1_combout\ = (!\current_count|tmp_left\(6) & (!\current_count|tmp_left\(4) & (!\current_count|tmp_left\(7) & !\current_count|tmp_left\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(6),
	datab => \current_count|tmp_left\(4),
	datac => \current_count|tmp_left\(7),
	datad => \current_count|tmp_left\(5),
	combout => \current_count|process_0~1_combout\);

-- Location: LCCOMB_X58_Y50_N2
\current_count|tmp_left[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[1]~34_combout\ = (\current_count|tmp_left\(0) & (\current_count|tmp_left\(1) $ (VCC))) # (!\current_count|tmp_left\(0) & (\current_count|tmp_left\(1) & VCC))
-- \current_count|tmp_left[1]~35\ = CARRY((\current_count|tmp_left\(0) & \current_count|tmp_left\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(0),
	datab => \current_count|tmp_left\(1),
	datad => VCC,
	combout => \current_count|tmp_left[1]~34_combout\,
	cout => \current_count|tmp_left[1]~35\);

-- Location: FF_X58_Y50_N3
\current_count|tmp_left[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[1]~34_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(1));

-- Location: LCCOMB_X59_Y50_N18
\current_count|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~0_combout\ = (!\current_count|tmp_left\(1) & (\current_count|tmp_left\(2) & (!\current_count|tmp_left\(3) & \current_count|tmp_left\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(1),
	datab => \current_count|tmp_left\(2),
	datac => \current_count|tmp_left\(3),
	datad => \current_count|tmp_left\(0),
	combout => \current_count|process_0~0_combout\);

-- Location: LCCOMB_X59_Y50_N8
\current_count|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~2_combout\ = (!\current_count|tmp_left\(8) & (!\current_count|tmp_left\(10) & (!\current_count|tmp_left\(11) & !\current_count|tmp_left\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(8),
	datab => \current_count|tmp_left\(10),
	datac => \current_count|tmp_left\(11),
	datad => \current_count|tmp_left\(9),
	combout => \current_count|process_0~2_combout\);

-- Location: LCCOMB_X59_Y50_N2
\current_count|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~3_combout\ = (!\current_count|tmp_left\(13) & (!\current_count|tmp_left\(12) & (!\current_count|tmp_left\(14) & !\current_count|tmp_left\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(13),
	datab => \current_count|tmp_left\(12),
	datac => \current_count|tmp_left\(14),
	datad => \current_count|tmp_left\(15),
	combout => \current_count|process_0~3_combout\);

-- Location: LCCOMB_X59_Y50_N28
\current_count|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|process_0~4_combout\ = (\current_count|process_0~1_combout\ & (\current_count|process_0~0_combout\ & (\current_count|process_0~2_combout\ & \current_count|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|process_0~1_combout\,
	datab => \current_count|process_0~0_combout\,
	datac => \current_count|process_0~2_combout\,
	datad => \current_count|process_0~3_combout\,
	combout => \current_count|process_0~4_combout\);

-- Location: LCCOMB_X57_Y50_N30
\current_count|tmp_left[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[3]~31_combout\ = (!\pause~input_o\ & (((!\current_count|Equal1~10_combout\) # (!\current_count|process_0~9_combout\)) # (!\current_count|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|process_0~4_combout\,
	datab => \pause~input_o\,
	datac => \current_count|process_0~9_combout\,
	datad => \current_count|Equal1~10_combout\,
	combout => \current_count|tmp_left[3]~31_combout\);

-- Location: LCCOMB_X56_Y50_N0
\current_count|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~0_combout\ = \current_count|tmp_right\(0) $ (VCC)
-- \current_count|Add1~1\ = CARRY(\current_count|tmp_right\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(0),
	datad => VCC,
	combout => \current_count|Add1~0_combout\,
	cout => \current_count|Add1~1\);

-- Location: FF_X56_Y50_N1
\current_count|tmp_right[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~0_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(0));

-- Location: LCCOMB_X56_Y50_N2
\current_count|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~2_combout\ = (\current_count|tmp_right\(1) & (!\current_count|Add1~1\)) # (!\current_count|tmp_right\(1) & ((\current_count|Add1~1\) # (GND)))
-- \current_count|Add1~3\ = CARRY((!\current_count|Add1~1\) # (!\current_count|tmp_right\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(1),
	datad => VCC,
	cin => \current_count|Add1~1\,
	combout => \current_count|Add1~2_combout\,
	cout => \current_count|Add1~3\);

-- Location: LCCOMB_X57_Y50_N10
\current_count|tmp_right[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[3]~0_combout\ = (!\pause~input_o\ & !\current_count|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pause~input_o\,
	datac => \current_count|Equal1~10_combout\,
	combout => \current_count|tmp_right[3]~0_combout\);

-- Location: LCCOMB_X57_Y50_N2
\current_count|tmp_right[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[1]~1_combout\ = (\current_count|tmp_left[3]~31_combout\ & (\current_count|Add1~2_combout\ & ((\current_count|tmp_right[3]~0_combout\)))) # (!\current_count|tmp_left[3]~31_combout\ & ((\current_count|tmp_right\(1)) # 
-- ((\current_count|Add1~2_combout\ & \current_count|tmp_right[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left[3]~31_combout\,
	datab => \current_count|Add1~2_combout\,
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right[3]~0_combout\,
	combout => \current_count|tmp_right[1]~1_combout\);

-- Location: FF_X57_Y50_N3
\current_count|tmp_right[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_right[1]~1_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(1));

-- Location: LCCOMB_X56_Y50_N4
\current_count|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~4_combout\ = (\current_count|tmp_right\(2) & (\current_count|Add1~3\ $ (GND))) # (!\current_count|tmp_right\(2) & (!\current_count|Add1~3\ & VCC))
-- \current_count|Add1~5\ = CARRY((\current_count|tmp_right\(2) & !\current_count|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(2),
	datad => VCC,
	cin => \current_count|Add1~3\,
	combout => \current_count|Add1~4_combout\,
	cout => \current_count|Add1~5\);

-- Location: FF_X56_Y50_N5
\current_count|tmp_right[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~4_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(2));

-- Location: LCCOMB_X56_Y50_N6
\current_count|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~6_combout\ = (\current_count|tmp_right\(3) & (!\current_count|Add1~5\)) # (!\current_count|tmp_right\(3) & ((\current_count|Add1~5\) # (GND)))
-- \current_count|Add1~7\ = CARRY((!\current_count|Add1~5\) # (!\current_count|tmp_right\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(3),
	datad => VCC,
	cin => \current_count|Add1~5\,
	combout => \current_count|Add1~6_combout\,
	cout => \current_count|Add1~7\);

-- Location: LCCOMB_X57_Y50_N0
\current_count|tmp_right[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[3]~2_combout\ = (\current_count|tmp_left[3]~31_combout\ & (\current_count|Add1~6_combout\ & ((\current_count|tmp_right[3]~0_combout\)))) # (!\current_count|tmp_left[3]~31_combout\ & ((\current_count|tmp_right\(3)) # 
-- ((\current_count|Add1~6_combout\ & \current_count|tmp_right[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left[3]~31_combout\,
	datab => \current_count|Add1~6_combout\,
	datac => \current_count|tmp_right\(3),
	datad => \current_count|tmp_right[3]~0_combout\,
	combout => \current_count|tmp_right[3]~2_combout\);

-- Location: FF_X57_Y50_N1
\current_count|tmp_right[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_right[3]~2_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(3));

-- Location: LCCOMB_X56_Y50_N8
\current_count|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~8_combout\ = (\current_count|tmp_right\(4) & (\current_count|Add1~7\ $ (GND))) # (!\current_count|tmp_right\(4) & (!\current_count|Add1~7\ & VCC))
-- \current_count|Add1~9\ = CARRY((\current_count|tmp_right\(4) & !\current_count|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(4),
	datad => VCC,
	cin => \current_count|Add1~7\,
	combout => \current_count|Add1~8_combout\,
	cout => \current_count|Add1~9\);

-- Location: FF_X56_Y50_N9
\current_count|tmp_right[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~8_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(4));

-- Location: LCCOMB_X57_Y50_N26
\current_count|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~9_combout\ = (!\current_count|tmp_right\(1) & (\current_count|tmp_right\(3) & (!\current_count|tmp_right\(2) & !\current_count|tmp_right\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(1),
	datab => \current_count|tmp_right\(3),
	datac => \current_count|tmp_right\(2),
	datad => \current_count|tmp_right\(4),
	combout => \current_count|Equal1~9_combout\);

-- Location: LCCOMB_X56_Y50_N10
\current_count|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~10_combout\ = (\current_count|tmp_right\(5) & (!\current_count|Add1~9\)) # (!\current_count|tmp_right\(5) & ((\current_count|Add1~9\) # (GND)))
-- \current_count|Add1~11\ = CARRY((!\current_count|Add1~9\) # (!\current_count|tmp_right\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(5),
	datad => VCC,
	cin => \current_count|Add1~9\,
	combout => \current_count|Add1~10_combout\,
	cout => \current_count|Add1~11\);

-- Location: FF_X56_Y50_N11
\current_count|tmp_right[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~10_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(5));

-- Location: LCCOMB_X56_Y50_N12
\current_count|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~12_combout\ = (\current_count|tmp_right\(6) & (\current_count|Add1~11\ $ (GND))) # (!\current_count|tmp_right\(6) & (!\current_count|Add1~11\ & VCC))
-- \current_count|Add1~13\ = CARRY((\current_count|tmp_right\(6) & !\current_count|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(6),
	datad => VCC,
	cin => \current_count|Add1~11\,
	combout => \current_count|Add1~12_combout\,
	cout => \current_count|Add1~13\);

-- Location: FF_X56_Y50_N13
\current_count|tmp_right[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~12_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(6));

-- Location: LCCOMB_X56_Y50_N14
\current_count|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~14_combout\ = (\current_count|tmp_right\(7) & (!\current_count|Add1~13\)) # (!\current_count|tmp_right\(7) & ((\current_count|Add1~13\) # (GND)))
-- \current_count|Add1~15\ = CARRY((!\current_count|Add1~13\) # (!\current_count|tmp_right\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(7),
	datad => VCC,
	cin => \current_count|Add1~13\,
	combout => \current_count|Add1~14_combout\,
	cout => \current_count|Add1~15\);

-- Location: FF_X56_Y50_N15
\current_count|tmp_right[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~14_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(7));

-- Location: LCCOMB_X56_Y50_N16
\current_count|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~16_combout\ = (\current_count|tmp_right\(8) & (\current_count|Add1~15\ $ (GND))) # (!\current_count|tmp_right\(8) & (!\current_count|Add1~15\ & VCC))
-- \current_count|Add1~17\ = CARRY((\current_count|tmp_right\(8) & !\current_count|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(8),
	datad => VCC,
	cin => \current_count|Add1~15\,
	combout => \current_count|Add1~16_combout\,
	cout => \current_count|Add1~17\);

-- Location: FF_X56_Y50_N17
\current_count|tmp_right[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~16_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(8));

-- Location: LCCOMB_X57_Y50_N20
\current_count|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~8_combout\ = (!\current_count|tmp_right\(7) & (!\current_count|tmp_right\(8) & (!\current_count|tmp_right\(5) & !\current_count|tmp_right\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(7),
	datab => \current_count|tmp_right\(8),
	datac => \current_count|tmp_right\(5),
	datad => \current_count|tmp_right\(6),
	combout => \current_count|Equal1~8_combout\);

-- Location: LCCOMB_X56_Y50_N18
\current_count|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~18_combout\ = (\current_count|tmp_right\(9) & (!\current_count|Add1~17\)) # (!\current_count|tmp_right\(9) & ((\current_count|Add1~17\) # (GND)))
-- \current_count|Add1~19\ = CARRY((!\current_count|Add1~17\) # (!\current_count|tmp_right\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(9),
	datad => VCC,
	cin => \current_count|Add1~17\,
	combout => \current_count|Add1~18_combout\,
	cout => \current_count|Add1~19\);

-- Location: FF_X56_Y50_N19
\current_count|tmp_right[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~18_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(9));

-- Location: LCCOMB_X56_Y50_N20
\current_count|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~20_combout\ = (\current_count|tmp_right\(10) & (\current_count|Add1~19\ $ (GND))) # (!\current_count|tmp_right\(10) & (!\current_count|Add1~19\ & VCC))
-- \current_count|Add1~21\ = CARRY((\current_count|tmp_right\(10) & !\current_count|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(10),
	datad => VCC,
	cin => \current_count|Add1~19\,
	combout => \current_count|Add1~20_combout\,
	cout => \current_count|Add1~21\);

-- Location: LCCOMB_X55_Y50_N16
\current_count|tmp_right[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[10]~feeder_combout\ = \current_count|Add1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_count|Add1~20_combout\,
	combout => \current_count|tmp_right[10]~feeder_combout\);

-- Location: FF_X55_Y50_N17
\current_count|tmp_right[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_right[10]~feeder_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(10));

-- Location: LCCOMB_X56_Y50_N22
\current_count|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~22_combout\ = (\current_count|tmp_right\(11) & (!\current_count|Add1~21\)) # (!\current_count|tmp_right\(11) & ((\current_count|Add1~21\) # (GND)))
-- \current_count|Add1~23\ = CARRY((!\current_count|Add1~21\) # (!\current_count|tmp_right\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(11),
	datad => VCC,
	cin => \current_count|Add1~21\,
	combout => \current_count|Add1~22_combout\,
	cout => \current_count|Add1~23\);

-- Location: FF_X56_Y50_N23
\current_count|tmp_right[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~22_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(11));

-- Location: LCCOMB_X56_Y50_N24
\current_count|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~24_combout\ = (\current_count|tmp_right\(12) & (\current_count|Add1~23\ $ (GND))) # (!\current_count|tmp_right\(12) & (!\current_count|Add1~23\ & VCC))
-- \current_count|Add1~25\ = CARRY((\current_count|tmp_right\(12) & !\current_count|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(12),
	datad => VCC,
	cin => \current_count|Add1~23\,
	combout => \current_count|Add1~24_combout\,
	cout => \current_count|Add1~25\);

-- Location: LCCOMB_X55_Y50_N8
\current_count|tmp_right[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[12]~feeder_combout\ = \current_count|Add1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_count|Add1~24_combout\,
	combout => \current_count|tmp_right[12]~feeder_combout\);

-- Location: FF_X55_Y50_N9
\current_count|tmp_right[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_right[12]~feeder_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(12));

-- Location: LCCOMB_X56_Y50_N26
\current_count|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~26_combout\ = (\current_count|tmp_right\(13) & (!\current_count|Add1~25\)) # (!\current_count|tmp_right\(13) & ((\current_count|Add1~25\) # (GND)))
-- \current_count|Add1~27\ = CARRY((!\current_count|Add1~25\) # (!\current_count|tmp_right\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(13),
	datad => VCC,
	cin => \current_count|Add1~25\,
	combout => \current_count|Add1~26_combout\,
	cout => \current_count|Add1~27\);

-- Location: FF_X56_Y50_N27
\current_count|tmp_right[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~26_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(13));

-- Location: LCCOMB_X56_Y50_N28
\current_count|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~28_combout\ = (\current_count|tmp_right\(14) & (\current_count|Add1~27\ $ (GND))) # (!\current_count|tmp_right\(14) & (!\current_count|Add1~27\ & VCC))
-- \current_count|Add1~29\ = CARRY((\current_count|tmp_right\(14) & !\current_count|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(14),
	datad => VCC,
	cin => \current_count|Add1~27\,
	combout => \current_count|Add1~28_combout\,
	cout => \current_count|Add1~29\);

-- Location: FF_X56_Y50_N29
\current_count|tmp_right[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~28_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(14));

-- Location: LCCOMB_X56_Y50_N30
\current_count|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~30_combout\ = (\current_count|tmp_right\(15) & (!\current_count|Add1~29\)) # (!\current_count|tmp_right\(15) & ((\current_count|Add1~29\) # (GND)))
-- \current_count|Add1~31\ = CARRY((!\current_count|Add1~29\) # (!\current_count|tmp_right\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(15),
	datad => VCC,
	cin => \current_count|Add1~29\,
	combout => \current_count|Add1~30_combout\,
	cout => \current_count|Add1~31\);

-- Location: FF_X56_Y50_N31
\current_count|tmp_right[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~30_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(15));

-- Location: LCCOMB_X56_Y49_N0
\current_count|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~32_combout\ = (\current_count|tmp_right\(16) & (\current_count|Add1~31\ $ (GND))) # (!\current_count|tmp_right\(16) & (!\current_count|Add1~31\ & VCC))
-- \current_count|Add1~33\ = CARRY((\current_count|tmp_right\(16) & !\current_count|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(16),
	datad => VCC,
	cin => \current_count|Add1~31\,
	combout => \current_count|Add1~32_combout\,
	cout => \current_count|Add1~33\);

-- Location: LCCOMB_X55_Y50_N12
\current_count|tmp_right[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[16]~feeder_combout\ = \current_count|Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_count|Add1~32_combout\,
	combout => \current_count|tmp_right[16]~feeder_combout\);

-- Location: FF_X55_Y50_N13
\current_count|tmp_right[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_right[16]~feeder_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(16));

-- Location: LCCOMB_X56_Y49_N2
\current_count|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~34_combout\ = (\current_count|tmp_right\(17) & (!\current_count|Add1~33\)) # (!\current_count|tmp_right\(17) & ((\current_count|Add1~33\) # (GND)))
-- \current_count|Add1~35\ = CARRY((!\current_count|Add1~33\) # (!\current_count|tmp_right\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(17),
	datad => VCC,
	cin => \current_count|Add1~33\,
	combout => \current_count|Add1~34_combout\,
	cout => \current_count|Add1~35\);

-- Location: FF_X56_Y49_N3
\current_count|tmp_right[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~34_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(17));

-- Location: LCCOMB_X56_Y49_N4
\current_count|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~36_combout\ = (\current_count|tmp_right\(18) & (\current_count|Add1~35\ $ (GND))) # (!\current_count|tmp_right\(18) & (!\current_count|Add1~35\ & VCC))
-- \current_count|Add1~37\ = CARRY((\current_count|tmp_right\(18) & !\current_count|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(18),
	datad => VCC,
	cin => \current_count|Add1~35\,
	combout => \current_count|Add1~36_combout\,
	cout => \current_count|Add1~37\);

-- Location: FF_X56_Y49_N5
\current_count|tmp_right[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~36_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(18));

-- Location: LCCOMB_X56_Y49_N6
\current_count|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~38_combout\ = (\current_count|tmp_right\(19) & (!\current_count|Add1~37\)) # (!\current_count|tmp_right\(19) & ((\current_count|Add1~37\) # (GND)))
-- \current_count|Add1~39\ = CARRY((!\current_count|Add1~37\) # (!\current_count|tmp_right\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(19),
	datad => VCC,
	cin => \current_count|Add1~37\,
	combout => \current_count|Add1~38_combout\,
	cout => \current_count|Add1~39\);

-- Location: FF_X56_Y49_N7
\current_count|tmp_right[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~38_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(19));

-- Location: LCCOMB_X56_Y49_N8
\current_count|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~40_combout\ = (\current_count|tmp_right\(20) & (\current_count|Add1~39\ $ (GND))) # (!\current_count|tmp_right\(20) & (!\current_count|Add1~39\ & VCC))
-- \current_count|Add1~41\ = CARRY((\current_count|tmp_right\(20) & !\current_count|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(20),
	datad => VCC,
	cin => \current_count|Add1~39\,
	combout => \current_count|Add1~40_combout\,
	cout => \current_count|Add1~41\);

-- Location: FF_X56_Y49_N9
\current_count|tmp_right[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~40_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(20));

-- Location: LCCOMB_X56_Y49_N10
\current_count|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~42_combout\ = (\current_count|tmp_right\(21) & (!\current_count|Add1~41\)) # (!\current_count|tmp_right\(21) & ((\current_count|Add1~41\) # (GND)))
-- \current_count|Add1~43\ = CARRY((!\current_count|Add1~41\) # (!\current_count|tmp_right\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(21),
	datad => VCC,
	cin => \current_count|Add1~41\,
	combout => \current_count|Add1~42_combout\,
	cout => \current_count|Add1~43\);

-- Location: FF_X56_Y49_N11
\current_count|tmp_right[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~42_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(21));

-- Location: LCCOMB_X56_Y49_N12
\current_count|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~44_combout\ = (\current_count|tmp_right\(22) & (\current_count|Add1~43\ $ (GND))) # (!\current_count|tmp_right\(22) & (!\current_count|Add1~43\ & VCC))
-- \current_count|Add1~45\ = CARRY((\current_count|tmp_right\(22) & !\current_count|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(22),
	datad => VCC,
	cin => \current_count|Add1~43\,
	combout => \current_count|Add1~44_combout\,
	cout => \current_count|Add1~45\);

-- Location: LCCOMB_X57_Y50_N28
\current_count|tmp_right[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_right[22]~feeder_combout\ = \current_count|Add1~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_count|Add1~44_combout\,
	combout => \current_count|tmp_right[22]~feeder_combout\);

-- Location: FF_X57_Y50_N29
\current_count|tmp_right[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_right[22]~feeder_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(22));

-- Location: LCCOMB_X56_Y49_N14
\current_count|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~46_combout\ = (\current_count|tmp_right\(23) & (!\current_count|Add1~45\)) # (!\current_count|tmp_right\(23) & ((\current_count|Add1~45\) # (GND)))
-- \current_count|Add1~47\ = CARRY((!\current_count|Add1~45\) # (!\current_count|tmp_right\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(23),
	datad => VCC,
	cin => \current_count|Add1~45\,
	combout => \current_count|Add1~46_combout\,
	cout => \current_count|Add1~47\);

-- Location: FF_X56_Y49_N15
\current_count|tmp_right[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~46_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(23));

-- Location: LCCOMB_X56_Y49_N16
\current_count|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~48_combout\ = (\current_count|tmp_right\(24) & (\current_count|Add1~47\ $ (GND))) # (!\current_count|tmp_right\(24) & (!\current_count|Add1~47\ & VCC))
-- \current_count|Add1~49\ = CARRY((\current_count|tmp_right\(24) & !\current_count|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(24),
	datad => VCC,
	cin => \current_count|Add1~47\,
	combout => \current_count|Add1~48_combout\,
	cout => \current_count|Add1~49\);

-- Location: FF_X56_Y49_N17
\current_count|tmp_right[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~48_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(24));

-- Location: LCCOMB_X56_Y49_N18
\current_count|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~50_combout\ = (\current_count|tmp_right\(25) & (!\current_count|Add1~49\)) # (!\current_count|tmp_right\(25) & ((\current_count|Add1~49\) # (GND)))
-- \current_count|Add1~51\ = CARRY((!\current_count|Add1~49\) # (!\current_count|tmp_right\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(25),
	datad => VCC,
	cin => \current_count|Add1~49\,
	combout => \current_count|Add1~50_combout\,
	cout => \current_count|Add1~51\);

-- Location: FF_X56_Y49_N19
\current_count|tmp_right[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~50_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(25));

-- Location: LCCOMB_X56_Y49_N20
\current_count|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~52_combout\ = (\current_count|tmp_right\(26) & (\current_count|Add1~51\ $ (GND))) # (!\current_count|tmp_right\(26) & (!\current_count|Add1~51\ & VCC))
-- \current_count|Add1~53\ = CARRY((\current_count|tmp_right\(26) & !\current_count|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(26),
	datad => VCC,
	cin => \current_count|Add1~51\,
	combout => \current_count|Add1~52_combout\,
	cout => \current_count|Add1~53\);

-- Location: FF_X56_Y49_N21
\current_count|tmp_right[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~52_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(26));

-- Location: LCCOMB_X56_Y49_N22
\current_count|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~54_combout\ = (\current_count|tmp_right\(27) & (!\current_count|Add1~53\)) # (!\current_count|tmp_right\(27) & ((\current_count|Add1~53\) # (GND)))
-- \current_count|Add1~55\ = CARRY((!\current_count|Add1~53\) # (!\current_count|tmp_right\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(27),
	datad => VCC,
	cin => \current_count|Add1~53\,
	combout => \current_count|Add1~54_combout\,
	cout => \current_count|Add1~55\);

-- Location: FF_X56_Y49_N23
\current_count|tmp_right[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~54_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(27));

-- Location: LCCOMB_X56_Y49_N24
\current_count|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~56_combout\ = (\current_count|tmp_right\(28) & (\current_count|Add1~55\ $ (GND))) # (!\current_count|tmp_right\(28) & (!\current_count|Add1~55\ & VCC))
-- \current_count|Add1~57\ = CARRY((\current_count|tmp_right\(28) & !\current_count|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(28),
	datad => VCC,
	cin => \current_count|Add1~55\,
	combout => \current_count|Add1~56_combout\,
	cout => \current_count|Add1~57\);

-- Location: FF_X56_Y49_N25
\current_count|tmp_right[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~56_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(28));

-- Location: LCCOMB_X56_Y49_N26
\current_count|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~58_combout\ = (\current_count|tmp_right\(29) & (!\current_count|Add1~57\)) # (!\current_count|tmp_right\(29) & ((\current_count|Add1~57\) # (GND)))
-- \current_count|Add1~59\ = CARRY((!\current_count|Add1~57\) # (!\current_count|tmp_right\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(29),
	datad => VCC,
	cin => \current_count|Add1~57\,
	combout => \current_count|Add1~58_combout\,
	cout => \current_count|Add1~59\);

-- Location: FF_X56_Y49_N27
\current_count|tmp_right[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~58_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(29));

-- Location: LCCOMB_X56_Y49_N28
\current_count|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~60_combout\ = (\current_count|tmp_right\(30) & (\current_count|Add1~59\ $ (GND))) # (!\current_count|tmp_right\(30) & (!\current_count|Add1~59\ & VCC))
-- \current_count|Add1~61\ = CARRY((\current_count|tmp_right\(30) & !\current_count|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_count|tmp_right\(30),
	datad => VCC,
	cin => \current_count|Add1~59\,
	combout => \current_count|Add1~60_combout\,
	cout => \current_count|Add1~61\);

-- Location: FF_X56_Y49_N29
\current_count|tmp_right[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~60_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(30));

-- Location: LCCOMB_X56_Y49_N30
\current_count|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Add1~62_combout\ = \current_count|tmp_right\(31) $ (\current_count|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(31),
	cin => \current_count|Add1~61\,
	combout => \current_count|Add1~62_combout\);

-- Location: FF_X56_Y49_N31
\current_count|tmp_right[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|Add1~62_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_right\(31));

-- Location: LCCOMB_X57_Y50_N6
\current_count|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~0_combout\ = (!\current_count|tmp_right\(29) & (\current_count|tmp_right\(0) & (!\current_count|tmp_right\(30) & !\current_count|tmp_right\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(29),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(30),
	datad => \current_count|tmp_right\(31),
	combout => \current_count|Equal1~0_combout\);

-- Location: LCCOMB_X57_Y49_N0
\current_count|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~1_combout\ = (!\current_count|tmp_right\(26) & (!\current_count|tmp_right\(25) & (!\current_count|tmp_right\(27) & !\current_count|tmp_right\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(26),
	datab => \current_count|tmp_right\(25),
	datac => \current_count|tmp_right\(27),
	datad => \current_count|tmp_right\(28),
	combout => \current_count|Equal1~1_combout\);

-- Location: LCCOMB_X57_Y50_N8
\current_count|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~3_combout\ = (!\current_count|tmp_right\(20) & (!\current_count|tmp_right\(17) & (!\current_count|tmp_right\(19) & !\current_count|tmp_right\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(20),
	datab => \current_count|tmp_right\(17),
	datac => \current_count|tmp_right\(19),
	datad => \current_count|tmp_right\(18),
	combout => \current_count|Equal1~3_combout\);

-- Location: LCCOMB_X57_Y50_N18
\current_count|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~2_combout\ = (!\current_count|tmp_right\(23) & (!\current_count|tmp_right\(22) & (!\current_count|tmp_right\(24) & !\current_count|tmp_right\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(23),
	datab => \current_count|tmp_right\(22),
	datac => \current_count|tmp_right\(24),
	datad => \current_count|tmp_right\(21),
	combout => \current_count|Equal1~2_combout\);

-- Location: LCCOMB_X57_Y50_N14
\current_count|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~4_combout\ = (\current_count|Equal1~0_combout\ & (\current_count|Equal1~1_combout\ & (\current_count|Equal1~3_combout\ & \current_count|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|Equal1~0_combout\,
	datab => \current_count|Equal1~1_combout\,
	datac => \current_count|Equal1~3_combout\,
	datad => \current_count|Equal1~2_combout\,
	combout => \current_count|Equal1~4_combout\);

-- Location: LCCOMB_X55_Y50_N22
\current_count|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~6_combout\ = (!\current_count|tmp_right\(12) & !\current_count|tmp_right\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_count|tmp_right\(12),
	datad => \current_count|tmp_right\(11),
	combout => \current_count|Equal1~6_combout\);

-- Location: LCCOMB_X55_Y50_N18
\current_count|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~5_combout\ = (!\current_count|tmp_right\(16) & (!\current_count|tmp_right\(13) & (!\current_count|tmp_right\(15) & !\current_count|tmp_right\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(16),
	datab => \current_count|tmp_right\(13),
	datac => \current_count|tmp_right\(15),
	datad => \current_count|tmp_right\(14),
	combout => \current_count|Equal1~5_combout\);

-- Location: LCCOMB_X55_Y50_N6
\current_count|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~7_combout\ = (!\current_count|tmp_right\(9) & (!\current_count|tmp_right\(10) & (\current_count|Equal1~6_combout\ & \current_count|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(9),
	datab => \current_count|tmp_right\(10),
	datac => \current_count|Equal1~6_combout\,
	datad => \current_count|Equal1~5_combout\,
	combout => \current_count|Equal1~7_combout\);

-- Location: LCCOMB_X57_Y50_N24
\current_count|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|Equal1~10_combout\ = (\current_count|Equal1~9_combout\ & (\current_count|Equal1~8_combout\ & (\current_count|Equal1~4_combout\ & \current_count|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|Equal1~9_combout\,
	datab => \current_count|Equal1~8_combout\,
	datac => \current_count|Equal1~4_combout\,
	datad => \current_count|Equal1~7_combout\,
	combout => \current_count|Equal1~10_combout\);

-- Location: LCCOMB_X59_Y50_N20
\current_count|tmp_left[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_count|tmp_left[0]~32_combout\ = \current_count|tmp_left\(0) $ (((\current_count|Equal1~10_combout\ & \current_count|tmp_left[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|Equal1~10_combout\,
	datac => \current_count|tmp_left\(0),
	datad => \current_count|tmp_left[3]~31_combout\,
	combout => \current_count|tmp_left[0]~32_combout\);

-- Location: FF_X59_Y50_N21
\current_count|tmp_left[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[0]~32_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(0));

-- Location: FF_X58_Y50_N5
\current_count|tmp_left[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out|tmp_out~clkctrl_outclk\,
	d => \current_count|tmp_left[2]~37_combout\,
	clrn => \current_count|ALT_INV_tmp_left[3]~33clkctrl_outclk\,
	ena => \current_count|tmp_left[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_count|tmp_left\(2));

-- Location: LCCOMB_X55_Y50_N24
\decoder1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux6~0_combout\ = (\current_count|tmp_left\(1) & (((\current_count|tmp_left\(3))))) # (!\current_count|tmp_left\(1) & (\current_count|tmp_left\(2) $ (((\current_count|tmp_left\(0) & !\current_count|tmp_left\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(2),
	datab => \current_count|tmp_left\(1),
	datac => \current_count|tmp_left\(0),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\decoder1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux5~0_combout\ = (\current_count|tmp_left\(2) & ((\current_count|tmp_left\(3)) # (\current_count|tmp_left\(1) $ (\current_count|tmp_left\(0))))) # (!\current_count|tmp_left\(2) & (\current_count|tmp_left\(1) & ((\current_count|tmp_left\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(2),
	datab => \current_count|tmp_left\(1),
	datac => \current_count|tmp_left\(0),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y50_N28
\decoder1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux4~0_combout\ = (\current_count|tmp_left\(2) & (((\current_count|tmp_left\(3))))) # (!\current_count|tmp_left\(2) & (\current_count|tmp_left\(1) & ((\current_count|tmp_left\(3)) # (!\current_count|tmp_left\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(2),
	datab => \current_count|tmp_left\(1),
	datac => \current_count|tmp_left\(0),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y50_N12
\decoder1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux3~0_combout\ = (\current_count|tmp_left\(0) & ((\current_count|tmp_left\(3)) # (\current_count|tmp_left\(1) $ (!\current_count|tmp_left\(2))))) # (!\current_count|tmp_left\(0) & ((\current_count|tmp_left\(1) & ((\current_count|tmp_left\(3)))) 
-- # (!\current_count|tmp_left\(1) & (\current_count|tmp_left\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(1),
	datab => \current_count|tmp_left\(0),
	datac => \current_count|tmp_left\(2),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y50_N22
\decoder1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux2~0_combout\ = (\current_count|tmp_left\(0)) # ((\current_count|tmp_left\(1) & ((\current_count|tmp_left\(3)))) # (!\current_count|tmp_left\(1) & (\current_count|tmp_left\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(1),
	datab => \current_count|tmp_left\(0),
	datac => \current_count|tmp_left\(2),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y50_N4
\decoder1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux1~0_combout\ = (\current_count|tmp_left\(0) & ((\current_count|tmp_left\(1)) # (\current_count|tmp_left\(2) $ (!\current_count|tmp_left\(3))))) # (!\current_count|tmp_left\(0) & ((\current_count|tmp_left\(2) & ((\current_count|tmp_left\(3)))) 
-- # (!\current_count|tmp_left\(2) & (\current_count|tmp_left\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(1),
	datab => \current_count|tmp_left\(0),
	datac => \current_count|tmp_left\(2),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y50_N26
\decoder1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|Mux0~0_combout\ = (\current_count|tmp_left\(2) & (!\current_count|tmp_left\(3) & ((!\current_count|tmp_left\(0)) # (!\current_count|tmp_left\(1))))) # (!\current_count|tmp_left\(2) & (\current_count|tmp_left\(1) $ 
-- (((\current_count|tmp_left\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_left\(2),
	datab => \current_count|tmp_left\(1),
	datac => \current_count|tmp_left\(0),
	datad => \current_count|tmp_left\(3),
	combout => \decoder1|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y53_N24
\decoder2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux6~0_combout\ = (\current_count|tmp_right\(1) & (\current_count|tmp_right\(3))) # (!\current_count|tmp_right\(1) & (\current_count|tmp_right\(2) $ (((!\current_count|tmp_right\(3) & \current_count|tmp_right\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y53_N2
\decoder2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux5~0_combout\ = (\current_count|tmp_right\(3) & (((\current_count|tmp_right\(1)) # (\current_count|tmp_right\(2))))) # (!\current_count|tmp_right\(3) & (\current_count|tmp_right\(2) & (\current_count|tmp_right\(0) $ 
-- (\current_count|tmp_right\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y53_N12
\decoder2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux4~0_combout\ = (\current_count|tmp_right\(2) & (\current_count|tmp_right\(3))) # (!\current_count|tmp_right\(2) & (\current_count|tmp_right\(1) & ((\current_count|tmp_right\(3)) # (!\current_count|tmp_right\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y53_N22
\decoder2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux3~0_combout\ = (\current_count|tmp_right\(0) & ((\current_count|tmp_right\(3)) # (\current_count|tmp_right\(1) $ (!\current_count|tmp_right\(2))))) # (!\current_count|tmp_right\(0) & ((\current_count|tmp_right\(1) & 
-- (\current_count|tmp_right\(3))) # (!\current_count|tmp_right\(1) & ((\current_count|tmp_right\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y53_N28
\decoder2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux2~0_combout\ = (\current_count|tmp_right\(0)) # ((\current_count|tmp_right\(1) & (\current_count|tmp_right\(3))) # (!\current_count|tmp_right\(1) & ((\current_count|tmp_right\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y53_N10
\decoder2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux1~0_combout\ = (\current_count|tmp_right\(0) & ((\current_count|tmp_right\(1)) # (\current_count|tmp_right\(3) $ (!\current_count|tmp_right\(2))))) # (!\current_count|tmp_right\(0) & ((\current_count|tmp_right\(2) & 
-- (\current_count|tmp_right\(3))) # (!\current_count|tmp_right\(2) & ((\current_count|tmp_right\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y53_N4
\decoder2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|Mux0~0_combout\ = (\current_count|tmp_right\(1) & (!\current_count|tmp_right\(3) & ((!\current_count|tmp_right\(2)) # (!\current_count|tmp_right\(0))))) # (!\current_count|tmp_right\(1) & (\current_count|tmp_right\(3) $ 
-- (((\current_count|tmp_right\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_count|tmp_right\(3),
	datab => \current_count|tmp_right\(0),
	datac => \current_count|tmp_right\(1),
	datad => \current_count|tmp_right\(2),
	combout => \decoder2|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_left_out(0) <= \left_out[0]~output_o\;

ww_left_out(1) <= \left_out[1]~output_o\;

ww_left_out(2) <= \left_out[2]~output_o\;

ww_left_out(3) <= \left_out[3]~output_o\;

ww_left_out(4) <= \left_out[4]~output_o\;

ww_left_out(5) <= \left_out[5]~output_o\;

ww_left_out(6) <= \left_out[6]~output_o\;

ww_right_out(0) <= \right_out[0]~output_o\;

ww_right_out(1) <= \right_out[1]~output_o\;

ww_right_out(2) <= \right_out[2]~output_o\;

ww_right_out(3) <= \right_out[3]~output_o\;

ww_right_out(4) <= \right_out[4]~output_o\;

ww_right_out(5) <= \right_out[5]~output_o\;

ww_right_out(6) <= \right_out[6]~output_o\;
END structure;


