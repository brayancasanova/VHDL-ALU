-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/30/2024 17:28:00"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test_ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	vec_NZVC : OUT std_logic_vector(3 DOWNTO 0);
	uni : OUT std_logic_vector(6 DOWNTO 0);
	dec : OUT std_logic_vector(6 DOWNTO 0)
	);
END test_ALU;

-- Design Ports Information
-- vec_NZVC[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vec_NZVC[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vec_NZVC[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vec_NZVC[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[2]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vec_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_uni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(6 DOWNTO 0);
SIGNAL \Port_ALU|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vec_NZVC[0]~output_o\ : std_logic;
SIGNAL \vec_NZVC[1]~output_o\ : std_logic;
SIGNAL \vec_NZVC[2]~output_o\ : std_logic;
SIGNAL \vec_NZVC[3]~output_o\ : std_logic;
SIGNAL \uni[0]~output_o\ : std_logic;
SIGNAL \uni[1]~output_o\ : std_logic;
SIGNAL \uni[2]~output_o\ : std_logic;
SIGNAL \uni[3]~output_o\ : std_logic;
SIGNAL \uni[4]~output_o\ : std_logic;
SIGNAL \uni[5]~output_o\ : std_logic;
SIGNAL \uni[6]~output_o\ : std_logic;
SIGNAL \dec[0]~output_o\ : std_logic;
SIGNAL \dec[1]~output_o\ : std_logic;
SIGNAL \dec[2]~output_o\ : std_logic;
SIGNAL \dec[3]~output_o\ : std_logic;
SIGNAL \dec[4]~output_o\ : std_logic;
SIGNAL \dec[5]~output_o\ : std_logic;
SIGNAL \dec[6]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \Port_ALU|Equal0~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \Port_ALU|Equal0~1_combout\ : std_logic;
SIGNAL \Port_ALU|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \Port_ALU|Add0~1\ : std_logic;
SIGNAL \Port_ALU|Add0~3\ : std_logic;
SIGNAL \Port_ALU|Add0~5\ : std_logic;
SIGNAL \Port_ALU|Add0~7\ : std_logic;
SIGNAL \Port_ALU|Add0~9\ : std_logic;
SIGNAL \Port_ALU|Add0~11\ : std_logic;
SIGNAL \Port_ALU|Add0~13\ : std_logic;
SIGNAL \Port_ALU|Add0~14_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~1\ : std_logic;
SIGNAL \Port_ALU|Add1~3\ : std_logic;
SIGNAL \Port_ALU|Add1~5\ : std_logic;
SIGNAL \Port_ALU|Add1~7\ : std_logic;
SIGNAL \Port_ALU|Add1~9\ : std_logic;
SIGNAL \Port_ALU|Add1~11\ : std_logic;
SIGNAL \Port_ALU|Add1~13\ : std_logic;
SIGNAL \Port_ALU|Add1~14_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[1]~0_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[1]~1_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~4_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~8_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~6_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~10_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~3_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~12_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~0_combout\ : std_logic;
SIGNAL \Port_ALU|Add0~2_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~2_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~4_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~6_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~8_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~4_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~10_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~6_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~2_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~0_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~5_combout\ : std_logic;
SIGNAL \Port_ALU|Add1~12_combout\ : std_logic;
SIGNAL \Port_ALU|NZVC[2]~7_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \BCD_2|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_2|Mux0~0_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \Port_ALU|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \BCD_1|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_1|Mux0~0_combout\ : std_logic;
SIGNAL \Port_ALU|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Port_ALU|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCD_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \BCD_2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
vec_NZVC <= ww_vec_NZVC;
uni <= ww_uni;
dec <= ww_dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Port_ALU|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Port_ALU|Equal0~1_combout\);
\BCD_1|ALT_INV_Mux6~0_combout\ <= NOT \BCD_1|Mux6~0_combout\;
\BCD_2|ALT_INV_Mux6~0_combout\ <= NOT \BCD_2|Mux6~0_combout\;

-- Location: IOOBUF_X28_Y0_N23
\vec_NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(0),
	devoe => ww_devoe,
	o => \vec_NZVC[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\vec_NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(1),
	devoe => ww_devoe,
	o => \vec_NZVC[1]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\vec_NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(2),
	devoe => ww_devoe,
	o => \vec_NZVC[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\vec_NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Port_ALU|NZVC\(3),
	devoe => ww_devoe,
	o => \vec_NZVC[3]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\uni[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \uni[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\uni[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \uni[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\uni[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \uni[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\uni[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \uni[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\uni[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \uni[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\uni[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \uni[5]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\uni[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \uni[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\dec[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dec[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\dec[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dec[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\dec[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dec[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\dec[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dec[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\dec[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dec[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\dec[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dec[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\dec[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dec[6]~output_o\);

-- Location: IOIBUF_X34_Y9_N1
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X32_Y3_N20
\Port_ALU|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Port_ALU|Equal0~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X33_Y3_N22
\Port_ALU|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~0_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X33_Y3_N14
\Port_ALU|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~1_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X32_Y0_N22
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X33_Y3_N10
\Port_ALU|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~2_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X32_Y0_N8
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X33_Y3_N26
\Port_ALU|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~3_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~3_combout\);

-- Location: IOIBUF_X21_Y0_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X33_Y3_N8
\Port_ALU|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~4_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~4_combout\);

-- Location: IOIBUF_X25_Y0_N15
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X33_Y3_N12
\Port_ALU|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~5_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X34_Y5_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X33_Y3_N20
\Port_ALU|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~6_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~6_combout\);

-- Location: IOIBUF_X34_Y6_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X32_Y3_N26
\Port_ALU|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|_~7_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Port_ALU|Add0|auto_generated|_~7_combout\);

-- Location: IOIBUF_X30_Y0_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X32_Y3_N0
\Port_ALU|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\Port_ALU|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Equal0~0_combout\,
	datad => VCC,
	cout => \Port_ALU|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X32_Y3_N2
\Port_ALU|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[1]~2_combout\ = (\Port_ALU|Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (!\Port_ALU|Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\Port_ALU|Add0|auto_generated|result_int[0]~1_cout\) # 
-- (GND))))) # (!\Port_ALU|Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (\Port_ALU|Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Port_ALU|Add0|auto_generated|result_int[0]~1_cout\))))
-- \Port_ALU|Add0|auto_generated|result_int[1]~3\ = CARRY((\Port_ALU|Add0|auto_generated|_~7_combout\ & ((!\Port_ALU|Add0|auto_generated|result_int[0]~1_cout\) # (!\A[0]~input_o\))) # (!\Port_ALU|Add0|auto_generated|_~7_combout\ & (!\A[0]~input_o\ & 
-- !\Port_ALU|Add0|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|_~7_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \Port_ALU|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X32_Y3_N4
\Port_ALU|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[2]~4_combout\ = ((\Port_ALU|Add0|auto_generated|_~6_combout\ $ (\A[1]~input_o\ $ (\Port_ALU|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \Port_ALU|Add0|auto_generated|result_int[2]~5\ = CARRY((\Port_ALU|Add0|auto_generated|_~6_combout\ & (\A[1]~input_o\ & !\Port_ALU|Add0|auto_generated|result_int[1]~3\)) # (!\Port_ALU|Add0|auto_generated|_~6_combout\ & ((\A[1]~input_o\) # 
-- (!\Port_ALU|Add0|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|_~6_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[1]~3\,
	combout => \Port_ALU|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X32_Y3_N6
\Port_ALU|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\Port_ALU|Add0|auto_generated|_~5_combout\ & (!\Port_ALU|Add0|auto_generated|result_int[2]~5\)) # (!\Port_ALU|Add0|auto_generated|_~5_combout\ & 
-- (\Port_ALU|Add0|auto_generated|result_int[2]~5\ & VCC)))) # (!\A[2]~input_o\ & ((\Port_ALU|Add0|auto_generated|_~5_combout\ & ((\Port_ALU|Add0|auto_generated|result_int[2]~5\) # (GND))) # (!\Port_ALU|Add0|auto_generated|_~5_combout\ & 
-- (!\Port_ALU|Add0|auto_generated|result_int[2]~5\))))
-- \Port_ALU|Add0|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (\Port_ALU|Add0|auto_generated|_~5_combout\ & !\Port_ALU|Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\Port_ALU|Add0|auto_generated|_~5_combout\) # 
-- (!\Port_ALU|Add0|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Port_ALU|Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[2]~5\,
	combout => \Port_ALU|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X32_Y3_N8
\Port_ALU|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[4]~8_combout\ = ((\A[3]~input_o\ $ (\Port_ALU|Add0|auto_generated|_~4_combout\ $ (\Port_ALU|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \Port_ALU|Add0|auto_generated|result_int[4]~9\ = CARRY((\A[3]~input_o\ & ((!\Port_ALU|Add0|auto_generated|result_int[3]~7\) # (!\Port_ALU|Add0|auto_generated|_~4_combout\))) # (!\A[3]~input_o\ & (!\Port_ALU|Add0|auto_generated|_~4_combout\ & 
-- !\Port_ALU|Add0|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Port_ALU|Add0|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[3]~7\,
	combout => \Port_ALU|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X32_Y3_N10
\Port_ALU|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[5]~10_combout\ = (\A[4]~input_o\ & ((\Port_ALU|Add0|auto_generated|_~3_combout\ & (!\Port_ALU|Add0|auto_generated|result_int[4]~9\)) # (!\Port_ALU|Add0|auto_generated|_~3_combout\ & 
-- (\Port_ALU|Add0|auto_generated|result_int[4]~9\ & VCC)))) # (!\A[4]~input_o\ & ((\Port_ALU|Add0|auto_generated|_~3_combout\ & ((\Port_ALU|Add0|auto_generated|result_int[4]~9\) # (GND))) # (!\Port_ALU|Add0|auto_generated|_~3_combout\ & 
-- (!\Port_ALU|Add0|auto_generated|result_int[4]~9\))))
-- \Port_ALU|Add0|auto_generated|result_int[5]~11\ = CARRY((\A[4]~input_o\ & (\Port_ALU|Add0|auto_generated|_~3_combout\ & !\Port_ALU|Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\Port_ALU|Add0|auto_generated|_~3_combout\) # 
-- (!\Port_ALU|Add0|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Port_ALU|Add0|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[4]~9\,
	combout => \Port_ALU|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X32_Y3_N12
\Port_ALU|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[6]~12_combout\ = ((\Port_ALU|Add0|auto_generated|_~2_combout\ $ (\A[5]~input_o\ $ (\Port_ALU|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \Port_ALU|Add0|auto_generated|result_int[6]~13\ = CARRY((\Port_ALU|Add0|auto_generated|_~2_combout\ & (\A[5]~input_o\ & !\Port_ALU|Add0|auto_generated|result_int[5]~11\)) # (!\Port_ALU|Add0|auto_generated|_~2_combout\ & ((\A[5]~input_o\) # 
-- (!\Port_ALU|Add0|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|_~2_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[5]~11\,
	combout => \Port_ALU|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X32_Y3_N14
\Port_ALU|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[7]~14_combout\ = (\Port_ALU|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (!\Port_ALU|Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\Port_ALU|Add0|auto_generated|result_int[6]~13\) # 
-- (GND))))) # (!\Port_ALU|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (\Port_ALU|Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\A[6]~input_o\ & (!\Port_ALU|Add0|auto_generated|result_int[6]~13\))))
-- \Port_ALU|Add0|auto_generated|result_int[7]~15\ = CARRY((\Port_ALU|Add0|auto_generated|_~1_combout\ & ((!\Port_ALU|Add0|auto_generated|result_int[6]~13\) # (!\A[6]~input_o\))) # (!\Port_ALU|Add0|auto_generated|_~1_combout\ & (!\A[6]~input_o\ & 
-- !\Port_ALU|Add0|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|_~1_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[6]~13\,
	combout => \Port_ALU|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X32_Y3_N16
\Port_ALU|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[8]~16_combout\ = ((\Port_ALU|Add0|auto_generated|_~0_combout\ $ (\A[7]~input_o\ $ (\Port_ALU|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \Port_ALU|Add0|auto_generated|result_int[8]~17\ = CARRY((\Port_ALU|Add0|auto_generated|_~0_combout\ & (\A[7]~input_o\ & !\Port_ALU|Add0|auto_generated|result_int[7]~15\)) # (!\Port_ALU|Add0|auto_generated|_~0_combout\ & ((\A[7]~input_o\) # 
-- (!\Port_ALU|Add0|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|_~0_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0|auto_generated|result_int[7]~15\,
	combout => \Port_ALU|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \Port_ALU|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X32_Y3_N18
\Port_ALU|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0|auto_generated|result_int[9]~18_combout\ = \Port_ALU|Equal0~0_combout\ $ (!\Port_ALU|Add0|auto_generated|result_int[8]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Equal0~0_combout\,
	cin => \Port_ALU|Add0|auto_generated|result_int[8]~17\,
	combout => \Port_ALU|Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X33_Y3_N0
\Port_ALU|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Port_ALU|Equal0~1_combout\);

-- Location: CLKCTRL_G7
\Port_ALU|Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Port_ALU|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Port_ALU|Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X32_Y3_N24
\Port_ALU|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(0) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Add0|auto_generated|result_int[9]~18_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|NZVC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add0|auto_generated|result_int[9]~18_combout\,
	datac => \Port_ALU|NZVC\(0),
	datad => \Port_ALU|Equal0~1clkctrl_outclk\,
	combout => \Port_ALU|NZVC\(0));

-- Location: LCCOMB_X32_Y2_N10
\Port_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Port_ALU|Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Port_ALU|Add0~0_combout\,
	cout => \Port_ALU|Add0~1\);

-- Location: LCCOMB_X32_Y2_N12
\Port_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Port_ALU|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Port_ALU|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Port_ALU|Add0~1\)) # (!\A[1]~input_o\ & ((\Port_ALU|Add0~1\) # (GND)))))
-- \Port_ALU|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Port_ALU|Add0~1\)) # (!\B[1]~input_o\ & ((!\Port_ALU|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~1\,
	combout => \Port_ALU|Add0~2_combout\,
	cout => \Port_ALU|Add0~3\);

-- Location: LCCOMB_X32_Y2_N14
\Port_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\Port_ALU|Add0~3\)))) # (GND)
-- \Port_ALU|Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Port_ALU|Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\Port_ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~3\,
	combout => \Port_ALU|Add0~4_combout\,
	cout => \Port_ALU|Add0~5\);

-- Location: LCCOMB_X32_Y2_N16
\Port_ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Port_ALU|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\Port_ALU|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Port_ALU|Add0~5\)) # (!\B[3]~input_o\ & ((\Port_ALU|Add0~5\) # (GND)))))
-- \Port_ALU|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Port_ALU|Add0~5\)) # (!\A[3]~input_o\ & ((!\Port_ALU|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~5\,
	combout => \Port_ALU|Add0~6_combout\,
	cout => \Port_ALU|Add0~7\);

-- Location: LCCOMB_X32_Y2_N18
\Port_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\Port_ALU|Add0~7\)))) # (GND)
-- \Port_ALU|Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Port_ALU|Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Port_ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~7\,
	combout => \Port_ALU|Add0~8_combout\,
	cout => \Port_ALU|Add0~9\);

-- Location: LCCOMB_X32_Y2_N20
\Port_ALU|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\Port_ALU|Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Port_ALU|Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Port_ALU|Add0~9\)) # (!\B[5]~input_o\ & ((\Port_ALU|Add0~9\) # (GND)))))
-- \Port_ALU|Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Port_ALU|Add0~9\)) # (!\A[5]~input_o\ & ((!\Port_ALU|Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~9\,
	combout => \Port_ALU|Add0~10_combout\,
	cout => \Port_ALU|Add0~11\);

-- Location: LCCOMB_X32_Y2_N22
\Port_ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\Port_ALU|Add0~11\)))) # (GND)
-- \Port_ALU|Add0~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Port_ALU|Add0~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\Port_ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add0~11\,
	combout => \Port_ALU|Add0~12_combout\,
	cout => \Port_ALU|Add0~13\);

-- Location: LCCOMB_X32_Y2_N24
\Port_ALU|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add0~14_combout\ = \B[7]~input_o\ $ (\Port_ALU|Add0~13\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \Port_ALU|Add0~13\,
	combout => \Port_ALU|Add0~14_combout\);

-- Location: LCCOMB_X31_Y2_N0
\Port_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Port_ALU|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Port_ALU|Add1~0_combout\,
	cout => \Port_ALU|Add1~1\);

-- Location: LCCOMB_X31_Y2_N2
\Port_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Port_ALU|Add1~1\)) # (!\B[1]~input_o\ & (\Port_ALU|Add1~1\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\Port_ALU|Add1~1\) # (GND))) # (!\B[1]~input_o\ & (!\Port_ALU|Add1~1\))))
-- \Port_ALU|Add1~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\Port_ALU|Add1~1\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\Port_ALU|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~1\,
	combout => \Port_ALU|Add1~2_combout\,
	cout => \Port_ALU|Add1~3\);

-- Location: LCCOMB_X31_Y2_N4
\Port_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\Port_ALU|Add1~3\)))) # (GND)
-- \Port_ALU|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\Port_ALU|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Port_ALU|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~3\,
	combout => \Port_ALU|Add1~4_combout\,
	cout => \Port_ALU|Add1~5\);

-- Location: LCCOMB_X31_Y2_N6
\Port_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Port_ALU|Add1~5\)) # (!\A[3]~input_o\ & ((\Port_ALU|Add1~5\) # (GND))))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (\Port_ALU|Add1~5\ & VCC)) # (!\A[3]~input_o\ & (!\Port_ALU|Add1~5\))))
-- \Port_ALU|Add1~7\ = CARRY((\B[3]~input_o\ & ((!\Port_ALU|Add1~5\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & !\Port_ALU|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~5\,
	combout => \Port_ALU|Add1~6_combout\,
	cout => \Port_ALU|Add1~7\);

-- Location: LCCOMB_X31_Y2_N8
\Port_ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\Port_ALU|Add1~7\)))) # (GND)
-- \Port_ALU|Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\Port_ALU|Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Port_ALU|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~7\,
	combout => \Port_ALU|Add1~8_combout\,
	cout => \Port_ALU|Add1~9\);

-- Location: LCCOMB_X31_Y2_N10
\Port_ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Port_ALU|Add1~9\)) # (!\A[5]~input_o\ & ((\Port_ALU|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\Port_ALU|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\Port_ALU|Add1~9\))))
-- \Port_ALU|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\Port_ALU|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\Port_ALU|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~9\,
	combout => \Port_ALU|Add1~10_combout\,
	cout => \Port_ALU|Add1~11\);

-- Location: LCCOMB_X31_Y2_N12
\Port_ALU|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\Port_ALU|Add1~11\)))) # (GND)
-- \Port_ALU|Add1~13\ = CARRY((\A[6]~input_o\ & ((!\Port_ALU|Add1~11\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\Port_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Port_ALU|Add1~11\,
	combout => \Port_ALU|Add1~12_combout\,
	cout => \Port_ALU|Add1~13\);

-- Location: LCCOMB_X31_Y2_N14
\Port_ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Add1~14_combout\ = \B[7]~input_o\ $ (\Port_ALU|Add1~13\ $ (!\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \Port_ALU|Add1~13\,
	combout => \Port_ALU|Add1~14_combout\);

-- Location: LCCOMB_X31_Y2_N24
\Port_ALU|NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[1]~0_combout\ = (\ALU_Sel[0]~input_o\ & ((\Port_ALU|Add1~14_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Port_ALU|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Port_ALU|Add0~14_combout\,
	datac => \Port_ALU|Add1~14_combout\,
	combout => \Port_ALU|NZVC[1]~0_combout\);

-- Location: LCCOMB_X31_Y3_N24
\Port_ALU|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[1]~1_combout\ = (\Port_ALU|NZVC[1]~0_combout\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (!\Port_ALU|NZVC[1]~0_combout\ & ((!\A[7]~input_o\) # (!\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC[1]~0_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Port_ALU|NZVC[1]~1_combout\);

-- Location: LCCOMB_X26_Y3_N28
\Port_ALU|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(1) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (!\Port_ALU|NZVC[1]~1_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|NZVC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|NZVC[1]~1_combout\,
	datac => \Port_ALU|Equal0~1clkctrl_outclk\,
	datad => \Port_ALU|NZVC\(1),
	combout => \Port_ALU|NZVC\(1));

-- Location: LCCOMB_X33_Y2_N2
\Port_ALU|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~3_combout\ = (!\Port_ALU|Add0~4_combout\ & (!\Port_ALU|Add0~8_combout\ & (!\Port_ALU|Add0~6_combout\ & !\Port_ALU|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0~4_combout\,
	datab => \Port_ALU|Add0~8_combout\,
	datac => \Port_ALU|Add0~6_combout\,
	datad => \Port_ALU|Add0~10_combout\,
	combout => \Port_ALU|NZVC[2]~3_combout\);

-- Location: LCCOMB_X33_Y2_N0
\Port_ALU|NZVC[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~2_combout\ = (!\Port_ALU|Add0~0_combout\ & (!\Port_ALU|Add0~14_combout\ & (!\ALU_Sel[0]~input_o\ & !\Port_ALU|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0~0_combout\,
	datab => \Port_ALU|Add0~14_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Port_ALU|Add0~2_combout\,
	combout => \Port_ALU|NZVC[2]~2_combout\);

-- Location: LCCOMB_X33_Y2_N4
\Port_ALU|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~4_combout\ = (\Port_ALU|NZVC[2]~3_combout\ & (!\Port_ALU|Add0~12_combout\ & \Port_ALU|NZVC[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|NZVC[2]~3_combout\,
	datac => \Port_ALU|Add0~12_combout\,
	datad => \Port_ALU|NZVC[2]~2_combout\,
	combout => \Port_ALU|NZVC[2]~4_combout\);

-- Location: LCCOMB_X31_Y2_N28
\Port_ALU|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~6_combout\ = (!\Port_ALU|Add1~6_combout\ & (!\Port_ALU|Add1~8_combout\ & (!\Port_ALU|Add1~4_combout\ & !\Port_ALU|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add1~6_combout\,
	datab => \Port_ALU|Add1~8_combout\,
	datac => \Port_ALU|Add1~4_combout\,
	datad => \Port_ALU|Add1~10_combout\,
	combout => \Port_ALU|NZVC[2]~6_combout\);

-- Location: LCCOMB_X31_Y2_N26
\Port_ALU|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~5_combout\ = (\ALU_Sel[0]~input_o\ & (!\Port_ALU|Add1~2_combout\ & (!\Port_ALU|Add1~14_combout\ & !\Port_ALU|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Port_ALU|Add1~2_combout\,
	datac => \Port_ALU|Add1~14_combout\,
	datad => \Port_ALU|Add1~0_combout\,
	combout => \Port_ALU|NZVC[2]~5_combout\);

-- Location: LCCOMB_X32_Y2_N0
\Port_ALU|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC[2]~7_combout\ = (\Port_ALU|NZVC[2]~4_combout\) # ((\Port_ALU|NZVC[2]~6_combout\ & (\Port_ALU|NZVC[2]~5_combout\ & !\Port_ALU|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC[2]~4_combout\,
	datab => \Port_ALU|NZVC[2]~6_combout\,
	datac => \Port_ALU|NZVC[2]~5_combout\,
	datad => \Port_ALU|Add1~12_combout\,
	combout => \Port_ALU|NZVC[2]~7_combout\);

-- Location: LCCOMB_X32_Y2_N2
\Port_ALU|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(2) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|NZVC[2]~7_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|NZVC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|NZVC[2]~7_combout\,
	datac => \Port_ALU|Equal0~1clkctrl_outclk\,
	datad => \Port_ALU|NZVC\(2),
	combout => \Port_ALU|NZVC\(2));

-- Location: LCCOMB_X31_Y3_N30
\Port_ALU|NZVC[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|NZVC\(3) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Add0|auto_generated|result_int[8]~16_combout\))) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|NZVC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|NZVC\(3),
	datac => \Port_ALU|Equal0~1clkctrl_outclk\,
	datad => \Port_ALU|Add0|auto_generated|result_int[8]~16_combout\,
	combout => \Port_ALU|NZVC\(3));

-- Location: LCCOMB_X32_Y3_N22
\Port_ALU|Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(3) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Add0|auto_generated|result_int[4]~8_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|result_int[4]~8_combout\,
	datac => \Port_ALU|Result\(3),
	datad => \Port_ALU|Equal0~1clkctrl_outclk\,
	combout => \Port_ALU|Result\(3));

-- Location: LCCOMB_X33_Y3_N24
\Port_ALU|Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(2) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Add0|auto_generated|result_int[3]~6_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add0|auto_generated|result_int[3]~6_combout\,
	datac => \Port_ALU|Equal0~1clkctrl_outclk\,
	datad => \Port_ALU|Result\(2),
	combout => \Port_ALU|Result\(2));

-- Location: LCCOMB_X33_Y3_N30
\Port_ALU|Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(0) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Equal0~1clkctrl_outclk\,
	combout => \Port_ALU|Result\(0));

-- Location: LCCOMB_X33_Y3_N28
\Port_ALU|Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(1) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Add0|auto_generated|result_int[2]~4_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \Port_ALU|Equal0~1clkctrl_outclk\,
	datad => \Port_ALU|Result\(1),
	combout => \Port_ALU|Result\(1));

-- Location: LCCOMB_X33_Y3_N4
\BCD_2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux6~0_combout\ = (\Port_ALU|Result\(0) & ((\Port_ALU|Result\(3)) # (\Port_ALU|Result\(2) $ (\Port_ALU|Result\(1))))) # (!\Port_ALU|Result\(0) & ((\Port_ALU|Result\(1)) # (\Port_ALU|Result\(3) $ (\Port_ALU|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(3),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(1),
	combout => \BCD_2|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y2_N16
\BCD_2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux5~0_combout\ = (\Port_ALU|Result\(1) & (!\Port_ALU|Result\(3) & ((\Port_ALU|Result\(0)) # (!\Port_ALU|Result\(2))))) # (!\Port_ALU|Result\(1) & (\Port_ALU|Result\(0) & (\Port_ALU|Result\(2) $ (!\Port_ALU|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(1),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(3),
	combout => \BCD_2|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y2_N6
\BCD_2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux4~0_combout\ = (\Port_ALU|Result\(1) & (((\Port_ALU|Result\(0) & !\Port_ALU|Result\(3))))) # (!\Port_ALU|Result\(1) & ((\Port_ALU|Result\(2) & ((!\Port_ALU|Result\(3)))) # (!\Port_ALU|Result\(2) & (\Port_ALU|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(1),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(3),
	combout => \BCD_2|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y3_N16
\BCD_2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux3~0_combout\ = (\Port_ALU|Result\(0) & ((\Port_ALU|Result\(2) $ (!\Port_ALU|Result\(1))))) # (!\Port_ALU|Result\(0) & ((\Port_ALU|Result\(3) & (!\Port_ALU|Result\(2) & \Port_ALU|Result\(1))) # (!\Port_ALU|Result\(3) & (\Port_ALU|Result\(2) & 
-- !\Port_ALU|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(3),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(1),
	combout => \BCD_2|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y3_N18
\BCD_2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux2~0_combout\ = (\Port_ALU|Result\(3) & (\Port_ALU|Result\(2) & ((\Port_ALU|Result\(1)) # (!\Port_ALU|Result\(0))))) # (!\Port_ALU|Result\(3) & (!\Port_ALU|Result\(2) & (!\Port_ALU|Result\(0) & \Port_ALU|Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(3),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(1),
	combout => \BCD_2|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y3_N2
\BCD_2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux1~0_combout\ = (\Port_ALU|Result\(3) & ((\Port_ALU|Result\(0) & ((\Port_ALU|Result\(1)))) # (!\Port_ALU|Result\(0) & (\Port_ALU|Result\(2))))) # (!\Port_ALU|Result\(3) & (\Port_ALU|Result\(2) & (\Port_ALU|Result\(0) $ (\Port_ALU|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(3),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(1),
	combout => \BCD_2|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y3_N6
\BCD_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_2|Mux0~0_combout\ = (\Port_ALU|Result\(3) & (\Port_ALU|Result\(0) & (\Port_ALU|Result\(2) $ (\Port_ALU|Result\(1))))) # (!\Port_ALU|Result\(3) & (!\Port_ALU|Result\(1) & (\Port_ALU|Result\(2) $ (\Port_ALU|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(3),
	datab => \Port_ALU|Result\(2),
	datac => \Port_ALU|Result\(0),
	datad => \Port_ALU|Result\(1),
	combout => \BCD_2|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y3_N30
\Port_ALU|Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(6) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Add0|auto_generated|result_int[7]~14_combout\)) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Add0|auto_generated|result_int[7]~14_combout\,
	datac => \Port_ALU|Result\(6),
	datad => \Port_ALU|Equal0~1clkctrl_outclk\,
	combout => \Port_ALU|Result\(6));

-- Location: LCCOMB_X31_Y3_N28
\Port_ALU|Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(4) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Add0|auto_generated|result_int[5]~10_combout\))) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|Add0|auto_generated|result_int[5]~10_combout\,
	datad => \Port_ALU|Equal0~1clkctrl_outclk\,
	combout => \Port_ALU|Result\(4));

-- Location: LCCOMB_X32_Y3_N28
\Port_ALU|Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Port_ALU|Result\(5) = (GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & ((\Port_ALU|Add0|auto_generated|result_int[6]~12_combout\))) # (!GLOBAL(\Port_ALU|Equal0~1clkctrl_outclk\) & (\Port_ALU|Result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Port_ALU|Result\(5),
	datac => \Port_ALU|Add0|auto_generated|result_int[6]~12_combout\,
	datad => \Port_ALU|Equal0~1clkctrl_outclk\,
	combout => \Port_ALU|Result\(5));

-- Location: LCCOMB_X30_Y1_N24
\BCD_1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux6~0_combout\ = (\Port_ALU|Result\(4) & ((\Port_ALU|NZVC\(3)) # (\Port_ALU|Result\(6) $ (\Port_ALU|Result\(5))))) # (!\Port_ALU|Result\(4) & ((\Port_ALU|Result\(5)) # (\Port_ALU|Result\(6) $ (\Port_ALU|NZVC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y1_N22
\BCD_1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux5~0_combout\ = (\Port_ALU|Result\(6) & (\Port_ALU|Result\(4) & (\Port_ALU|NZVC\(3) $ (\Port_ALU|Result\(5))))) # (!\Port_ALU|Result\(6) & (!\Port_ALU|NZVC\(3) & ((\Port_ALU|Result\(4)) # (\Port_ALU|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y1_N28
\BCD_1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux4~0_combout\ = (\Port_ALU|Result\(5) & (((\Port_ALU|Result\(4) & !\Port_ALU|NZVC\(3))))) # (!\Port_ALU|Result\(5) & ((\Port_ALU|Result\(6) & ((!\Port_ALU|NZVC\(3)))) # (!\Port_ALU|Result\(6) & (\Port_ALU|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y1_N10
\BCD_1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux3~0_combout\ = (\Port_ALU|Result\(4) & (\Port_ALU|Result\(6) $ (((!\Port_ALU|Result\(5)))))) # (!\Port_ALU|Result\(4) & ((\Port_ALU|Result\(6) & (!\Port_ALU|NZVC\(3) & !\Port_ALU|Result\(5))) # (!\Port_ALU|Result\(6) & (\Port_ALU|NZVC\(3) & 
-- \Port_ALU|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y1_N4
\BCD_1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux2~0_combout\ = (\Port_ALU|Result\(6) & (\Port_ALU|NZVC\(3) & ((\Port_ALU|Result\(5)) # (!\Port_ALU|Result\(4))))) # (!\Port_ALU|Result\(6) & (!\Port_ALU|Result\(4) & (!\Port_ALU|NZVC\(3) & \Port_ALU|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\BCD_1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux1~0_combout\ = (\Port_ALU|NZVC\(3) & ((\Port_ALU|Result\(4) & ((\Port_ALU|Result\(5)))) # (!\Port_ALU|Result\(4) & (\Port_ALU|Result\(6))))) # (!\Port_ALU|NZVC\(3) & (\Port_ALU|Result\(6) & (\Port_ALU|Result\(4) $ (\Port_ALU|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y1_N12
\BCD_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_1|Mux0~0_combout\ = (\Port_ALU|Result\(6) & (!\Port_ALU|Result\(5) & (\Port_ALU|Result\(4) $ (!\Port_ALU|NZVC\(3))))) # (!\Port_ALU|Result\(6) & (\Port_ALU|Result\(4) & (\Port_ALU|NZVC\(3) $ (!\Port_ALU|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Port_ALU|Result\(6),
	datab => \Port_ALU|Result\(4),
	datac => \Port_ALU|NZVC\(3),
	datad => \Port_ALU|Result\(5),
	combout => \BCD_1|Mux0~0_combout\);

ww_vec_NZVC(0) <= \vec_NZVC[0]~output_o\;

ww_vec_NZVC(1) <= \vec_NZVC[1]~output_o\;

ww_vec_NZVC(2) <= \vec_NZVC[2]~output_o\;

ww_vec_NZVC(3) <= \vec_NZVC[3]~output_o\;

ww_uni(0) <= \uni[0]~output_o\;

ww_uni(1) <= \uni[1]~output_o\;

ww_uni(2) <= \uni[2]~output_o\;

ww_uni(3) <= \uni[3]~output_o\;

ww_uni(4) <= \uni[4]~output_o\;

ww_uni(5) <= \uni[5]~output_o\;

ww_uni(6) <= \uni[6]~output_o\;

ww_dec(0) <= \dec[0]~output_o\;

ww_dec(1) <= \dec[1]~output_o\;

ww_dec(2) <= \dec[2]~output_o\;

ww_dec(3) <= \dec[3]~output_o\;

ww_dec(4) <= \dec[4]~output_o\;

ww_dec(5) <= \dec[5]~output_o\;

ww_dec(6) <= \dec[6]~output_o\;
END structure;


