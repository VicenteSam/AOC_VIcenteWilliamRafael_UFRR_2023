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

-- DATE "11/28/2023 18:24:16"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Trinity IS
    PORT (
	clock : IN std_logic;
	outPc : BUFFER std_logic_vector(15 DOWNTO 0);
	outRam : BUFFER std_logic_vector(15 DOWNTO 0);
	outRom : BUFFER std_logic_vector(15 DOWNTO 0);
	outUla : BUFFER std_logic_vector(15 DOWNTO 0);
	out_br_regA : BUFFER std_logic_vector(15 DOWNTO 0);
	out_br_regB : BUFFER std_logic_vector(15 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(3 DOWNTO 0);
	out_endereco : BUFFER std_logic_vector(3 DOWNTO 0);
	overflow : BUFFER std_logic;
	out_out_mult4_2X1_ram_ula : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Trinity;

-- Design Ports Information
-- outPc[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[5]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[8]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[9]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[12]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[8]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[12]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[13]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[14]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[4]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[11]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[13]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[15]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[12]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[10]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[13]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[14]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[8]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[10]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[13]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[15]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[10]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[12]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Trinity IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_outPc : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outRam : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outRom : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outUla : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_br_regA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_br_regB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_out_out_mult4_2X1_ram_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \port_map_addr|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~2\ : std_logic;
SIGNAL \port_map_addr|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~6\ : std_logic;
SIGNAL \port_map_addr|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~10\ : std_logic;
SIGNAL \port_map_addr|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~14\ : std_logic;
SIGNAL \port_map_addr|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~18\ : std_logic;
SIGNAL \port_map_addr|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~22\ : std_logic;
SIGNAL \port_map_addr|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~26\ : std_logic;
SIGNAL \port_map_addr|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~30\ : std_logic;
SIGNAL \port_map_addr|Add0~33_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~34\ : std_logic;
SIGNAL \port_map_addr|Add0~37_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~38\ : std_logic;
SIGNAL \port_map_addr|Add0~41_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~42\ : std_logic;
SIGNAL \port_map_addr|Add0~45_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~46\ : std_logic;
SIGNAL \port_map_addr|Add0~49_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~50\ : std_logic;
SIGNAL \port_map_addr|Add0~53_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~54\ : std_logic;
SIGNAL \port_map_addr|Add0~57_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~58\ : std_logic;
SIGNAL \port_map_addr|Add0~61_sumout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_unidade_de_controle|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~6_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~7_combout\ : std_logic;
SIGNAL \port_map_ula|Mux21~2_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~293_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~21_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~66_cout\ : std_logic;
SIGNAL \port_map_ula|Add1~1_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux21~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~296_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~69_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~295_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~53_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~294_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~277_combout\ : std_logic;
SIGNAL \port_map_ula|Mux21~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~2\ : std_logic;
SIGNAL \port_map_ula|Add1~5_sumout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b1|S~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux20~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~54_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~70_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~278_combout\ : std_logic;
SIGNAL \port_map_ula|Mux20~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~55_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~71_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~279_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~6\ : std_logic;
SIGNAL \port_map_ula|Add1~9_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux19~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~23_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b2|S~combout\ : std_logic;
SIGNAL \port_map_ula|Mux19~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b2|Cout~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~72_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~56_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~280_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~10\ : std_logic;
SIGNAL \port_map_ula|Add1~13_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux18~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~24_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux18~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux18~1_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b4|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~14\ : std_logic;
SIGNAL \port_map_ula|Add1~17_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux17~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~57_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~73_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~281_combout\ : std_logic;
SIGNAL \port_map_ula|Mux17~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~26_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b5|S~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b5|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~18\ : std_logic;
SIGNAL \port_map_ula|Add1~21_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux16~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~58_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~42feeder_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~74_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~282_combout\ : std_logic;
SIGNAL \port_map_ula|Mux16~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b4|Cout~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~27_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b6|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~22\ : std_logic;
SIGNAL \port_map_ula|Add1~25_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux15~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~75_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~43_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~59_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~283_combout\ : std_logic;
SIGNAL \port_map_ula|Mux15~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~28_q\ : std_logic;
SIGNAL \port_map_ula|soma|b7|S~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b7|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~26\ : std_logic;
SIGNAL \port_map_ula|Add1~29_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux14~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~76_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~44_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~60_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~284_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~29_q\ : std_logic;
SIGNAL \port_map_ula|Add1~30\ : std_logic;
SIGNAL \port_map_ula|Add1~33_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux13~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~61_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~77_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~45_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~285_combout\ : std_logic;
SIGNAL \port_map_ula|Mux13~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~46_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~78_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~62_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~286_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~34\ : std_logic;
SIGNAL \port_map_ula|Add1~37_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux12~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~30_q\ : std_logic;
SIGNAL \port_map_ula|soma|b9|S~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~79_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~47_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~63_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~287_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~38\ : std_logic;
SIGNAL \port_map_ula|Add1~41_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux11~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~31_q\ : std_logic;
SIGNAL \port_map_ula|soma|b1|Cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~1_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b11|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~42\ : std_logic;
SIGNAL \port_map_ula|Add1~45_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux10~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~48_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~64_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~80_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~288_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~33_q\ : std_logic;
SIGNAL \port_map_ula|soma|b12|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~46\ : std_logic;
SIGNAL \port_map_ula|Add1~49_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux9~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~65_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~49feeder_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~49_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~81_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~289_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b13|S~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b13|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~50\ : std_logic;
SIGNAL \port_map_ula|Add1~53_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux8~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~50feeder_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~50_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~82_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~66_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~290_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b14|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~54\ : std_logic;
SIGNAL \port_map_ula|Add1~57_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~35_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~51_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~67_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~83_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~291_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~36_q\ : std_logic;
SIGNAL \port_map_ula|soma|b15|S~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b15|S~combout\ : std_logic;
SIGNAL \port_map_ula|Add1~58\ : std_logic;
SIGNAL \port_map_ula|Add1~61_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~52_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~68_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~84_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~292_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \port_map_rom|rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~8_combout\ : std_logic;
SIGNAL \port_map_ula|soma|overflow~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_ula|overflow~combout\ : std_logic;
SIGNAL \port_map_pc|outPort\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~80_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~64_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~48_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~79_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~63_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~47_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~31_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~78_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~62_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~46_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~30_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~77_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~61_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~45_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~29_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~76_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~60_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~44_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~28_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~75_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~59_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~43_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~27_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~74_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~58_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~26_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~73_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~57_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~72_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~56_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~24_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~71_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~55_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~23_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~70_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~54_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~22_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~69_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~53_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~21_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|soma|b15|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_ula|soma|b15|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b14|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b13|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_ula|soma|b13|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b12|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b11|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~287_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b9|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~285_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b7|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_ula|soma|b7|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b6|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b4|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b5|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_ula|soma|b5|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b4|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b2|ALT_INV_S~combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b1|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~7_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~6_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~84_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~68_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~52_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~36_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~83_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~67_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~51_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~35_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~82_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~66_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~50_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~34_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~81_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~65_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~49_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~33_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_overflow~combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|ALT_INV_overflow~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux16~1_combout\ : std_logic;

BEGIN

ww_clock <= clock;
outPc <= ww_outPc;
outRam <= ww_outRam;
outRom <= ww_outRom;
outUla <= ww_outUla;
out_br_regA <= ww_out_br_regA;
out_br_regB <= ww_out_br_regB;
out_opcode <= ww_out_opcode;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
out_endereco <= ww_out_endereco;
overflow <= ww_overflow;
out_out_mult4_2X1_ram_ula <= ww_out_out_mult4_2X1_ram_ula;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \port_map_ula|Mux6~0_combout\ & 
\port_map_ula|Mux7~0_combout\ & \port_map_ula|Mux8~0_combout\ & \port_map_ula|Mux9~0_combout\ & \port_map_ula|Mux10~0_combout\ & \port_map_ula|Mux11~1_combout\ & \port_map_ula|Mux12~0_combout\ & \port_map_ula|Mux13~0_combout\ & 
\port_map_ula|Mux14~0_combout\ & \port_map_ula|Mux15~0_combout\ & \port_map_ula|Mux16~0_combout\ & \port_map_ula|Mux17~0_combout\ & \port_map_ula|Mux18~1_combout\ & \port_map_ula|Mux19~0_combout\ & \port_map_ula|Mux20~0_combout\ & 
\port_map_ula|Mux21~0_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \~GND~combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\port_map_ula|ALT_INV_Add1~45_sumout\ <= NOT \port_map_ula|Add1~45_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~80_q\ <= NOT \port_map_banco_de_registradores|registradores~80_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~64_q\ <= NOT \port_map_banco_de_registradores|registradores~64_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~48_q\ <= NOT \port_map_banco_de_registradores|registradores~48_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~32_q\ <= NOT \port_map_banco_de_registradores|registradores~32_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~79_q\ <= NOT \port_map_banco_de_registradores|registradores~79_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~63_q\ <= NOT \port_map_banco_de_registradores|registradores~63_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~47_q\ <= NOT \port_map_banco_de_registradores|registradores~47_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~31_q\ <= NOT \port_map_banco_de_registradores|registradores~31_q\;
\port_map_ula|ALT_INV_Add1~41_sumout\ <= NOT \port_map_ula|Add1~41_sumout\;
\port_map_ula|ALT_INV_Add1~37_sumout\ <= NOT \port_map_ula|Add1~37_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~78_q\ <= NOT \port_map_banco_de_registradores|registradores~78_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~62_q\ <= NOT \port_map_banco_de_registradores|registradores~62_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~46_q\ <= NOT \port_map_banco_de_registradores|registradores~46_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~30_q\ <= NOT \port_map_banco_de_registradores|registradores~30_q\;
\port_map_ula|ALT_INV_Add1~33_sumout\ <= NOT \port_map_ula|Add1~33_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~77_q\ <= NOT \port_map_banco_de_registradores|registradores~77_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~61_q\ <= NOT \port_map_banco_de_registradores|registradores~61_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~45_q\ <= NOT \port_map_banco_de_registradores|registradores~45_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~29_q\ <= NOT \port_map_banco_de_registradores|registradores~29_q\;
\port_map_ula|ALT_INV_Add1~29_sumout\ <= NOT \port_map_ula|Add1~29_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~76_q\ <= NOT \port_map_banco_de_registradores|registradores~76_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~60_q\ <= NOT \port_map_banco_de_registradores|registradores~60_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~44_q\ <= NOT \port_map_banco_de_registradores|registradores~44_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~28_q\ <= NOT \port_map_banco_de_registradores|registradores~28_q\;
\port_map_ula|ALT_INV_Add1~25_sumout\ <= NOT \port_map_ula|Add1~25_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~75_q\ <= NOT \port_map_banco_de_registradores|registradores~75_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~59_q\ <= NOT \port_map_banco_de_registradores|registradores~59_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~43_q\ <= NOT \port_map_banco_de_registradores|registradores~43_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~27_q\ <= NOT \port_map_banco_de_registradores|registradores~27_q\;
\port_map_ula|ALT_INV_Add1~21_sumout\ <= NOT \port_map_ula|Add1~21_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~74_q\ <= NOT \port_map_banco_de_registradores|registradores~74_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~58_q\ <= NOT \port_map_banco_de_registradores|registradores~58_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~42_q\ <= NOT \port_map_banco_de_registradores|registradores~42_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~26_q\ <= NOT \port_map_banco_de_registradores|registradores~26_q\;
\port_map_ula|ALT_INV_Add1~17_sumout\ <= NOT \port_map_ula|Add1~17_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~73_q\ <= NOT \port_map_banco_de_registradores|registradores~73_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~57_q\ <= NOT \port_map_banco_de_registradores|registradores~57_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~41_q\ <= NOT \port_map_banco_de_registradores|registradores~41_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~25_q\ <= NOT \port_map_banco_de_registradores|registradores~25_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~72_q\ <= NOT \port_map_banco_de_registradores|registradores~72_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~56_q\ <= NOT \port_map_banco_de_registradores|registradores~56_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~40_q\ <= NOT \port_map_banco_de_registradores|registradores~40_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~24_q\ <= NOT \port_map_banco_de_registradores|registradores~24_q\;
\port_map_ula|ALT_INV_Add1~13_sumout\ <= NOT \port_map_ula|Add1~13_sumout\;
\port_map_ula|ALT_INV_Add1~9_sumout\ <= NOT \port_map_ula|Add1~9_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~71_q\ <= NOT \port_map_banco_de_registradores|registradores~71_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~55_q\ <= NOT \port_map_banco_de_registradores|registradores~55_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~39_q\ <= NOT \port_map_banco_de_registradores|registradores~39_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~23_q\ <= NOT \port_map_banco_de_registradores|registradores~23_q\;
\port_map_ula|ALT_INV_Add1~5_sumout\ <= NOT \port_map_ula|Add1~5_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~70_q\ <= NOT \port_map_banco_de_registradores|registradores~70_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~54_q\ <= NOT \port_map_banco_de_registradores|registradores~54_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~38_q\ <= NOT \port_map_banco_de_registradores|registradores~38_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~22_q\ <= NOT \port_map_banco_de_registradores|registradores~22_q\;
\port_map_ula|ALT_INV_Add1~1_sumout\ <= NOT \port_map_ula|Add1~1_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~69_q\ <= NOT \port_map_banco_de_registradores|registradores~69_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~53_q\ <= NOT \port_map_banco_de_registradores|registradores~53_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~37_q\ <= NOT \port_map_banco_de_registradores|registradores~37_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~21_q\ <= NOT \port_map_banco_de_registradores|registradores~21_q\;
\port_map_pc|ALT_INV_outPort\(15) <= NOT \port_map_pc|outPort\(15);
\port_map_pc|ALT_INV_outPort\(14) <= NOT \port_map_pc|outPort\(14);
\port_map_pc|ALT_INV_outPort\(13) <= NOT \port_map_pc|outPort\(13);
\port_map_pc|ALT_INV_outPort\(12) <= NOT \port_map_pc|outPort\(12);
\port_map_pc|ALT_INV_outPort\(11) <= NOT \port_map_pc|outPort\(11);
\port_map_pc|ALT_INV_outPort\(10) <= NOT \port_map_pc|outPort\(10);
\port_map_pc|ALT_INV_outPort\(9) <= NOT \port_map_pc|outPort\(9);
\port_map_pc|ALT_INV_outPort\(8) <= NOT \port_map_pc|outPort\(8);
\port_map_pc|ALT_INV_outPort\(7) <= NOT \port_map_pc|outPort\(7);
\port_map_pc|ALT_INV_outPort\(6) <= NOT \port_map_pc|outPort\(6);
\port_map_pc|ALT_INV_outPort\(5) <= NOT \port_map_pc|outPort\(5);
\port_map_pc|ALT_INV_outPort\(4) <= NOT \port_map_pc|outPort\(4);
\port_map_ula|soma|b15|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b15|S~combout\;
\port_map_ula|soma|b15|ALT_INV_S~0_combout\ <= NOT \port_map_ula|soma|b15|S~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~292_combout\ <= NOT \port_map_banco_de_registradores|registradores~292_combout\;
\port_map_ula|soma|b14|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b14|S~combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~291_combout\ <= NOT \port_map_banco_de_registradores|registradores~291_combout\;
\port_map_ula|soma|b13|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b13|S~combout\;
\port_map_ula|soma|b13|ALT_INV_S~0_combout\ <= NOT \port_map_ula|soma|b13|S~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~290_combout\ <= NOT \port_map_banco_de_registradores|registradores~290_combout\;
\port_map_ula|soma|b12|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b12|S~combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~289_combout\ <= NOT \port_map_banco_de_registradores|registradores~289_combout\;
\port_map_ula|soma|b11|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b11|S~combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~288_combout\ <= NOT \port_map_banco_de_registradores|registradores~288_combout\;
\port_map_ula|ALT_INV_Mux11~0_combout\ <= NOT \port_map_ula|Mux11~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~287_combout\ <= NOT \port_map_banco_de_registradores|registradores~287_combout\;
\port_map_ula|soma|b1|ALT_INV_Cout~0_combout\ <= NOT \port_map_ula|soma|b1|Cout~0_combout\;
\port_map_ula|soma|b9|ALT_INV_S~0_combout\ <= NOT \port_map_ula|soma|b9|S~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~286_combout\ <= NOT \port_map_banco_de_registradores|registradores~286_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~285_combout\ <= NOT \port_map_banco_de_registradores|registradores~285_combout\;
\port_map_ula|soma|b7|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b7|S~combout\;
\port_map_ula|soma|b7|ALT_INV_S~0_combout\ <= NOT \port_map_ula|soma|b7|S~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~284_combout\ <= NOT \port_map_banco_de_registradores|registradores~284_combout\;
\port_map_ula|soma|b6|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b6|S~combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\;
\port_map_ula|soma|b4|ALT_INV_Cout~0_combout\ <= NOT \port_map_ula|soma|b4|Cout~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~283_combout\ <= NOT \port_map_banco_de_registradores|registradores~283_combout\;
\port_map_ula|soma|b5|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b5|S~combout\;
\port_map_ula|soma|b5|ALT_INV_S~0_combout\ <= NOT \port_map_ula|soma|b5|S~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~282_combout\ <= NOT \port_map_banco_de_registradores|registradores~282_combout\;
\port_map_ula|soma|b4|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b4|S~combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~281_combout\ <= NOT \port_map_banco_de_registradores|registradores~281_combout\;
\port_map_ula|ALT_INV_Mux18~0_combout\ <= NOT \port_map_ula|Mux18~0_combout\;
\port_map_ula|soma|b2|ALT_INV_Cout~0_combout\ <= NOT \port_map_ula|soma|b2|Cout~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~280_combout\ <= NOT \port_map_banco_de_registradores|registradores~280_combout\;
\port_map_ula|soma|b2|ALT_INV_S~combout\ <= NOT \port_map_ula|soma|b2|S~combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~279_combout\ <= NOT \port_map_banco_de_registradores|registradores~279_combout\;
\port_map_ula|soma|b1|ALT_INV_S~0_combout\ <= NOT \port_map_ula|soma|b1|S~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~278_combout\ <= NOT \port_map_banco_de_registradores|registradores~278_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~277_combout\ <= NOT \port_map_banco_de_registradores|registradores~277_combout\;
\port_map_rom|ALT_INV_rom_memory~7_combout\ <= NOT \port_map_rom|rom_memory~7_combout\;
\port_map_rom|ALT_INV_rom_memory~6_combout\ <= NOT \port_map_rom|rom_memory~6_combout\;
\port_map_rom|ALT_INV_rom_memory~5_combout\ <= NOT \port_map_rom|rom_memory~5_combout\;
\port_map_rom|ALT_INV_rom_memory~4_combout\ <= NOT \port_map_rom|rom_memory~4_combout\;
\port_map_rom|ALT_INV_rom_memory~3_combout\ <= NOT \port_map_rom|rom_memory~3_combout\;
\port_map_rom|ALT_INV_rom_memory~2_combout\ <= NOT \port_map_rom|rom_memory~2_combout\;
\port_map_rom|ALT_INV_rom_memory~0_combout\ <= NOT \port_map_rom|rom_memory~0_combout\;
\port_map_pc|ALT_INV_outPort\(3) <= NOT \port_map_pc|outPort\(3);
\port_map_pc|ALT_INV_outPort\(2) <= NOT \port_map_pc|outPort\(2);
\port_map_pc|ALT_INV_outPort\(1) <= NOT \port_map_pc|outPort\(1);
\port_map_pc|ALT_INV_outPort\(0) <= NOT \port_map_pc|outPort\(0);
\port_map_ula|ALT_INV_Add1~61_sumout\ <= NOT \port_map_ula|Add1~61_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~84_q\ <= NOT \port_map_banco_de_registradores|registradores~84_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~68_q\ <= NOT \port_map_banco_de_registradores|registradores~68_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~52_q\ <= NOT \port_map_banco_de_registradores|registradores~52_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~36_q\ <= NOT \port_map_banco_de_registradores|registradores~36_q\;
\port_map_ula|ALT_INV_Add1~57_sumout\ <= NOT \port_map_ula|Add1~57_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~83_q\ <= NOT \port_map_banco_de_registradores|registradores~83_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~67_q\ <= NOT \port_map_banco_de_registradores|registradores~67_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~51_q\ <= NOT \port_map_banco_de_registradores|registradores~51_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~35_q\ <= NOT \port_map_banco_de_registradores|registradores~35_q\;
\port_map_ula|ALT_INV_Add1~53_sumout\ <= NOT \port_map_ula|Add1~53_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~82_q\ <= NOT \port_map_banco_de_registradores|registradores~82_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~66_q\ <= NOT \port_map_banco_de_registradores|registradores~66_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~50_q\ <= NOT \port_map_banco_de_registradores|registradores~50_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~34_q\ <= NOT \port_map_banco_de_registradores|registradores~34_q\;
\port_map_ula|ALT_INV_Add1~49_sumout\ <= NOT \port_map_ula|Add1~49_sumout\;
\port_map_banco_de_registradores|ALT_INV_registradores~81_q\ <= NOT \port_map_banco_de_registradores|registradores~81_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~65_q\ <= NOT \port_map_banco_de_registradores|registradores~65_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~49_q\ <= NOT \port_map_banco_de_registradores|registradores~49_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~33_q\ <= NOT \port_map_banco_de_registradores|registradores~33_q\;
\port_map_ula|ALT_INV_overflow~combout\ <= NOT \port_map_ula|overflow~combout\;
\port_map_ula|ALT_INV_Mux0~0_combout\ <= NOT \port_map_ula|Mux0~0_combout\;
\port_map_ula|soma|ALT_INV_overflow~0_combout\ <= NOT \port_map_ula|soma|overflow~0_combout\;
\port_map_ula|ALT_INV_Mux8~1_combout\ <= NOT \port_map_ula|Mux8~1_combout\;
\port_map_ula|ALT_INV_Mux9~1_combout\ <= NOT \port_map_ula|Mux9~1_combout\;
\port_map_ula|ALT_INV_Mux16~1_combout\ <= NOT \port_map_ula|Mux16~1_combout\;

-- Location: IOOBUF_X89_Y4_N96
\outPc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(0),
	devoe => ww_devoe,
	o => ww_outPc(0));

-- Location: IOOBUF_X72_Y0_N36
\outPc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(1),
	devoe => ww_devoe,
	o => ww_outPc(1));

-- Location: IOOBUF_X64_Y0_N19
\outPc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(2),
	devoe => ww_devoe,
	o => ww_outPc(2));

-- Location: IOOBUF_X66_Y0_N59
\outPc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(3),
	devoe => ww_devoe,
	o => ww_outPc(3));

-- Location: IOOBUF_X72_Y0_N19
\outPc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(4),
	devoe => ww_devoe,
	o => ww_outPc(4));

-- Location: IOOBUF_X72_Y0_N2
\outPc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(5),
	devoe => ww_devoe,
	o => ww_outPc(5));

-- Location: IOOBUF_X72_Y0_N53
\outPc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(6),
	devoe => ww_devoe,
	o => ww_outPc(6));

-- Location: IOOBUF_X38_Y0_N2
\outPc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(7),
	devoe => ww_devoe,
	o => ww_outPc(7));

-- Location: IOOBUF_X70_Y0_N19
\outPc[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(8),
	devoe => ww_devoe,
	o => ww_outPc(8));

-- Location: IOOBUF_X89_Y6_N22
\outPc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(9),
	devoe => ww_devoe,
	o => ww_outPc(9));

-- Location: IOOBUF_X70_Y81_N53
\outPc[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(10),
	devoe => ww_devoe,
	o => ww_outPc(10));

-- Location: IOOBUF_X70_Y0_N53
\outPc[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(11),
	devoe => ww_devoe,
	o => ww_outPc(11));

-- Location: IOOBUF_X70_Y0_N36
\outPc[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(12),
	devoe => ww_devoe,
	o => ww_outPc(12));

-- Location: IOOBUF_X89_Y6_N5
\outPc[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(13),
	devoe => ww_devoe,
	o => ww_outPc(13));

-- Location: IOOBUF_X89_Y8_N5
\outPc[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(14),
	devoe => ww_devoe,
	o => ww_outPc(14));

-- Location: IOOBUF_X70_Y0_N2
\outPc[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(15),
	devoe => ww_devoe,
	o => ww_outPc(15));

-- Location: IOOBUF_X52_Y81_N36
\outRam[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => ww_outRam(0));

-- Location: IOOBUF_X54_Y0_N36
\outRam[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_outRam(1));

-- Location: IOOBUF_X52_Y81_N53
\outRam[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => ww_outRam(2));

-- Location: IOOBUF_X50_Y0_N76
\outRam[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_outRam(3));

-- Location: IOOBUF_X38_Y0_N53
\outRam[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => ww_outRam(4));

-- Location: IOOBUF_X40_Y0_N36
\outRam[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_outRam(5));

-- Location: IOOBUF_X38_Y0_N36
\outRam[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => ww_outRam(6));

-- Location: IOOBUF_X52_Y0_N19
\outRam[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_outRam(7));

-- Location: IOOBUF_X36_Y0_N19
\outRam[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => ww_outRam(8));

-- Location: IOOBUF_X52_Y0_N36
\outRam[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_outRam(9));

-- Location: IOOBUF_X52_Y0_N53
\outRam[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => ww_outRam(10));

-- Location: IOOBUF_X52_Y0_N2
\outRam[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_outRam(11));

-- Location: IOOBUF_X30_Y0_N2
\outRam[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => ww_outRam(12));

-- Location: IOOBUF_X52_Y81_N19
\outRam[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => ww_outRam(13));

-- Location: IOOBUF_X50_Y0_N42
\outRam[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => ww_outRam(14));

-- Location: IOOBUF_X40_Y0_N2
\outRam[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => ww_outRam(15));

-- Location: IOOBUF_X40_Y0_N53
\outRom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => ww_outRom(0));

-- Location: IOOBUF_X30_Y0_N53
\outRom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~8_combout\,
	devoe => ww_devoe,
	o => ww_outRom(1));

-- Location: IOOBUF_X86_Y81_N19
\outRom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(2));

-- Location: IOOBUF_X89_Y9_N22
\outRom[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(3));

-- Location: IOOBUF_X86_Y81_N53
\outRom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(4));

-- Location: IOOBUF_X76_Y81_N36
\outRom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(5));

-- Location: IOOBUF_X6_Y0_N19
\outRom[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(6));

-- Location: IOOBUF_X89_Y8_N22
\outRom[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(7));

-- Location: IOOBUF_X36_Y0_N2
\outRom[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => ww_outRom(8));

-- Location: IOOBUF_X70_Y81_N2
\outRom[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~4_combout\,
	devoe => ww_devoe,
	o => ww_outRom(9));

-- Location: IOOBUF_X4_Y0_N53
\outRom[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(10));

-- Location: IOOBUF_X56_Y81_N36
\outRom[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(11));

-- Location: IOOBUF_X88_Y81_N3
\outRom[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(12));

-- Location: IOOBUF_X62_Y81_N53
\outRom[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_outRom(13));

-- Location: IOOBUF_X66_Y0_N93
\outRom[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => ww_outRom(14));

-- Location: IOOBUF_X89_Y6_N56
\outRom[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~7_combout\,
	devoe => ww_devoe,
	o => ww_outRom(15));

-- Location: IOOBUF_X32_Y0_N53
\outUla[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(0));

-- Location: IOOBUF_X66_Y81_N93
\outUla[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(1));

-- Location: IOOBUF_X32_Y0_N36
\outUla[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(2));

-- Location: IOOBUF_X34_Y0_N42
\outUla[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux18~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(3));

-- Location: IOOBUF_X58_Y81_N59
\outUla[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(4));

-- Location: IOOBUF_X64_Y81_N19
\outUla[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(5));

-- Location: IOOBUF_X54_Y81_N36
\outUla[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(6));

-- Location: IOOBUF_X56_Y81_N19
\outUla[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(7));

-- Location: IOOBUF_X64_Y81_N36
\outUla[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(8));

-- Location: IOOBUF_X60_Y81_N36
\outUla[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(9));

-- Location: IOOBUF_X38_Y0_N19
\outUla[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(10));

-- Location: IOOBUF_X34_Y0_N59
\outUla[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(11));

-- Location: IOOBUF_X68_Y81_N19
\outUla[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(12));

-- Location: IOOBUF_X58_Y81_N76
\outUla[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(13));

-- Location: IOOBUF_X50_Y0_N93
\outUla[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(14));

-- Location: IOOBUF_X28_Y0_N36
\outUla[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(15));

-- Location: IOOBUF_X60_Y0_N53
\out_br_regA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~277_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(0));

-- Location: IOOBUF_X56_Y0_N19
\out_br_regA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~278_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(1));

-- Location: IOOBUF_X58_Y0_N93
\out_br_regA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~279_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(2));

-- Location: IOOBUF_X64_Y0_N36
\out_br_regA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~280_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(3));

-- Location: IOOBUF_X58_Y0_N42
\out_br_regA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~281_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(4));

-- Location: IOOBUF_X66_Y0_N42
\out_br_regA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~282_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(5));

-- Location: IOOBUF_X58_Y0_N59
\out_br_regA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~283_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(6));

-- Location: IOOBUF_X54_Y0_N53
\out_br_regA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~284_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(7));

-- Location: IOOBUF_X56_Y0_N2
\out_br_regA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~285_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(8));

-- Location: IOOBUF_X66_Y81_N42
\out_br_regA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~286_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(9));

-- Location: IOOBUF_X89_Y4_N62
\out_br_regA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~287_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(10));

-- Location: IOOBUF_X60_Y0_N2
\out_br_regA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~288_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(11));

-- Location: IOOBUF_X68_Y0_N36
\out_br_regA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~289_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(12));

-- Location: IOOBUF_X54_Y0_N19
\out_br_regA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~290_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(13));

-- Location: IOOBUF_X64_Y0_N2
\out_br_regA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~291_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(14));

-- Location: IOOBUF_X56_Y0_N53
\out_br_regA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~292_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(15));

-- Location: IOOBUF_X62_Y0_N2
\out_br_regB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~21_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(0));

-- Location: IOOBUF_X89_Y4_N79
\out_br_regB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~22_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(1));

-- Location: IOOBUF_X89_Y8_N39
\out_br_regB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~23_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(2));

-- Location: IOOBUF_X68_Y0_N53
\out_br_regB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~24_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(3));

-- Location: IOOBUF_X58_Y0_N76
\out_br_regB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~25_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(4));

-- Location: IOOBUF_X68_Y0_N2
\out_br_regB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~26_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(5));

-- Location: IOOBUF_X60_Y0_N19
\out_br_regB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~27_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(6));

-- Location: IOOBUF_X64_Y0_N53
\out_br_regB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~28_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(7));

-- Location: IOOBUF_X60_Y0_N36
\out_br_regB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~29_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(8));

-- Location: IOOBUF_X62_Y0_N53
\out_br_regB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~30_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(9));

-- Location: IOOBUF_X62_Y0_N19
\out_br_regB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~31_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(10));

-- Location: IOOBUF_X56_Y0_N36
\out_br_regB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~32_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(11));

-- Location: IOOBUF_X68_Y0_N19
\out_br_regB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~33_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(12));

-- Location: IOOBUF_X89_Y4_N45
\out_br_regB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~34_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(13));

-- Location: IOOBUF_X62_Y0_N36
\out_br_regB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~35_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(14));

-- Location: IOOBUF_X54_Y0_N2
\out_br_regB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~36_q\,
	devoe => ww_devoe,
	o => ww_out_br_regB(15));

-- Location: IOOBUF_X80_Y81_N53
\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_opcode(0));

-- Location: IOOBUF_X62_Y81_N19
\out_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(1));

-- Location: IOOBUF_X66_Y0_N76
\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(2));

-- Location: IOOBUF_X89_Y6_N39
\out_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~7_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(3));

-- Location: IOOBUF_X36_Y0_N53
\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => ww_out_rs(0));

-- Location: IOOBUF_X70_Y81_N36
\out_rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~4_combout\,
	devoe => ww_devoe,
	o => ww_out_rs(1));

-- Location: IOOBUF_X89_Y8_N56
\out_rs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rs(2));

-- Location: IOOBUF_X89_Y38_N5
\out_rs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rs(3));

-- Location: IOOBUF_X38_Y81_N36
\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rt(0));

-- Location: IOOBUF_X89_Y9_N56
\out_rt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rt(1));

-- Location: IOOBUF_X34_Y81_N42
\out_rt[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rt(2));

-- Location: IOOBUF_X89_Y38_N39
\out_rt[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rt(3));

-- Location: IOOBUF_X40_Y0_N19
\out_endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(0));

-- Location: IOOBUF_X30_Y0_N19
\out_endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~8_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(1));

-- Location: IOOBUF_X8_Y0_N53
\out_endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(2));

-- Location: IOOBUF_X8_Y0_N2
\out_endereco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(3));

-- Location: IOOBUF_X66_Y81_N76
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|overflow~combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOOBUF_X32_Y0_N2
\out_out_mult4_2X1_ram_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(0));

-- Location: IOOBUF_X66_Y81_N59
\out_out_mult4_2X1_ram_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(1));

-- Location: IOOBUF_X32_Y0_N19
\out_out_mult4_2X1_ram_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(2));

-- Location: IOOBUF_X34_Y0_N76
\out_out_mult4_2X1_ram_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux18~1_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(3));

-- Location: IOOBUF_X58_Y81_N42
\out_out_mult4_2X1_ram_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(4));

-- Location: IOOBUF_X64_Y81_N53
\out_out_mult4_2X1_ram_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(5));

-- Location: IOOBUF_X54_Y81_N53
\out_out_mult4_2X1_ram_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(6));

-- Location: IOOBUF_X56_Y81_N53
\out_out_mult4_2X1_ram_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(7));

-- Location: IOOBUF_X64_Y81_N2
\out_out_mult4_2X1_ram_ula[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(8));

-- Location: IOOBUF_X60_Y81_N19
\out_out_mult4_2X1_ram_ula[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(9));

-- Location: IOOBUF_X36_Y0_N36
\out_out_mult4_2X1_ram_ula[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(10));

-- Location: IOOBUF_X34_Y0_N93
\out_out_mult4_2X1_ram_ula[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(11));

-- Location: IOOBUF_X68_Y81_N36
\out_out_mult4_2X1_ram_ula[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(12));

-- Location: IOOBUF_X58_Y81_N93
\out_out_mult4_2X1_ram_ula[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(13));

-- Location: IOOBUF_X50_Y0_N59
\out_out_mult4_2X1_ram_ula[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(14));

-- Location: IOOBUF_X28_Y0_N53
\out_out_mult4_2X1_ram_ula[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(15));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: MLABCELL_X65_Y4_N0
\port_map_addr|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~1_sumout\ = SUM(( \port_map_pc|outPort\(0) ) + ( VCC ) + ( !VCC ))
-- \port_map_addr|Add0~2\ = CARRY(( \port_map_pc|outPort\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(0),
	cin => GND,
	sumout => \port_map_addr|Add0~1_sumout\,
	cout => \port_map_addr|Add0~2\);

-- Location: FF_X65_Y4_N2
\port_map_pc|outPort[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(0));

-- Location: MLABCELL_X65_Y4_N3
\port_map_addr|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~5_sumout\ = SUM(( \port_map_pc|outPort\(1) ) + ( GND ) + ( \port_map_addr|Add0~2\ ))
-- \port_map_addr|Add0~6\ = CARRY(( \port_map_pc|outPort\(1) ) + ( GND ) + ( \port_map_addr|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(1),
	cin => \port_map_addr|Add0~2\,
	sumout => \port_map_addr|Add0~5_sumout\,
	cout => \port_map_addr|Add0~6\);

-- Location: FF_X65_Y4_N5
\port_map_pc|outPort[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(1));

-- Location: MLABCELL_X65_Y4_N6
\port_map_addr|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~9_sumout\ = SUM(( \port_map_pc|outPort\(2) ) + ( GND ) + ( \port_map_addr|Add0~6\ ))
-- \port_map_addr|Add0~10\ = CARRY(( \port_map_pc|outPort\(2) ) + ( GND ) + ( \port_map_addr|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(2),
	cin => \port_map_addr|Add0~6\,
	sumout => \port_map_addr|Add0~9_sumout\,
	cout => \port_map_addr|Add0~10\);

-- Location: FF_X65_Y4_N8
\port_map_pc|outPort[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(2));

-- Location: MLABCELL_X65_Y4_N9
\port_map_addr|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~13_sumout\ = SUM(( \port_map_pc|outPort\(3) ) + ( GND ) + ( \port_map_addr|Add0~10\ ))
-- \port_map_addr|Add0~14\ = CARRY(( \port_map_pc|outPort\(3) ) + ( GND ) + ( \port_map_addr|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(3),
	cin => \port_map_addr|Add0~10\,
	sumout => \port_map_addr|Add0~13_sumout\,
	cout => \port_map_addr|Add0~14\);

-- Location: FF_X65_Y4_N11
\port_map_pc|outPort[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(3));

-- Location: MLABCELL_X65_Y4_N12
\port_map_addr|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~17_sumout\ = SUM(( \port_map_pc|outPort\(4) ) + ( GND ) + ( \port_map_addr|Add0~14\ ))
-- \port_map_addr|Add0~18\ = CARRY(( \port_map_pc|outPort\(4) ) + ( GND ) + ( \port_map_addr|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(4),
	cin => \port_map_addr|Add0~14\,
	sumout => \port_map_addr|Add0~17_sumout\,
	cout => \port_map_addr|Add0~18\);

-- Location: FF_X65_Y4_N14
\port_map_pc|outPort[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(4));

-- Location: MLABCELL_X65_Y4_N15
\port_map_addr|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~21_sumout\ = SUM(( \port_map_pc|outPort\(5) ) + ( GND ) + ( \port_map_addr|Add0~18\ ))
-- \port_map_addr|Add0~22\ = CARRY(( \port_map_pc|outPort\(5) ) + ( GND ) + ( \port_map_addr|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(5),
	cin => \port_map_addr|Add0~18\,
	sumout => \port_map_addr|Add0~21_sumout\,
	cout => \port_map_addr|Add0~22\);

-- Location: FF_X65_Y4_N17
\port_map_pc|outPort[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(5));

-- Location: MLABCELL_X65_Y4_N18
\port_map_addr|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~25_sumout\ = SUM(( \port_map_pc|outPort\(6) ) + ( GND ) + ( \port_map_addr|Add0~22\ ))
-- \port_map_addr|Add0~26\ = CARRY(( \port_map_pc|outPort\(6) ) + ( GND ) + ( \port_map_addr|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(6),
	cin => \port_map_addr|Add0~22\,
	sumout => \port_map_addr|Add0~25_sumout\,
	cout => \port_map_addr|Add0~26\);

-- Location: FF_X65_Y4_N20
\port_map_pc|outPort[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(6));

-- Location: MLABCELL_X65_Y4_N21
\port_map_addr|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~29_sumout\ = SUM(( \port_map_pc|outPort\(7) ) + ( GND ) + ( \port_map_addr|Add0~26\ ))
-- \port_map_addr|Add0~30\ = CARRY(( \port_map_pc|outPort\(7) ) + ( GND ) + ( \port_map_addr|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(7),
	cin => \port_map_addr|Add0~26\,
	sumout => \port_map_addr|Add0~29_sumout\,
	cout => \port_map_addr|Add0~30\);

-- Location: FF_X65_Y4_N23
\port_map_pc|outPort[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(7));

-- Location: MLABCELL_X65_Y4_N24
\port_map_addr|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~33_sumout\ = SUM(( \port_map_pc|outPort\(8) ) + ( GND ) + ( \port_map_addr|Add0~30\ ))
-- \port_map_addr|Add0~34\ = CARRY(( \port_map_pc|outPort\(8) ) + ( GND ) + ( \port_map_addr|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(8),
	cin => \port_map_addr|Add0~30\,
	sumout => \port_map_addr|Add0~33_sumout\,
	cout => \port_map_addr|Add0~34\);

-- Location: FF_X65_Y4_N26
\port_map_pc|outPort[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(8));

-- Location: MLABCELL_X65_Y4_N27
\port_map_addr|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~37_sumout\ = SUM(( \port_map_pc|outPort\(9) ) + ( GND ) + ( \port_map_addr|Add0~34\ ))
-- \port_map_addr|Add0~38\ = CARRY(( \port_map_pc|outPort\(9) ) + ( GND ) + ( \port_map_addr|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(9),
	cin => \port_map_addr|Add0~34\,
	sumout => \port_map_addr|Add0~37_sumout\,
	cout => \port_map_addr|Add0~38\);

-- Location: FF_X65_Y4_N29
\port_map_pc|outPort[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(9));

-- Location: MLABCELL_X65_Y4_N30
\port_map_addr|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~41_sumout\ = SUM(( \port_map_pc|outPort\(10) ) + ( GND ) + ( \port_map_addr|Add0~38\ ))
-- \port_map_addr|Add0~42\ = CARRY(( \port_map_pc|outPort\(10) ) + ( GND ) + ( \port_map_addr|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(10),
	cin => \port_map_addr|Add0~38\,
	sumout => \port_map_addr|Add0~41_sumout\,
	cout => \port_map_addr|Add0~42\);

-- Location: FF_X65_Y4_N32
\port_map_pc|outPort[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(10));

-- Location: MLABCELL_X65_Y4_N33
\port_map_addr|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~45_sumout\ = SUM(( \port_map_pc|outPort\(11) ) + ( GND ) + ( \port_map_addr|Add0~42\ ))
-- \port_map_addr|Add0~46\ = CARRY(( \port_map_pc|outPort\(11) ) + ( GND ) + ( \port_map_addr|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(11),
	cin => \port_map_addr|Add0~42\,
	sumout => \port_map_addr|Add0~45_sumout\,
	cout => \port_map_addr|Add0~46\);

-- Location: FF_X65_Y4_N35
\port_map_pc|outPort[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(11));

-- Location: MLABCELL_X65_Y4_N36
\port_map_addr|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~49_sumout\ = SUM(( \port_map_pc|outPort\(12) ) + ( GND ) + ( \port_map_addr|Add0~46\ ))
-- \port_map_addr|Add0~50\ = CARRY(( \port_map_pc|outPort\(12) ) + ( GND ) + ( \port_map_addr|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(12),
	cin => \port_map_addr|Add0~46\,
	sumout => \port_map_addr|Add0~49_sumout\,
	cout => \port_map_addr|Add0~50\);

-- Location: FF_X65_Y4_N38
\port_map_pc|outPort[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(12));

-- Location: MLABCELL_X65_Y4_N39
\port_map_addr|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~53_sumout\ = SUM(( \port_map_pc|outPort\(13) ) + ( GND ) + ( \port_map_addr|Add0~50\ ))
-- \port_map_addr|Add0~54\ = CARRY(( \port_map_pc|outPort\(13) ) + ( GND ) + ( \port_map_addr|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(13),
	cin => \port_map_addr|Add0~50\,
	sumout => \port_map_addr|Add0~53_sumout\,
	cout => \port_map_addr|Add0~54\);

-- Location: FF_X65_Y4_N41
\port_map_pc|outPort[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(13));

-- Location: MLABCELL_X65_Y4_N42
\port_map_addr|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~57_sumout\ = SUM(( \port_map_pc|outPort\(14) ) + ( GND ) + ( \port_map_addr|Add0~54\ ))
-- \port_map_addr|Add0~58\ = CARRY(( \port_map_pc|outPort\(14) ) + ( GND ) + ( \port_map_addr|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(14),
	cin => \port_map_addr|Add0~54\,
	sumout => \port_map_addr|Add0~57_sumout\,
	cout => \port_map_addr|Add0~58\);

-- Location: FF_X65_Y4_N44
\port_map_pc|outPort[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(14));

-- Location: MLABCELL_X65_Y4_N45
\port_map_addr|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~61_sumout\ = SUM(( \port_map_pc|outPort\(15) ) + ( GND ) + ( \port_map_addr|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(15),
	cin => \port_map_addr|Add0~58\,
	sumout => \port_map_addr|Add0~61_sumout\);

-- Location: FF_X65_Y4_N47
\port_map_pc|outPort[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_addr|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(15));

-- Location: MLABCELL_X65_Y4_N48
\port_map_rom|rom_memory~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~2_combout\ = ( !\port_map_pc|outPort\(4) & ( (!\port_map_pc|outPort\(5) & (!\port_map_pc|outPort\(6) & !\port_map_pc|outPort\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(5),
	datac => \port_map_pc|ALT_INV_outPort\(6),
	datad => \port_map_pc|ALT_INV_outPort\(7),
	dataf => \port_map_pc|ALT_INV_outPort\(4),
	combout => \port_map_rom|rom_memory~2_combout\);

-- Location: LABCELL_X67_Y4_N54
\port_map_unidade_de_controle|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_de_controle|Mux7~0_combout\ = ( \port_map_pc|outPort\(1) & ( \port_map_pc|outPort\(0) & ( (\port_map_rom|rom_memory~2_combout\ & (!\port_map_pc|outPort\(3) & \port_map_pc|outPort\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datae => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_unidade_de_controle|Mux7~0_combout\);

-- Location: LABCELL_X66_Y4_N51
\port_map_rom|rom_memory~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~5_combout\ = ( \port_map_pc|outPort\(2) & ( (\port_map_pc|outPort\(0) & (\port_map_rom|rom_memory~2_combout\ & !\port_map_pc|outPort\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	datac => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_pc|ALT_INV_outPort\(2),
	combout => \port_map_rom|rom_memory~5_combout\);

-- Location: LABCELL_X66_Y4_N27
\port_map_rom|rom_memory~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~6_combout\ = ( \port_map_pc|outPort\(1) & ( (!\port_map_pc|outPort\(3) & (\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	dataf => \port_map_pc|ALT_INV_outPort\(1),
	combout => \port_map_rom|rom_memory~6_combout\);

-- Location: MLABCELL_X65_Y4_N57
\port_map_rom|rom_memory~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~7_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (!\port_map_pc|outPort\(3) & !\port_map_pc|outPort\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~7_combout\);

-- Location: LABCELL_X60_Y4_N57
\port_map_ula|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux21~2_combout\ = (\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_rom|rom_memory~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000100110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_ula|Mux21~2_combout\);

-- Location: MLABCELL_X65_Y4_N54
\port_map_rom|rom_memory~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~3_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_pc|outPort\(0) & (!\port_map_pc|outPort\(3) & !\port_map_pc|outPort\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_pc|ALT_INV_outPort\(2),
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~3_combout\);

-- Location: MLABCELL_X65_Y4_N51
\port_map_rom|rom_memory~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~4_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(3) & !\port_map_pc|outPort\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_pc|ALT_INV_outPort\(2),
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~4_combout\);

-- Location: LABCELL_X60_Y4_N51
\port_map_banco_de_registradores|registradores~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~293_combout\ = ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & !\port_map_rom|rom_memory~4_combout\) ) ) ) # ( 
-- \port_map_rom|rom_memory~6_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & !\port_map_rom|rom_memory~4_combout\) ) ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- (!\port_map_rom|rom_memory~3_combout\ & !\port_map_rom|rom_memory~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_banco_de_registradores|registradores~293_combout\);

-- Location: FF_X63_Y4_N10
\port_map_banco_de_registradores|registradores~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux21~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~21_q\);

-- Location: LABCELL_X64_Y4_N18
\port_map_mult1_2x1_br_ula|Sout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_banco_de_registradores|registradores~21_q\ & ((\port_map_pc|outPort\(2)) # (\port_map_pc|outPort\(3)))) ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~21_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\);

-- Location: LABCELL_X62_Y4_N6
\port_map_ula|Add1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ula|Add1~66_cout\);

-- Location: LABCELL_X62_Y4_N9
\port_map_ula|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~1_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~277_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~21_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~66_cout\ ))
-- \port_map_ula|Add1~2\ = CARRY(( \port_map_banco_de_registradores|registradores~277_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~21_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	cin => \port_map_ula|Add1~66_cout\,
	sumout => \port_map_ula|Add1~1_sumout\,
	cout => \port_map_ula|Add1~2\);

-- Location: LABCELL_X63_Y4_N18
\port_map_ula|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux21~1_combout\ = ( \port_map_ula|Add1~1_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_banco_de_registradores|registradores~277_combout\ $ 
-- (!\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)))) # (\port_map_rom|rom_memory~5_combout\ & (((!\port_map_rom|rom_memory~6_combout\)) # (\port_map_banco_de_registradores|registradores~277_combout\))) ) ) # ( !\port_map_ula|Add1~1_sumout\ & ( 
-- (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_banco_de_registradores|registradores~277_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)))) # (\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_banco_de_registradores|registradores~277_combout\ & ((\port_map_rom|rom_memory~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000101011000000000010101101111000001010110111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~1_sumout\,
	combout => \port_map_ula|Mux21~1_combout\);

-- Location: LABCELL_X60_Y4_N6
\port_map_banco_de_registradores|registradores~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~296_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( \port_map_rom|rom_memory~5_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & !\port_map_rom|rom_memory~6_combout\) ) ) ) # ( 
-- \port_map_rom|rom_memory~4_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_banco_de_registradores|registradores~296_combout\);

-- Location: FF_X63_Y4_N19
\port_map_banco_de_registradores|registradores~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux21~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~69_q\);

-- Location: LABCELL_X61_Y4_N0
\port_map_banco_de_registradores|registradores~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~295_combout\ = ( !\port_map_rom|rom_memory~3_combout\ & ( (\port_map_rom|rom_memory~4_combout\ & ((!\port_map_rom|rom_memory~5_combout\) # (!\port_map_rom|rom_memory~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~295_combout\);

-- Location: FF_X64_Y4_N44
\port_map_banco_de_registradores|registradores~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux21~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~53_q\);

-- Location: LABCELL_X61_Y4_N6
\port_map_banco_de_registradores|registradores~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~294_combout\ = ( \port_map_rom|rom_memory~3_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & ((!\port_map_rom|rom_memory~5_combout\) # (!\port_map_rom|rom_memory~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~294_combout\);

-- Location: FF_X64_Y4_N26
\port_map_banco_de_registradores|registradores~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux21~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~37_q\);

-- Location: LABCELL_X64_Y4_N45
\port_map_banco_de_registradores|registradores~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~277_combout\ = ( \port_map_banco_de_registradores|registradores~21_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~53_q\))) # (\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~69_q\)) ) ) ) # ( !\port_map_banco_de_registradores|registradores~21_q\ & ( 
-- \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~53_q\))) # (\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~69_q\)) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~21_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # (\port_map_banco_de_registradores|registradores~37_q\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~21_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~37_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~69_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~53_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~277_combout\);

-- Location: LABCELL_X60_Y4_N30
\port_map_ula|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux21~0_combout\ = ( \port_map_ula|Add1~1_sumout\ & ( \port_map_banco_de_registradores|registradores~21_q\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_banco_de_registradores|registradores~277_combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\))) # (\port_map_banco_de_registradores|registradores~277_combout\ & (\port_map_rom|rom_memory~5_combout\)))) ) ) ) # ( !\port_map_ula|Add1~1_sumout\ & ( \port_map_banco_de_registradores|registradores~21_q\ & ( 
-- (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & !\port_map_banco_de_registradores|registradores~277_combout\)) # (\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_rom|rom_memory~6_combout\ & \port_map_banco_de_registradores|registradores~277_combout\)))) ) ) ) # ( \port_map_ula|Add1~1_sumout\ & ( !\port_map_banco_de_registradores|registradores~21_q\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & \port_map_banco_de_registradores|registradores~277_combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # 
-- (\port_map_banco_de_registradores|registradores~277_combout\))))) ) ) ) # ( !\port_map_ula|Add1~1_sumout\ & ( !\port_map_banco_de_registradores|registradores~21_q\ & ( (\port_map_banco_de_registradores|registradores~277_combout\ & 
-- (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~5_combout\ $ (\port_map_rom|rom_memory~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000010011010000000010000001000000001100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datae => \port_map_ula|ALT_INV_Add1~1_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	combout => \port_map_ula|Mux21~0_combout\);

-- Location: LABCELL_X57_Y4_N57
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X62_Y4_N12
\port_map_ula|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~5_sumout\ = SUM(( (!\port_map_banco_de_registradores|registradores~22_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_banco_de_registradores|registradores~278_combout\ ) + ( \port_map_ula|Add1~2\ ))
-- \port_map_ula|Add1~6\ = CARRY(( (!\port_map_banco_de_registradores|registradores~22_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_banco_de_registradores|registradores~278_combout\ ) + ( \port_map_ula|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	cin => \port_map_ula|Add1~2\,
	sumout => \port_map_ula|Add1~5_sumout\,
	cout => \port_map_ula|Add1~6\);

-- Location: LABCELL_X64_Y4_N9
\port_map_mult1_2x1_br_ula|Sout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_banco_de_registradores|registradores~22_q\ & ((\port_map_pc|outPort\(3)) # (\port_map_pc|outPort\(2)))) ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~22_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\);

-- Location: LABCELL_X61_Y4_N21
\port_map_ula|soma|b1|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b1|S~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\) # (!\port_map_banco_de_registradores|registradores~277_combout\) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & \port_map_banco_de_registradores|registradores~277_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	combout => \port_map_ula|soma|b1|S~0_combout\);

-- Location: LABCELL_X61_Y4_N36
\port_map_ula|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux20~1_combout\ = ( \port_map_banco_de_registradores|registradores~278_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_ula|soma|b1|S~0_combout\)))) # 
-- (\port_map_rom|rom_memory~5_combout\ & (((\port_map_ula|Add1~5_sumout\)) # (\port_map_rom|rom_memory~6_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~278_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|soma|b1|S~0_combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|Add1~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110010011101000101011001110100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_ula|ALT_INV_Add1~5_sumout\,
	datad => \port_map_ula|soma|b1|ALT_INV_S~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	combout => \port_map_ula|Mux20~1_combout\);

-- Location: FF_X64_Y4_N11
\port_map_banco_de_registradores|registradores~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux20~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~22_q\);

-- Location: FF_X64_Y4_N49
\port_map_banco_de_registradores|registradores~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux20~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~54_q\);

-- Location: FF_X64_Y4_N2
\port_map_banco_de_registradores|registradores~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux20~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~38_q\);

-- Location: FF_X63_Y4_N23
\port_map_banco_de_registradores|registradores~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux20~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~70_q\);

-- Location: LABCELL_X64_Y4_N51
\port_map_banco_de_registradores|registradores~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~278_combout\ = ( \port_map_banco_de_registradores|registradores~70_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~54_q\) # (\port_map_rom|rom_memory~3_combout\) 
-- ) ) ) # ( !\port_map_banco_de_registradores|registradores~70_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~54_q\) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~70_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~22_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~38_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~70_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~22_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~38_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~54_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~70_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~278_combout\);

-- Location: LABCELL_X57_Y4_N24
\port_map_ula|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux20~0_combout\ = ( \port_map_ula|soma|b1|S~0_combout\ & ( \port_map_ula|Add1~5_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_banco_de_registradores|registradores~278_combout\ & ((!\port_map_rom|rom_memory~6_combout\))) # 
-- (\port_map_banco_de_registradores|registradores~278_combout\ & (\port_map_rom|rom_memory~5_combout\)))) ) ) ) # ( !\port_map_ula|soma|b1|S~0_combout\ & ( \port_map_ula|Add1~5_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~278_combout\ & (\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~6_combout\)) # (\port_map_banco_de_registradores|registradores~278_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # 
-- (\port_map_rom|rom_memory~5_combout\))))) ) ) ) # ( \port_map_ula|soma|b1|S~0_combout\ & ( !\port_map_ula|Add1~5_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_banco_de_registradores|registradores~278_combout\ & 
-- (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~6_combout\)) # (\port_map_banco_de_registradores|registradores~278_combout\ & (\port_map_rom|rom_memory~5_combout\ & \port_map_rom|rom_memory~6_combout\)))) ) ) ) # ( 
-- !\port_map_ula|soma|b1|S~0_combout\ & ( !\port_map_ula|Add1~5_sumout\ & ( (\port_map_banco_de_registradores|registradores~278_combout\ & (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~5_combout\ $ 
-- (\port_map_rom|rom_memory~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000100000000001000001110000000100001011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_ula|soma|b1|ALT_INV_S~0_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~5_sumout\,
	combout => \port_map_ula|Mux20~0_combout\);

-- Location: FF_X64_Y4_N38
\port_map_banco_de_registradores|registradores~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux19~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~55_q\);

-- Location: FF_X64_Y4_N17
\port_map_banco_de_registradores|registradores~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux19~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~39_q\);

-- Location: FF_X63_Y4_N44
\port_map_banco_de_registradores|registradores~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux19~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~71_q\);

-- Location: LABCELL_X64_Y4_N39
\port_map_banco_de_registradores|registradores~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~279_combout\ = ( \port_map_banco_de_registradores|registradores~23_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~55_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~71_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~23_q\ & ( 
-- \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~55_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~71_q\))) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~23_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # (\port_map_banco_de_registradores|registradores~39_q\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~23_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~39_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~55_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~71_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~279_combout\);

-- Location: LABCELL_X62_Y4_N15
\port_map_ula|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~9_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~279_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~23_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~6\ ))
-- \port_map_ula|Add1~10\ = CARRY(( \port_map_banco_de_registradores|registradores~279_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~23_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	cin => \port_map_ula|Add1~6\,
	sumout => \port_map_ula|Add1~9_sumout\,
	cout => \port_map_ula|Add1~10\);

-- Location: LABCELL_X63_Y4_N42
\port_map_ula|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux19~1_combout\ = ( \port_map_banco_de_registradores|registradores~279_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|soma|b2|S~combout\))) # 
-- (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|Add1~9_sumout\)))) # (\port_map_rom|rom_memory~6_combout\ & (\port_map_rom|rom_memory~5_combout\)) ) ) # ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( 
-- (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|soma|b2|S~combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000010011100110110001001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|ALT_INV_Add1~9_sumout\,
	datad => \port_map_ula|soma|b2|ALT_INV_S~combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	combout => \port_map_ula|Mux19~1_combout\);

-- Location: FF_X64_Y4_N8
\port_map_banco_de_registradores|registradores~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux19~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~23_q\);

-- Location: LABCELL_X64_Y4_N6
\port_map_mult1_2x1_br_ula|Sout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_banco_de_registradores|registradores~23_q\ & ((\port_map_pc|outPort\(2)) # (\port_map_pc|outPort\(3)))) ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~23_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\);

-- Location: LABCELL_X64_Y4_N27
\port_map_ula|soma|b2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b2|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( \port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ 
-- ((((\port_map_banco_de_registradores|registradores~277_combout\ & \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)) # (\port_map_banco_de_registradores|registradores~278_combout\))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ (((\port_map_banco_de_registradores|registradores~278_combout\ & (\port_map_banco_de_registradores|registradores~277_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)))) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ 
-- (((!\port_map_banco_de_registradores|registradores~278_combout\ & ((!\port_map_banco_de_registradores|registradores~277_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\))))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ (((!\port_map_banco_de_registradores|registradores~278_combout\) # ((!\port_map_banco_de_registradores|registradores~277_combout\) # 
-- (!\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110010110100111100011110000111000011010010110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	combout => \port_map_ula|soma|b2|S~combout\);

-- Location: LABCELL_X57_Y4_N9
\port_map_ula|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux19~0_combout\ = ( \port_map_banco_de_registradores|registradores~279_combout\ & ( \port_map_ula|Add1~9_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (((!\port_map_rom|rom_memory~6_combout\ & \port_map_ula|soma|b2|S~combout\)) # 
-- (\port_map_rom|rom_memory~5_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( \port_map_ula|Add1~9_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~6_combout\ & 
-- ((\port_map_ula|soma|b2|S~combout\) # (\port_map_rom|rom_memory~5_combout\)))) ) ) ) # ( \port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_ula|Add1~9_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & \port_map_ula|soma|b2|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_rom|rom_memory~6_combout\)))) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_ula|Add1~9_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & \port_map_ula|soma|b2|S~combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000101000001000100000101000000010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_ula|soma|b2|ALT_INV_S~combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~9_sumout\,
	combout => \port_map_ula|Mux19~0_combout\);

-- Location: LABCELL_X64_Y4_N30
\port_map_ula|soma|b2|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b2|Cout~0_combout\ = ( \port_map_banco_de_registradores|registradores~277_combout\ & ( \port_map_banco_de_registradores|registradores~278_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & 
-- (\port_map_banco_de_registradores|registradores~279_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & 
-- (((\port_map_banco_de_registradores|registradores~279_combout\) # (\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~277_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~278_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & \port_map_banco_de_registradores|registradores~279_combout\)) # 
-- (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ((\port_map_banco_de_registradores|registradores~279_combout\) # (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))) ) ) ) # ( \port_map_banco_de_registradores|registradores~277_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~278_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & 
-- \port_map_banco_de_registradores|registradores~279_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~279_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~277_combout\ & ( !\port_map_banco_de_registradores|registradores~278_combout\ & ( (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & 
-- \port_map_banco_de_registradores|registradores~279_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000010011011100010001011101110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	combout => \port_map_ula|soma|b2|Cout~0_combout\);

-- Location: FF_X67_Y4_N1
\port_map_banco_de_registradores|registradores~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux18~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~40_q\);

-- Location: FF_X67_Y4_N34
\port_map_banco_de_registradores|registradores~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux18~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~72_q\);

-- Location: FF_X66_Y4_N5
\port_map_banco_de_registradores|registradores~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux18~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~56_q\);

-- Location: LABCELL_X64_Y4_N12
\port_map_banco_de_registradores|registradores~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~280_combout\ = ( \port_map_banco_de_registradores|registradores~24_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~56_q\))) # (\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~72_q\)) ) ) ) # ( !\port_map_banco_de_registradores|registradores~24_q\ & ( 
-- \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~56_q\))) # (\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~72_q\)) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~24_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # (\port_map_banco_de_registradores|registradores~40_q\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~24_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~40_q\ & \port_map_rom|rom_memory~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~72_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~56_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~280_combout\);

-- Location: LABCELL_X62_Y4_N18
\port_map_ula|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~13_sumout\ = SUM(( (!\port_map_banco_de_registradores|registradores~24_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_banco_de_registradores|registradores~280_combout\ ) + ( \port_map_ula|Add1~10\ ))
-- \port_map_ula|Add1~14\ = CARRY(( (!\port_map_banco_de_registradores|registradores~24_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_banco_de_registradores|registradores~280_combout\ ) + ( \port_map_ula|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	cin => \port_map_ula|Add1~10\,
	sumout => \port_map_ula|Add1~13_sumout\,
	cout => \port_map_ula|Add1~14\);

-- Location: LABCELL_X67_Y4_N39
\port_map_ula|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~2_combout\ = ( \port_map_ula|Add1~13_sumout\ & ( \port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~280_combout\) ) ) ) # ( !\port_map_ula|Add1~13_sumout\ & 
-- ( \port_map_rom|rom_memory~5_combout\ & ( (\port_map_banco_de_registradores|registradores~280_combout\ & \port_map_rom|rom_memory~6_combout\) ) ) ) # ( \port_map_ula|Add1~13_sumout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ $ (\port_map_banco_de_registradores|registradores~280_combout\)))) ) ) ) # ( !\port_map_ula|Add1~13_sumout\ & ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ $ (\port_map_banco_de_registradores|registradores~280_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000000011010010000000000000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_ula|ALT_INV_Add1~13_sumout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux18~2_combout\);

-- Location: FF_X66_Y4_N50
\port_map_banco_de_registradores|registradores~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux18~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~24_q\);

-- Location: LABCELL_X66_Y4_N24
\port_map_mult1_2x1_br_ula|Sout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_banco_de_registradores|registradores~24_q\ & ((\port_map_pc|outPort\(2)) # (\port_map_pc|outPort\(3)))) ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~24_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(3),
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\);

-- Location: LABCELL_X60_Y4_N27
\port_map_ula|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~0_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_banco_de_registradores|registradores~280_combout\ ) ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|soma|b2|Cout~0_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ $ (\port_map_banco_de_registradores|registradores~280_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux18~0_combout\);

-- Location: LABCELL_X61_Y4_N18
\port_map_ula|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~1_combout\ = ( \port_map_ula|Add1~13_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (((\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~6_combout\)) # (\port_map_ula|Mux18~0_combout\))) # 
-- (\port_map_rom|rom_memory~7_combout\ & (\port_map_ula|Mux18~0_combout\ & (!\port_map_rom|rom_memory~5_combout\ & \port_map_rom|rom_memory~6_combout\))) ) ) # ( !\port_map_ula|Add1~13_sumout\ & ( (\port_map_ula|Mux18~0_combout\ & 
-- ((!\port_map_rom|rom_memory~7_combout\) # ((!\port_map_rom|rom_memory~5_combout\ & \port_map_rom|rom_memory~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110010001000100011001000101010001100100010101000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datab => \port_map_ula|ALT_INV_Mux18~0_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~13_sumout\,
	combout => \port_map_ula|Mux18~1_combout\);

-- Location: LABCELL_X60_Y4_N45
\port_map_mult1_2x1_br_ula|Sout[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ = ( \port_map_pc|outPort\(3) & ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) ) # ( !\port_map_pc|outPort\(3) & ( \port_map_rom|rom_memory~2_combout\ & ( 
-- (\port_map_banco_de_registradores|registradores~25_q\ & \port_map_pc|outPort\(2)) ) ) ) # ( \port_map_pc|outPort\(3) & ( !\port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) ) # ( !\port_map_pc|outPort\(3) & ( 
-- !\port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datae => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\);

-- Location: LABCELL_X64_Y4_N57
\port_map_ula|soma|b4|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b4|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( !\port_map_banco_de_registradores|registradores~281_combout\ $ (((!\port_map_banco_de_registradores|registradores~280_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ 
-- & \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\)) # (\port_map_banco_de_registradores|registradores~280_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\))))) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( !\port_map_banco_de_registradores|registradores~281_combout\ $ (((!\port_map_banco_de_registradores|registradores~280_combout\ & ((!\port_map_ula|soma|b2|Cout~0_combout\) # 
-- (!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\))) # (\port_map_banco_de_registradores|registradores~280_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ & !\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datab => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	combout => \port_map_ula|soma|b4|S~combout\);

-- Location: LABCELL_X62_Y4_N21
\port_map_ula|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~17_sumout\ = SUM(( (!\port_map_banco_de_registradores|registradores~25_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_banco_de_registradores|registradores~281_combout\ ) + ( \port_map_ula|Add1~14\ ))
-- \port_map_ula|Add1~18\ = CARRY(( (!\port_map_banco_de_registradores|registradores~25_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_banco_de_registradores|registradores~281_combout\ ) + ( \port_map_ula|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	cin => \port_map_ula|Add1~14\,
	sumout => \port_map_ula|Add1~17_sumout\,
	cout => \port_map_ula|Add1~18\);

-- Location: LABCELL_X61_Y4_N39
\port_map_ula|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux17~1_combout\ = ( \port_map_banco_de_registradores|registradores~281_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (\port_map_ula|soma|b4|S~combout\))) # (\port_map_rom|rom_memory~5_combout\ 
-- & (((\port_map_ula|Add1~17_sumout\)) # (\port_map_rom|rom_memory~6_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~281_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_ula|soma|b4|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|Add1~17_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_ula|soma|b4|ALT_INV_S~combout\,
	datad => \port_map_ula|ALT_INV_Add1~17_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	combout => \port_map_ula|Mux17~1_combout\);

-- Location: FF_X60_Y4_N11
\port_map_banco_de_registradores|registradores~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux17~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~25_q\);

-- Location: FF_X61_Y4_N32
\port_map_banco_de_registradores|registradores~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux17~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~57_q\);

-- Location: FF_X61_Y4_N59
\port_map_banco_de_registradores|registradores~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux17~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~41_q\);

-- Location: FF_X61_Y4_N53
\port_map_banco_de_registradores|registradores~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux17~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~73_q\);

-- Location: LABCELL_X61_Y4_N33
\port_map_banco_de_registradores|registradores~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~281_combout\ = ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~73_q\ ) ) ) # ( !\port_map_rom|rom_memory~3_combout\ & ( 
-- \port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~57_q\ ) ) ) # ( \port_map_rom|rom_memory~3_combout\ & ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~41_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~3_combout\ & ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~57_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~73_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~281_combout\);

-- Location: LABCELL_X57_Y4_N51
\port_map_ula|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux17~0_combout\ = ( !\port_map_rom|rom_memory~7_combout\ & ( \port_map_ula|Add1~17_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (((!\port_map_rom|rom_memory~6_combout\ & \port_map_ula|soma|b4|S~combout\)))) # 
-- (\port_map_rom|rom_memory~5_combout\ & (((!\port_map_rom|rom_memory~6_combout\)) # (\port_map_banco_de_registradores|registradores~281_combout\))) ) ) ) # ( !\port_map_rom|rom_memory~7_combout\ & ( !\port_map_ula|Add1~17_sumout\ & ( 
-- (!\port_map_rom|rom_memory~5_combout\ & (((!\port_map_rom|rom_memory~6_combout\ & \port_map_ula|soma|b4|S~combout\)))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~281_combout\ & 
-- (\port_map_rom|rom_memory~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000000000000000000110001111100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_ula|soma|b4|ALT_INV_S~combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~17_sumout\,
	combout => \port_map_ula|Mux17~0_combout\);

-- Location: FF_X66_Y4_N11
\port_map_banco_de_registradores|registradores~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux16~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~26_q\);

-- Location: LABCELL_X66_Y4_N9
\port_map_mult1_2x1_br_ula|Sout[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_banco_de_registradores|registradores~26_q\ & ((\port_map_pc|outPort\(2)) # (\port_map_pc|outPort\(3)))) ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~26_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\);

-- Location: LABCELL_X66_Y4_N48
\port_map_ula|soma|b5|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b5|S~0_combout\ = ( \port_map_banco_de_registradores|registradores~282_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ ) ) # ( !\port_map_banco_de_registradores|registradores~282_combout\ & ( 
-- \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	combout => \port_map_ula|soma|b5|S~0_combout\);

-- Location: LABCELL_X66_Y4_N21
\port_map_ula|soma|b5|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b5|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( \port_map_ula|soma|b5|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~281_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & 
-- ((!\port_map_ula|soma|b2|Cout~0_combout\) # (!\port_map_banco_de_registradores|registradores~280_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ & 
-- !\port_map_banco_de_registradores|registradores~280_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( \port_map_ula|soma|b5|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~281_combout\) # 
-- ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & ((!\port_map_ula|soma|b2|Cout~0_combout\) # (!\port_map_banco_de_registradores|registradores~280_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ & 
-- !\port_map_banco_de_registradores|registradores~280_combout\))) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( !\port_map_ula|soma|b5|S~0_combout\ & ( ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ & 
-- \port_map_banco_de_registradores|registradores~280_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & ((\port_map_banco_de_registradores|registradores~280_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~281_combout\) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( !\port_map_ula|soma|b5|S~0_combout\ & ( (\port_map_banco_de_registradores|registradores~281_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ & \port_map_banco_de_registradores|registradores~280_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~280_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000111110111111111111110111110001110000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\,
	datab => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	dataf => \port_map_ula|soma|b5|ALT_INV_S~0_combout\,
	combout => \port_map_ula|soma|b5|S~combout\);

-- Location: LABCELL_X62_Y4_N24
\port_map_ula|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~21_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~282_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~26_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~18\ ))
-- \port_map_ula|Add1~22\ = CARRY(( \port_map_banco_de_registradores|registradores~282_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~26_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	cin => \port_map_ula|Add1~18\,
	sumout => \port_map_ula|Add1~21_sumout\,
	cout => \port_map_ula|Add1~22\);

-- Location: LABCELL_X66_Y4_N42
\port_map_ula|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux16~1_combout\ = ( \port_map_banco_de_registradores|registradores~282_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b5|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ 
-- & ((\port_map_ula|Add1~21_sumout\))))) # (\port_map_rom|rom_memory~6_combout\ & (\port_map_rom|rom_memory~5_combout\)) ) ) # ( !\port_map_banco_de_registradores|registradores~282_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b5|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|Add1~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000011001001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|soma|b5|ALT_INV_S~combout\,
	datad => \port_map_ula|ALT_INV_Add1~21_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	combout => \port_map_ula|Mux16~1_combout\);

-- Location: FF_X66_Y4_N16
\port_map_banco_de_registradores|registradores~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux16~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~58_q\);

-- Location: LABCELL_X67_Y4_N15
\port_map_banco_de_registradores|registradores~42feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~42feeder_combout\ = \port_map_ula|Mux16~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux16~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~42feeder_combout\);

-- Location: FF_X67_Y4_N16
\port_map_banco_de_registradores|registradores~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~42feeder_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~42_q\);

-- Location: FF_X66_Y4_N56
\port_map_banco_de_registradores|registradores~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux16~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~74_q\);

-- Location: LABCELL_X66_Y4_N0
\port_map_banco_de_registradores|registradores~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~282_combout\ = ( \port_map_banco_de_registradores|registradores~74_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\) # (\port_map_banco_de_registradores|registradores~58_q\) 
-- ) ) ) # ( !\port_map_banco_de_registradores|registradores~74_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~58_q\ & !\port_map_rom|rom_memory~3_combout\) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~74_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~26_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~42_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~74_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~26_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~42_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~58_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~74_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~282_combout\);

-- Location: MLABCELL_X59_Y4_N12
\port_map_ula|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux16~0_combout\ = ( \port_map_ula|Add1~21_sumout\ & ( \port_map_ula|soma|b5|S~combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # ((\port_map_rom|rom_memory~5_combout\ & 
-- \port_map_banco_de_registradores|registradores~282_combout\)))) ) ) ) # ( !\port_map_ula|Add1~21_sumout\ & ( \port_map_ula|soma|b5|S~combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & 
-- (!\port_map_rom|rom_memory~6_combout\)) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_rom|rom_memory~6_combout\ & \port_map_banco_de_registradores|registradores~282_combout\)))) ) ) ) # ( \port_map_ula|Add1~21_sumout\ & ( 
-- !\port_map_ula|soma|b5|S~combout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~282_combout\)))) ) ) ) # ( 
-- !\port_map_ula|Add1~21_sumout\ & ( !\port_map_ula|soma|b5|S~combout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & (\port_map_rom|rom_memory~6_combout\ & \port_map_banco_de_registradores|registradores~282_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100010000000100010010000000100001001100000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datae => \port_map_ula|ALT_INV_Add1~21_sumout\,
	dataf => \port_map_ula|soma|b5|ALT_INV_S~combout\,
	combout => \port_map_ula|Mux16~0_combout\);

-- Location: LABCELL_X64_Y4_N54
\port_map_ula|soma|b4|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b4|Cout~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( ((!\port_map_banco_de_registradores|registradores~280_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~280_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\)))) # (\port_map_banco_de_registradores|registradores~281_combout\) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( (\port_map_banco_de_registradores|registradores~281_combout\ & ((!\port_map_banco_de_registradores|registradores~280_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[3]~3_combout\)) # (\port_map_banco_de_registradores|registradores~280_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datab => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	combout => \port_map_ula|soma|b4|Cout~0_combout\);

-- Location: FF_X63_Y4_N14
\port_map_banco_de_registradores|registradores~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux15~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~27_q\);

-- Location: LABCELL_X60_Y4_N0
\port_map_mult1_2x1_br_ula|Sout[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ = ( !\port_map_rom|rom_memory~7_combout\ & ( \port_map_banco_de_registradores|registradores~27_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N15
\port_map_ula|soma|b6|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b6|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( \port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & (\port_map_ula|soma|b4|Cout~0_combout\ & 
-- \port_map_banco_de_registradores|registradores~282_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & ((\port_map_banco_de_registradores|registradores~282_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\))) ) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( \port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & ((!\port_map_ula|soma|b4|Cout~0_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~282_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & (!\port_map_ula|soma|b4|Cout~0_combout\ & !\port_map_banco_de_registradores|registradores~282_combout\)) ) ) ) # ( 
-- \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( !\port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & ((!\port_map_ula|soma|b4|Cout~0_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~282_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & (!\port_map_ula|soma|b4|Cout~0_combout\ & !\port_map_banco_de_registradores|registradores~282_combout\)) ) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( !\port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & (\port_map_ula|soma|b4|Cout~0_combout\ & 
-- \port_map_banco_de_registradores|registradores~282_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & ((\port_map_banco_de_registradores|registradores~282_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111111110101010000011111010101000000000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\,
	datac => \port_map_ula|soma|b4|ALT_INV_Cout~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	combout => \port_map_ula|soma|b6|S~combout\);

-- Location: LABCELL_X62_Y4_N27
\port_map_ula|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~25_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~283_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~27_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~22\ ))
-- \port_map_ula|Add1~26\ = CARRY(( \port_map_banco_de_registradores|registradores~283_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~27_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	cin => \port_map_ula|Add1~22\,
	sumout => \port_map_ula|Add1~25_sumout\,
	cout => \port_map_ula|Add1~26\);

-- Location: LABCELL_X63_Y4_N45
\port_map_ula|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux15~1_combout\ = ( \port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b6|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ 
-- & ((\port_map_ula|Add1~25_sumout\))))) # (\port_map_rom|rom_memory~6_combout\ & (\port_map_rom|rom_memory~5_combout\)) ) ) # ( !\port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b6|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|Add1~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000011001001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|soma|b6|ALT_INV_S~combout\,
	datad => \port_map_ula|ALT_INV_Add1~25_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	combout => \port_map_ula|Mux15~1_combout\);

-- Location: FF_X63_Y4_N47
\port_map_banco_de_registradores|registradores~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux15~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~75_q\);

-- Location: FF_X64_Y4_N29
\port_map_banco_de_registradores|registradores~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux15~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~43_q\);

-- Location: FF_X63_Y4_N2
\port_map_banco_de_registradores|registradores~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux15~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~59_q\);

-- Location: LABCELL_X63_Y4_N3
\port_map_banco_de_registradores|registradores~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~283_combout\ = ( \port_map_banco_de_registradores|registradores~59_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~75_q\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~59_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~75_q\) 
-- ) ) ) # ( \port_map_banco_de_registradores|registradores~59_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~27_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~43_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~59_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~27_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~43_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~75_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~43_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~59_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~283_combout\);

-- Location: MLABCELL_X59_Y4_N39
\port_map_ula|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux15~0_combout\ = ( \port_map_ula|soma|b6|S~combout\ & ( \port_map_ula|Add1~25_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # ((\port_map_rom|rom_memory~5_combout\ & 
-- \port_map_banco_de_registradores|registradores~283_combout\)))) ) ) ) # ( !\port_map_ula|soma|b6|S~combout\ & ( \port_map_ula|Add1~25_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~283_combout\)))) ) ) ) # ( \port_map_ula|soma|b6|S~combout\ & ( !\port_map_ula|Add1~25_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~6_combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~283_combout\ & \port_map_rom|rom_memory~6_combout\)))) ) ) ) # ( 
-- !\port_map_ula|soma|b6|S~combout\ & ( !\port_map_ula|Add1~25_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~283_combout\ & (!\port_map_rom|rom_memory~7_combout\ & \port_map_rom|rom_memory~6_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000101000000001000001010000000100001111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_ula|soma|b6|ALT_INV_S~combout\,
	dataf => \port_map_ula|ALT_INV_Add1~25_sumout\,
	combout => \port_map_ula|Mux15~0_combout\);

-- Location: FF_X63_Y4_N50
\port_map_banco_de_registradores|registradores~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux14~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~28_q\);

-- Location: LABCELL_X62_Y4_N3
\port_map_ula|soma|b7|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b7|S~0_combout\ = ( \port_map_banco_de_registradores|registradores~28_q\ & ( !\port_map_banco_de_registradores|registradores~284_combout\ $ (\port_map_rom|rom_memory~7_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~28_q\ & ( \port_map_banco_de_registradores|registradores~284_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	combout => \port_map_ula|soma|b7|S~0_combout\);

-- Location: LABCELL_X63_Y4_N33
\port_map_ula|soma|b7|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b7|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( \port_map_ula|soma|b7|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\ & ((!\port_map_banco_de_registradores|registradores~282_combout\ & 
-- ((!\port_map_ula|soma|b4|Cout~0_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\))) # (\port_map_banco_de_registradores|registradores~282_combout\ & (!\port_map_ula|soma|b4|Cout~0_combout\ & !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\)))) ) 
-- ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( \port_map_ula|soma|b7|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\) # ((!\port_map_banco_de_registradores|registradores~282_combout\ & 
-- ((!\port_map_ula|soma|b4|Cout~0_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\))) # (\port_map_banco_de_registradores|registradores~282_combout\ & (!\port_map_ula|soma|b4|Cout~0_combout\ & !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\))) ) ) 
-- ) # ( \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( !\port_map_ula|soma|b7|S~0_combout\ & ( ((!\port_map_banco_de_registradores|registradores~282_combout\ & (\port_map_ula|soma|b4|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~282_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\)))) # (\port_map_banco_de_registradores|registradores~283_combout\) ) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( !\port_map_ula|soma|b7|S~0_combout\ & ( (\port_map_banco_de_registradores|registradores~283_combout\ & ((!\port_map_banco_de_registradores|registradores~282_combout\ & 
-- (\port_map_ula|soma|b4|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\)) # (\port_map_banco_de_registradores|registradores~282_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000111110111111111111110111110001110000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datab => \port_map_ula|soma|b4|ALT_INV_Cout~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\,
	dataf => \port_map_ula|soma|b7|ALT_INV_S~0_combout\,
	combout => \port_map_ula|soma|b7|S~combout\);

-- Location: LABCELL_X62_Y4_N30
\port_map_ula|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~29_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~284_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~28_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~26\ ))
-- \port_map_ula|Add1~30\ = CARRY(( \port_map_banco_de_registradores|registradores~284_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~28_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	cin => \port_map_ula|Add1~26\,
	sumout => \port_map_ula|Add1~29_sumout\,
	cout => \port_map_ula|Add1~30\);

-- Location: LABCELL_X63_Y4_N36
\port_map_ula|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~1_combout\ = ( \port_map_ula|Add1~29_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & ((\port_map_ula|soma|b7|S~combout\)))) # (\port_map_rom|rom_memory~5_combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\) # ((\port_map_banco_de_registradores|registradores~284_combout\)))) ) ) # ( !\port_map_ula|Add1~29_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & 
-- ((\port_map_ula|soma|b7|S~combout\)))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_rom|rom_memory~6_combout\ & (\port_map_banco_de_registradores|registradores~284_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100101000101110011010100010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	datad => \port_map_ula|soma|b7|ALT_INV_S~combout\,
	dataf => \port_map_ula|ALT_INV_Add1~29_sumout\,
	combout => \port_map_ula|Mux14~1_combout\);

-- Location: FF_X63_Y4_N38
\port_map_banco_de_registradores|registradores~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux14~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~76_q\);

-- Location: FF_X61_Y4_N43
\port_map_banco_de_registradores|registradores~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux14~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~44_q\);

-- Location: FF_X63_Y4_N26
\port_map_banco_de_registradores|registradores~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux14~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~60_q\);

-- Location: LABCELL_X63_Y4_N24
\port_map_banco_de_registradores|registradores~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~284_combout\ = ( \port_map_banco_de_registradores|registradores~60_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~76_q\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~60_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~76_q\) 
-- ) ) ) # ( \port_map_banco_de_registradores|registradores~60_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~28_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~44_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~60_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~28_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~44_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~76_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~44_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~60_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~284_combout\);

-- Location: MLABCELL_X59_Y4_N48
\port_map_ula|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~0_combout\ = ( \port_map_ula|soma|b7|S~combout\ & ( \port_map_ula|Add1~29_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # ((\port_map_rom|rom_memory~5_combout\ & 
-- \port_map_banco_de_registradores|registradores~284_combout\)))) ) ) ) # ( !\port_map_ula|soma|b7|S~combout\ & ( \port_map_ula|Add1~29_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~284_combout\)))) ) ) ) # ( \port_map_ula|soma|b7|S~combout\ & ( !\port_map_ula|Add1~29_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~6_combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~284_combout\ & \port_map_rom|rom_memory~6_combout\)))) ) ) ) # ( 
-- !\port_map_ula|soma|b7|S~combout\ & ( !\port_map_ula|Add1~29_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~284_combout\ & (\port_map_rom|rom_memory~6_combout\ & !\port_map_rom|rom_memory~7_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000101000010000000001010001000000001111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datae => \port_map_ula|soma|b7|ALT_INV_S~combout\,
	dataf => \port_map_ula|ALT_INV_Add1~29_sumout\,
	combout => \port_map_ula|Mux14~0_combout\);

-- Location: FF_X60_Y4_N22
\port_map_banco_de_registradores|registradores~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux13~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~29_q\);

-- Location: LABCELL_X62_Y4_N33
\port_map_ula|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~33_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~285_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~29_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~30\ ))
-- \port_map_ula|Add1~34\ = CARRY(( \port_map_banco_de_registradores|registradores~285_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~29_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~285_combout\,
	cin => \port_map_ula|Add1~30\,
	sumout => \port_map_ula|Add1~33_sumout\,
	cout => \port_map_ula|Add1~34\);

-- Location: LABCELL_X61_Y4_N48
\port_map_ula|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~1_combout\ = ( \port_map_rom|rom_memory~7_combout\ & ( \port_map_banco_de_registradores|registradores~285_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~6_combout\))) # 
-- (\port_map_rom|rom_memory~5_combout\ & ((\port_map_rom|rom_memory~6_combout\) # (\port_map_ula|Add1~33_sumout\))) ) ) ) # ( !\port_map_rom|rom_memory~7_combout\ & ( \port_map_banco_de_registradores|registradores~285_combout\ & ( 
-- (!\port_map_rom|rom_memory~5_combout\ & (((!\port_map_banco_de_registradores|registradores~29_q\ & !\port_map_rom|rom_memory~6_combout\)))) # (\port_map_rom|rom_memory~5_combout\ & (((\port_map_rom|rom_memory~6_combout\)) # 
-- (\port_map_ula|Add1~33_sumout\))) ) ) ) # ( \port_map_rom|rom_memory~7_combout\ & ( !\port_map_banco_de_registradores|registradores~285_combout\ & ( (\port_map_ula|Add1~33_sumout\ & (\port_map_rom|rom_memory~5_combout\ & 
-- !\port_map_rom|rom_memory~6_combout\)) ) ) ) # ( !\port_map_rom|rom_memory~7_combout\ & ( !\port_map_banco_de_registradores|registradores~285_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~29_q\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|Add1~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000100010000000011010001001100111101110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Add1~33_sumout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~285_combout\,
	combout => \port_map_ula|Mux13~1_combout\);

-- Location: FF_X61_Y4_N2
\port_map_banco_de_registradores|registradores~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux13~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~61_q\);

-- Location: FF_X61_Y4_N49
\port_map_banco_de_registradores|registradores~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux13~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~77_q\);

-- Location: FF_X61_Y4_N56
\port_map_banco_de_registradores|registradores~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux13~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~45_q\);

-- Location: LABCELL_X61_Y4_N54
\port_map_banco_de_registradores|registradores~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~285_combout\ = ( \port_map_banco_de_registradores|registradores~45_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~61_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~77_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~45_q\ & ( 
-- \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~61_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~77_q\))) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~45_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~29_q\) # (\port_map_rom|rom_memory~3_combout\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~45_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~29_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~61_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~77_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~45_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~285_combout\);

-- Location: MLABCELL_X59_Y4_N18
\port_map_ula|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~0_combout\ = ( !\port_map_rom|rom_memory~7_combout\ & ( \port_map_ula|Add1~33_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_banco_de_registradores|registradores~285_combout\ $ 
-- (!\port_map_banco_de_registradores|registradores~29_q\)))) # (\port_map_rom|rom_memory~5_combout\ & (((!\port_map_rom|rom_memory~6_combout\)) # (\port_map_banco_de_registradores|registradores~285_combout\))) ) ) ) # ( !\port_map_rom|rom_memory~7_combout\ 
-- & ( !\port_map_ula|Add1~33_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_banco_de_registradores|registradores~285_combout\ $ (!\port_map_banco_de_registradores|registradores~29_q\)))) # 
-- (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~285_combout\ & (\port_map_rom|rom_memory~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000001000000000000000001110001101100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~285_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~33_sumout\,
	combout => \port_map_ula|Mux13~0_combout\);

-- Location: FF_X61_Y4_N16
\port_map_banco_de_registradores|registradores~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux12~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~46_q\);

-- Location: FF_X61_Y4_N11
\port_map_banco_de_registradores|registradores~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux12~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~78_q\);

-- Location: FF_X61_Y4_N26
\port_map_banco_de_registradores|registradores~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux12~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~62_q\);

-- Location: LABCELL_X61_Y4_N24
\port_map_banco_de_registradores|registradores~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~286_combout\ = ( \port_map_banco_de_registradores|registradores~62_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~78_q\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~62_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~78_q\) 
-- ) ) ) # ( \port_map_banco_de_registradores|registradores~62_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~30_q\))) # (\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~46_q\)) ) ) ) # ( !\port_map_banco_de_registradores|registradores~62_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~30_q\))) # (\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~46_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~46_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~78_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~62_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~286_combout\);

-- Location: LABCELL_X62_Y4_N36
\port_map_ula|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~37_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~286_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~30_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~34\ ))
-- \port_map_ula|Add1~38\ = CARRY(( \port_map_banco_de_registradores|registradores~286_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~30_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	cin => \port_map_ula|Add1~34\,
	sumout => \port_map_ula|Add1~37_sumout\,
	cout => \port_map_ula|Add1~38\);

-- Location: LABCELL_X61_Y4_N9
\port_map_ula|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~1_combout\ = ( \port_map_banco_de_registradores|registradores~286_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_ula|soma|b9|S~0_combout\)))) # 
-- (\port_map_rom|rom_memory~5_combout\ & (((\port_map_ula|Add1~37_sumout\)) # (\port_map_rom|rom_memory~6_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~286_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|soma|b9|S~0_combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|Add1~37_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110010011101000101011001110100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_ula|ALT_INV_Add1~37_sumout\,
	datad => \port_map_ula|soma|b9|ALT_INV_S~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	combout => \port_map_ula|Mux12~1_combout\);

-- Location: FF_X60_Y4_N50
\port_map_banco_de_registradores|registradores~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux12~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~30_q\);

-- Location: LABCELL_X60_Y4_N18
\port_map_ula|soma|b9|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b9|S~0_combout\ = ( !\port_map_rom|rom_memory~7_combout\ & ( !\port_map_banco_de_registradores|registradores~30_q\ $ (((!\port_map_banco_de_registradores|registradores~277_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~21_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	combout => \port_map_ula|soma|b9|S~0_combout\);

-- Location: LABCELL_X61_Y4_N12
\port_map_ula|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~0_combout\ = ( \port_map_ula|Add1~37_sumout\ & ( \port_map_banco_de_registradores|registradores~286_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (((!\port_map_ula|soma|b9|S~0_combout\ & !\port_map_rom|rom_memory~6_combout\)) # 
-- (\port_map_rom|rom_memory~5_combout\))) ) ) ) # ( !\port_map_ula|Add1~37_sumout\ & ( \port_map_banco_de_registradores|registradores~286_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & 
-- (!\port_map_ula|soma|b9|S~0_combout\ & !\port_map_rom|rom_memory~6_combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_rom|rom_memory~6_combout\))))) ) ) ) # ( \port_map_ula|Add1~37_sumout\ & ( 
-- !\port_map_banco_de_registradores|registradores~286_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~6_combout\ & ((\port_map_ula|soma|b9|S~0_combout\) # (\port_map_rom|rom_memory~5_combout\)))) ) ) ) # ( 
-- !\port_map_ula|Add1~37_sumout\ & ( !\port_map_banco_de_registradores|registradores~286_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & (\port_map_ula|soma|b9|S~0_combout\ & 
-- !\port_map_rom|rom_memory~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000010011000000000010000000010001001100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_ula|soma|b9|ALT_INV_S~0_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_ula|ALT_INV_Add1~37_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	combout => \port_map_ula|Mux12~0_combout\);

-- Location: FF_X63_Y4_N40
\port_map_banco_de_registradores|registradores~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux11~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~79_q\);

-- Location: FF_X64_Y4_N34
\port_map_banco_de_registradores|registradores~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux11~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~47_q\);

-- Location: FF_X63_Y4_N56
\port_map_banco_de_registradores|registradores~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux11~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~63_q\);

-- Location: LABCELL_X63_Y4_N54
\port_map_banco_de_registradores|registradores~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~287_combout\ = ( \port_map_banco_de_registradores|registradores~63_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~79_q\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~63_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~79_q\) 
-- ) ) ) # ( \port_map_banco_de_registradores|registradores~63_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~31_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~47_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~63_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~31_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~47_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~79_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~47_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~63_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~287_combout\);

-- Location: LABCELL_X62_Y4_N39
\port_map_ula|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~41_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~287_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~31_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~38\ ))
-- \port_map_ula|Add1~42\ = CARRY(( \port_map_banco_de_registradores|registradores~287_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~31_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~287_combout\,
	cin => \port_map_ula|Add1~38\,
	sumout => \port_map_ula|Add1~41_sumout\,
	cout => \port_map_ula|Add1~42\);

-- Location: LABCELL_X63_Y4_N39
\port_map_ula|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~2_combout\ = ( \port_map_ula|Mux11~0_combout\ ) # ( !\port_map_ula|Mux11~0_combout\ & ( (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|Add1~41_sumout\ & !\port_map_rom|rom_memory~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|ALT_INV_Add1~41_sumout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_ula|ALT_INV_Mux11~0_combout\,
	combout => \port_map_ula|Mux11~2_combout\);

-- Location: FF_X63_Y4_N17
\port_map_banco_de_registradores|registradores~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux11~2_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~31_q\);

-- Location: LABCELL_X63_Y4_N21
\port_map_ula|soma|b1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b1|Cout~0_combout\ = ( \port_map_banco_de_registradores|registradores~278_combout\ & ( ((\port_map_banco_de_registradores|registradores~277_combout\ & \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\)) # 
-- (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) ) ) # ( !\port_map_banco_de_registradores|registradores~278_combout\ & ( (\port_map_banco_de_registradores|registradores~277_combout\ & (\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	combout => \port_map_ula|soma|b1|Cout~0_combout\);

-- Location: LABCELL_X63_Y4_N6
\port_map_ula|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~0_combout\ = ( \port_map_banco_de_registradores|registradores~287_combout\ & ( \port_map_rom|rom_memory~7_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_ula|soma|b1|Cout~0_combout\ & 
-- !\port_map_rom|rom_memory~6_combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_rom|rom_memory~6_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~287_combout\ & ( \port_map_rom|rom_memory~7_combout\ & ( 
-- (!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b1|Cout~0_combout\ & !\port_map_rom|rom_memory~6_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~287_combout\ & ( !\port_map_rom|rom_memory~7_combout\ & ( 
-- (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_banco_de_registradores|registradores~31_q\ $ (\port_map_ula|soma|b1|Cout~0_combout\)))) # (\port_map_rom|rom_memory~5_combout\ & 
-- (((\port_map_rom|rom_memory~6_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~287_combout\ & ( !\port_map_rom|rom_memory~7_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~31_q\ $ (!\port_map_ula|soma|b1|Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000100000100101010100001010000000001010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datac => \port_map_ula|soma|b1|ALT_INV_Cout~0_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~287_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	combout => \port_map_ula|Mux11~0_combout\);

-- Location: MLABCELL_X59_Y4_N57
\port_map_ula|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~1_combout\ = ( \port_map_ula|Add1~41_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~7_combout\ & ((\port_map_ula|Mux11~0_combout\) # (\port_map_rom|rom_memory~5_combout\)))) # 
-- (\port_map_rom|rom_memory~6_combout\ & (\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~5_combout\) # (!\port_map_rom|rom_memory~7_combout\)))) ) ) # ( !\port_map_ula|Add1~41_sumout\ & ( (\port_map_ula|Mux11~0_combout\ & 
-- ((!\port_map_rom|rom_memory~7_combout\) # ((\port_map_rom|rom_memory~6_combout\ & !\port_map_rom|rom_memory~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000100000011110000010000101111000001000010111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|ALT_INV_Mux11~0_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~41_sumout\,
	combout => \port_map_ula|Mux11~1_combout\);

-- Location: LABCELL_X60_Y4_N15
\port_map_ula|soma|b11|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b11|S~combout\ = ( \port_map_banco_de_registradores|registradores~32_q\ & ( \port_map_banco_de_registradores|registradores~288_combout\ & ( !\port_map_rom|rom_memory~7_combout\ $ (!\port_map_ula|soma|b2|Cout~0_combout\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~32_q\ & ( \port_map_banco_de_registradores|registradores~288_combout\ & ( !\port_map_ula|soma|b2|Cout~0_combout\ ) ) ) # ( \port_map_banco_de_registradores|registradores~32_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~288_combout\ & ( !\port_map_rom|rom_memory~7_combout\ $ (\port_map_ula|soma|b2|Cout~0_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~32_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~288_combout\ & ( \port_map_ula|soma|b2|Cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101001011010010111110000111100000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	combout => \port_map_ula|soma|b11|S~combout\);

-- Location: LABCELL_X62_Y4_N42
\port_map_ula|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~45_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~288_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~32_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~42\ ))
-- \port_map_ula|Add1~46\ = CARRY(( \port_map_banco_de_registradores|registradores~288_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~32_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	cin => \port_map_ula|Add1~42\,
	sumout => \port_map_ula|Add1~45_sumout\,
	cout => \port_map_ula|Add1~46\);

-- Location: LABCELL_X61_Y4_N3
\port_map_ula|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~1_combout\ = ( \port_map_banco_de_registradores|registradores~288_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\ & (\port_map_ula|soma|b11|S~combout\))) # (\port_map_rom|rom_memory~5_combout\ 
-- & (((\port_map_ula|Add1~45_sumout\)) # (\port_map_rom|rom_memory~6_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~288_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_ula|soma|b11|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|Add1~45_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_ula|soma|b11|ALT_INV_S~combout\,
	datad => \port_map_ula|ALT_INV_Add1~45_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	combout => \port_map_ula|Mux10~1_combout\);

-- Location: FF_X60_Y4_N34
\port_map_banco_de_registradores|registradores~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux10~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~32_q\);

-- Location: FF_X61_Y4_N14
\port_map_banco_de_registradores|registradores~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux10~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~48_q\);

-- Location: FF_X61_Y4_N5
\port_map_banco_de_registradores|registradores~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux10~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~64_q\);

-- Location: FF_X61_Y4_N8
\port_map_banco_de_registradores|registradores~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux10~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~80_q\);

-- Location: LABCELL_X61_Y4_N45
\port_map_banco_de_registradores|registradores~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~288_combout\ = ( \port_map_banco_de_registradores|registradores~64_q\ & ( \port_map_banco_de_registradores|registradores~80_q\ & ( ((!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~32_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~48_q\)))) # (\port_map_rom|rom_memory~4_combout\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~64_q\ & ( \port_map_banco_de_registradores|registradores~80_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~32_q\ & ((!\port_map_rom|rom_memory~4_combout\)))) # 
-- (\port_map_rom|rom_memory~3_combout\ & (((\port_map_rom|rom_memory~4_combout\) # (\port_map_banco_de_registradores|registradores~48_q\)))) ) ) ) # ( \port_map_banco_de_registradores|registradores~64_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~80_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & (((\port_map_rom|rom_memory~4_combout\)) # (\port_map_banco_de_registradores|registradores~32_q\))) # (\port_map_rom|rom_memory~3_combout\ & 
-- (((\port_map_banco_de_registradores|registradores~48_q\ & !\port_map_rom|rom_memory~4_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~64_q\ & ( !\port_map_banco_de_registradores|registradores~80_q\ & ( 
-- (!\port_map_rom|rom_memory~4_combout\ & ((!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~32_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~48_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~48_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~64_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~80_q\,
	combout => \port_map_banco_de_registradores|registradores~288_combout\);

-- Location: MLABCELL_X59_Y4_N24
\port_map_ula|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~0_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_ula|Add1~45_sumout\ & ( (\port_map_banco_de_registradores|registradores~288_combout\ & (\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~7_combout\)) ) ) ) 
-- # ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_ula|Add1~45_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((\port_map_ula|soma|b11|S~combout\) # (\port_map_rom|rom_memory~5_combout\))) ) ) ) # ( \port_map_rom|rom_memory~6_combout\ & ( 
-- !\port_map_ula|Add1~45_sumout\ & ( (\port_map_banco_de_registradores|registradores~288_combout\ & (\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~7_combout\)) ) ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- !\port_map_ula|Add1~45_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b11|S~combout\ & !\port_map_rom|rom_memory~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000100010000000000111111000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|soma|b11|ALT_INV_S~combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~45_sumout\,
	combout => \port_map_ula|Mux10~0_combout\);

-- Location: FF_X66_Y4_N32
\port_map_banco_de_registradores|registradores~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux9~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~33_q\);

-- Location: LABCELL_X67_Y4_N48
\port_map_ula|soma|b12|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b12|S~combout\ = ( \port_map_ula|soma|b2|Cout~0_combout\ & ( \port_map_banco_de_registradores|registradores~289_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_banco_de_registradores|registradores~33_q\ $ 
-- (((\port_map_banco_de_registradores|registradores~280_combout\) # (\port_map_banco_de_registradores|registradores~24_q\))))) # (\port_map_rom|rom_memory~7_combout\ & (((!\port_map_banco_de_registradores|registradores~280_combout\)))) ) ) ) # ( 
-- !\port_map_ula|soma|b2|Cout~0_combout\ & ( \port_map_banco_de_registradores|registradores~289_combout\ & ( (!\port_map_banco_de_registradores|registradores~33_q\ $ (((\port_map_banco_de_registradores|registradores~24_q\ & 
-- \port_map_banco_de_registradores|registradores~280_combout\)))) # (\port_map_rom|rom_memory~7_combout\) ) ) ) # ( \port_map_ula|soma|b2|Cout~0_combout\ & ( !\port_map_banco_de_registradores|registradores~289_combout\ & ( 
-- (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_banco_de_registradores|registradores~33_q\ $ (((!\port_map_banco_de_registradores|registradores~24_q\ & !\port_map_banco_de_registradores|registradores~280_combout\))))) # 
-- (\port_map_rom|rom_memory~7_combout\ & (((\port_map_banco_de_registradores|registradores~280_combout\)))) ) ) ) # ( !\port_map_ula|soma|b2|Cout~0_combout\ & ( !\port_map_banco_de_registradores|registradores~289_combout\ & ( 
-- (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_banco_de_registradores|registradores~33_q\ $ (((!\port_map_banco_de_registradores|registradores~24_q\) # (!\port_map_banco_de_registradores|registradores~280_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001000010010001111001111110011101101111011011100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datae => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	combout => \port_map_ula|soma|b12|S~combout\);

-- Location: LABCELL_X62_Y4_N45
\port_map_ula|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~49_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~289_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~33_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~46\ ))
-- \port_map_ula|Add1~50\ = CARRY(( \port_map_banco_de_registradores|registradores~289_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~33_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	cin => \port_map_ula|Add1~46\,
	sumout => \port_map_ula|Add1~49_sumout\,
	cout => \port_map_ula|Add1~50\);

-- Location: LABCELL_X66_Y4_N36
\port_map_ula|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~1_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((\port_map_ula|Add1~49_sumout\))) # (\port_map_rom|rom_memory~6_combout\ & (\port_map_banco_de_registradores|registradores~289_combout\)) ) 
-- ) # ( !\port_map_rom|rom_memory~5_combout\ & ( (\port_map_ula|soma|b12|S~combout\ & !\port_map_rom|rom_memory~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|soma|b12|ALT_INV_S~combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	datac => \port_map_ula|ALT_INV_Add1~49_sumout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux9~1_combout\);

-- Location: FF_X66_Y4_N37
\port_map_banco_de_registradores|registradores~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux9~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~65_q\);

-- Location: LABCELL_X67_Y4_N45
\port_map_banco_de_registradores|registradores~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~49feeder_combout\ = ( \port_map_ula|Mux9~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux9~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~49feeder_combout\);

-- Location: FF_X67_Y4_N47
\port_map_banco_de_registradores|registradores~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~49feeder_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~49_q\);

-- Location: FF_X66_Y4_N59
\port_map_banco_de_registradores|registradores~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux9~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~81_q\);

-- Location: LABCELL_X66_Y4_N57
\port_map_banco_de_registradores|registradores~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~289_combout\ = ( \port_map_banco_de_registradores|registradores~81_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\) # (\port_map_banco_de_registradores|registradores~65_q\) 
-- ) ) ) # ( !\port_map_banco_de_registradores|registradores~81_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~65_q\ & !\port_map_rom|rom_memory~3_combout\) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~81_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~33_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~49_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~81_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~33_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~49_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~65_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~49_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~81_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~289_combout\);

-- Location: MLABCELL_X59_Y4_N6
\port_map_ula|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~0_combout\ = ( \port_map_ula|soma|b12|S~combout\ & ( \port_map_ula|Add1~49_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # ((\port_map_rom|rom_memory~5_combout\ & 
-- \port_map_banco_de_registradores|registradores~289_combout\)))) ) ) ) # ( !\port_map_ula|soma|b12|S~combout\ & ( \port_map_ula|Add1~49_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~289_combout\)))) ) ) ) # ( \port_map_ula|soma|b12|S~combout\ & ( !\port_map_ula|Add1~49_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~6_combout\)) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_rom|rom_memory~6_combout\ & \port_map_banco_de_registradores|registradores~289_combout\)))) ) ) ) # ( 
-- !\port_map_ula|soma|b12|S~combout\ & ( !\port_map_ula|Add1~49_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~7_combout\ & \port_map_banco_de_registradores|registradores~289_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000100000001001000001000000010100001100000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	datae => \port_map_ula|soma|b12|ALT_INV_S~combout\,
	dataf => \port_map_ula|ALT_INV_Add1~49_sumout\,
	combout => \port_map_ula|Mux9~0_combout\);

-- Location: LABCELL_X66_Y4_N39
\port_map_ula|soma|b13|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b13|S~0_combout\ = ( \port_map_banco_de_registradores|registradores~290_combout\ & ( (!\port_map_banco_de_registradores|registradores~34_q\) # (\port_map_rom|rom_memory~7_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~290_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & \port_map_banco_de_registradores|registradores~34_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	combout => \port_map_ula|soma|b13|S~0_combout\);

-- Location: LABCELL_X66_Y4_N18
\port_map_ula|soma|b13|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b13|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( \port_map_ula|soma|b13|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~281_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & 
-- ((!\port_map_ula|soma|b2|Cout~0_combout\) # (!\port_map_banco_de_registradores|registradores~280_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ & 
-- !\port_map_banco_de_registradores|registradores~280_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( \port_map_ula|soma|b13|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~281_combout\) # 
-- ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & ((!\port_map_ula|soma|b2|Cout~0_combout\) # (!\port_map_banco_de_registradores|registradores~280_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (!\port_map_ula|soma|b2|Cout~0_combout\ & 
-- !\port_map_banco_de_registradores|registradores~280_combout\))) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( !\port_map_ula|soma|b13|S~0_combout\ & ( ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ 
-- & \port_map_banco_de_registradores|registradores~280_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & ((\port_map_banco_de_registradores|registradores~280_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~281_combout\) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & ( !\port_map_ula|soma|b13|S~0_combout\ & ( (\port_map_banco_de_registradores|registradores~281_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & (\port_map_ula|soma|b2|Cout~0_combout\ & \port_map_banco_de_registradores|registradores~280_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[3]~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~280_combout\) # (\port_map_ula|soma|b2|Cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111111111111111010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~3_combout\,
	datab => \port_map_ula|soma|b2|ALT_INV_Cout~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	dataf => \port_map_ula|soma|b13|ALT_INV_S~0_combout\,
	combout => \port_map_ula|soma|b13|S~combout\);

-- Location: LABCELL_X62_Y4_N48
\port_map_ula|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~53_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~290_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~34_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~50\ ))
-- \port_map_ula|Add1~54\ = CARRY(( \port_map_banco_de_registradores|registradores~290_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~34_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	cin => \port_map_ula|Add1~50\,
	sumout => \port_map_ula|Add1~53_sumout\,
	cout => \port_map_ula|Add1~54\);

-- Location: LABCELL_X66_Y4_N45
\port_map_ula|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~1_combout\ = ( \port_map_banco_de_registradores|registradores~290_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & ((!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b13|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ 
-- & ((\port_map_ula|Add1~53_sumout\))))) # (\port_map_rom|rom_memory~6_combout\ & (\port_map_rom|rom_memory~5_combout\)) ) ) # ( !\port_map_banco_de_registradores|registradores~290_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b13|S~combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|Add1~53_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000011001001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|soma|b13|ALT_INV_S~combout\,
	datad => \port_map_ula|ALT_INV_Add1~53_sumout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	combout => \port_map_ula|Mux8~1_combout\);

-- Location: FF_X66_Y4_N53
\port_map_banco_de_registradores|registradores~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux8~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~34_q\);

-- Location: LABCELL_X67_Y4_N24
\port_map_banco_de_registradores|registradores~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~50feeder_combout\ = ( \port_map_ula|Mux8~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux8~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~50feeder_combout\);

-- Location: FF_X67_Y4_N25
\port_map_banco_de_registradores|registradores~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~50feeder_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~50_q\);

-- Location: FF_X66_Y4_N46
\port_map_banco_de_registradores|registradores~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux8~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~82_q\);

-- Location: FF_X66_Y4_N14
\port_map_banco_de_registradores|registradores~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux8~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~66_q\);

-- Location: LABCELL_X66_Y4_N12
\port_map_banco_de_registradores|registradores~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~290_combout\ = ( \port_map_banco_de_registradores|registradores~66_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~82_q\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~66_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~82_q\) 
-- ) ) ) # ( \port_map_banco_de_registradores|registradores~66_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~34_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~50_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~66_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~34_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~50_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~50_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~82_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~66_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~290_combout\);

-- Location: MLABCELL_X59_Y4_N42
\port_map_ula|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~0_combout\ = ( \port_map_ula|soma|b13|S~combout\ & ( \port_map_ula|Add1~53_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # ((\port_map_rom|rom_memory~5_combout\ & 
-- \port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( !\port_map_ula|soma|b13|S~combout\ & ( \port_map_ula|Add1~53_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( \port_map_ula|soma|b13|S~combout\ & ( !\port_map_ula|Add1~53_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~6_combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~290_combout\ & \port_map_rom|rom_memory~6_combout\)))) ) ) ) # ( 
-- !\port_map_ula|soma|b13|S~combout\ & ( !\port_map_ula|Add1~53_sumout\ & ( (\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~290_combout\ & (\port_map_rom|rom_memory~6_combout\ & !\port_map_rom|rom_memory~7_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000101000010000000001010001000000001111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datae => \port_map_ula|soma|b13|ALT_INV_S~combout\,
	dataf => \port_map_ula|ALT_INV_Add1~53_sumout\,
	combout => \port_map_ula|Mux8~0_combout\);

-- Location: LABCELL_X63_Y4_N51
\port_map_ula|soma|b14|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b14|S~combout\ = ( \port_map_banco_de_registradores|registradores~26_q\ & ( \port_map_rom|rom_memory~7_combout\ & ( !\port_map_banco_de_registradores|registradores~291_combout\ $ (((!\port_map_ula|soma|b4|Cout~0_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~282_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~26_q\ & ( \port_map_rom|rom_memory~7_combout\ & ( !\port_map_banco_de_registradores|registradores~291_combout\ $ 
-- (((!\port_map_ula|soma|b4|Cout~0_combout\) # (!\port_map_banco_de_registradores|registradores~282_combout\))) ) ) ) # ( \port_map_banco_de_registradores|registradores~26_q\ & ( !\port_map_rom|rom_memory~7_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~35_q\ $ (!\port_map_banco_de_registradores|registradores~291_combout\ $ (((\port_map_banco_de_registradores|registradores~282_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\)))) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~26_q\ & ( !\port_map_rom|rom_memory~7_combout\ & ( !\port_map_banco_de_registradores|registradores~35_q\ $ (!\port_map_banco_de_registradores|registradores~291_combout\ $ 
-- (((\port_map_ula|soma|b4|Cout~0_combout\ & \port_map_banco_de_registradores|registradores~282_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	datac => \port_map_ula|soma|b4|ALT_INV_Cout~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	combout => \port_map_ula|soma|b14|S~combout\);

-- Location: LABCELL_X62_Y4_N51
\port_map_ula|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~57_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~291_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~35_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~54\ ))
-- \port_map_ula|Add1~58\ = CARRY(( \port_map_banco_de_registradores|registradores~291_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~35_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	cin => \port_map_ula|Add1~54\,
	sumout => \port_map_ula|Add1~57_sumout\,
	cout => \port_map_ula|Add1~58\);

-- Location: LABCELL_X62_Y4_N0
\port_map_ula|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~1_combout\ = ( \port_map_ula|Add1~57_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b14|S~combout\ & ((!\port_map_rom|rom_memory~6_combout\)))) # (\port_map_rom|rom_memory~5_combout\ & 
-- (((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~291_combout\)))) ) ) # ( !\port_map_ula|Add1~57_sumout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|soma|b14|S~combout\ & 
-- ((!\port_map_rom|rom_memory~6_combout\)))) # (\port_map_rom|rom_memory~5_combout\ & (((\port_map_banco_de_registradores|registradores~291_combout\ & \port_map_rom|rom_memory~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001000000001101110111000000110111011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|soma|b14|ALT_INV_S~combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~57_sumout\,
	combout => \port_map_ula|Mux7~1_combout\);

-- Location: FF_X62_Y4_N59
\port_map_banco_de_registradores|registradores~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux7~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~35_q\);

-- Location: FF_X61_Y4_N47
\port_map_banco_de_registradores|registradores~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux7~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~51_q\);

-- Location: FF_X62_Y4_N46
\port_map_banco_de_registradores|registradores~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux7~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~67_q\);

-- Location: FF_X62_Y4_N1
\port_map_banco_de_registradores|registradores~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux7~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~83_q\);

-- Location: LABCELL_X66_Y4_N33
\port_map_banco_de_registradores|registradores~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~291_combout\ = ( \port_map_banco_de_registradores|registradores~83_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~67_q\) # (\port_map_rom|rom_memory~3_combout\) 
-- ) ) ) # ( !\port_map_banco_de_registradores|registradores~83_q\ & ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~67_q\) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~83_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~35_q\)) # (\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~51_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~83_q\ & ( !\port_map_rom|rom_memory~4_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~35_q\)) # (\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~51_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~51_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~67_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~83_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~291_combout\);

-- Location: MLABCELL_X59_Y4_N3
\port_map_ula|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~0_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|Add1~57_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~291_combout\))) ) 
-- ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|Add1~57_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~7_combout\ & \port_map_ula|soma|b14|S~combout\)) ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_ula|Add1~57_sumout\ & ( (\port_map_rom|rom_memory~6_combout\ & (\port_map_banco_de_registradores|registradores~291_combout\ & !\port_map_rom|rom_memory~7_combout\)) ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_ula|Add1~57_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~7_combout\ & \port_map_ula|soma|b14|S~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000100000001000000000000101000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_ula|soma|b14|ALT_INV_S~combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~57_sumout\,
	combout => \port_map_ula|Mux7~0_combout\);

-- Location: FF_X60_Y4_N47
\port_map_banco_de_registradores|registradores~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux6~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~36_q\);

-- Location: LABCELL_X60_Y4_N54
\port_map_ula|soma|b15|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b15|S~0_combout\ = ( \port_map_banco_de_registradores|registradores~292_combout\ & ( (!\port_map_banco_de_registradores|registradores~36_q\) # (\port_map_rom|rom_memory~7_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~292_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & \port_map_banco_de_registradores|registradores~36_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	combout => \port_map_ula|soma|b15|S~0_combout\);

-- Location: LABCELL_X63_Y4_N30
\port_map_ula|soma|b15|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b15|S~combout\ = ( \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( \port_map_ula|soma|b15|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\ & ((!\port_map_banco_de_registradores|registradores~282_combout\ 
-- & ((!\port_map_ula|soma|b4|Cout~0_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\))) # (\port_map_banco_de_registradores|registradores~282_combout\ & (!\port_map_ula|soma|b4|Cout~0_combout\ & !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\)))) 
-- ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( \port_map_ula|soma|b15|S~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\) # ((!\port_map_banco_de_registradores|registradores~282_combout\ & 
-- ((!\port_map_ula|soma|b4|Cout~0_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\))) # (\port_map_banco_de_registradores|registradores~282_combout\ & (!\port_map_ula|soma|b4|Cout~0_combout\ & !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\))) ) ) 
-- ) # ( \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( !\port_map_ula|soma|b15|S~0_combout\ & ( ((!\port_map_banco_de_registradores|registradores~282_combout\ & (\port_map_ula|soma|b4|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~282_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\)))) # (\port_map_banco_de_registradores|registradores~283_combout\) ) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( !\port_map_ula|soma|b15|S~0_combout\ & ( (\port_map_banco_de_registradores|registradores~283_combout\ & ((!\port_map_banco_de_registradores|registradores~282_combout\ & 
-- (\port_map_ula|soma|b4|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\)) # (\port_map_banco_de_registradores|registradores~282_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\) # (\port_map_ula|soma|b4|Cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111111111111111010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datab => \port_map_ula|soma|b4|ALT_INV_Cout~0_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\,
	dataf => \port_map_ula|soma|b15|ALT_INV_S~0_combout\,
	combout => \port_map_ula|soma|b15|S~combout\);

-- Location: LABCELL_X62_Y4_N54
\port_map_ula|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~61_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~292_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~36_q\) # (\port_map_rom|rom_memory~7_combout\) ) + ( \port_map_ula|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	cin => \port_map_ula|Add1~58\,
	sumout => \port_map_ula|Add1~61_sumout\);

-- Location: MLABCELL_X59_Y4_N54
\port_map_ula|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~1_combout\ = ( \port_map_ula|Add1~61_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (((\port_map_ula|soma|b15|S~combout\)) # (\port_map_rom|rom_memory~5_combout\))) # (\port_map_rom|rom_memory~6_combout\ & 
-- (\port_map_rom|rom_memory~5_combout\ & ((\port_map_banco_de_registradores|registradores~292_combout\)))) ) ) # ( !\port_map_ula|Add1~61_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_ula|soma|b15|S~combout\))) # (\port_map_rom|rom_memory~6_combout\ & (\port_map_rom|rom_memory~5_combout\ & ((\port_map_banco_de_registradores|registradores~292_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100100101010001110110010101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|soma|b15|ALT_INV_S~combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~61_sumout\,
	combout => \port_map_ula|Mux6~1_combout\);

-- Location: FF_X59_Y4_N38
\port_map_banco_de_registradores|registradores~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux6~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~52_q\);

-- Location: FF_X59_Y4_N22
\port_map_banco_de_registradores|registradores~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux6~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~68_q\);

-- Location: FF_X59_Y4_N56
\port_map_banco_de_registradores|registradores~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux6~1_combout\,
	sclr => \port_map_ula|Mux21~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~84_q\);

-- Location: LABCELL_X60_Y4_N39
\port_map_banco_de_registradores|registradores~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~292_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~84_q\ & ( (\port_map_banco_de_registradores|registradores~68_q\) # (\port_map_rom|rom_memory~3_combout\) 
-- ) ) ) # ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~84_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & ((\port_map_banco_de_registradores|registradores~36_q\))) # (\port_map_rom|rom_memory~3_combout\ & 
-- (\port_map_banco_de_registradores|registradores~52_q\)) ) ) ) # ( \port_map_rom|rom_memory~4_combout\ & ( !\port_map_banco_de_registradores|registradores~84_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- \port_map_banco_de_registradores|registradores~68_q\) ) ) ) # ( !\port_map_rom|rom_memory~4_combout\ & ( !\port_map_banco_de_registradores|registradores~84_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~36_q\))) # (\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~52_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~52_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~68_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~84_q\,
	combout => \port_map_banco_de_registradores|registradores~292_combout\);

-- Location: MLABCELL_X59_Y4_N33
\port_map_ula|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~0_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|Add1~61_sumout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~292_combout\))) ) 
-- ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|Add1~61_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~7_combout\ & \port_map_ula|soma|b15|S~combout\)) ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_ula|Add1~61_sumout\ & ( (\port_map_rom|rom_memory~6_combout\ & (\port_map_banco_de_registradores|registradores~292_combout\ & !\port_map_rom|rom_memory~7_combout\)) ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_ula|Add1~61_sumout\ & ( (!\port_map_rom|rom_memory~6_combout\ & (!\port_map_rom|rom_memory~7_combout\ & \port_map_ula|soma|b15|S~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000100000001000000000000101000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_ula|soma|b15|ALT_INV_S~combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|ALT_INV_Add1~61_sumout\,
	combout => \port_map_ula|Mux6~0_combout\);

-- Location: M10K_X58_Y4_N0
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor_16bits.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_umv1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 1,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X67_Y4_N21
\port_map_rom|rom_memory~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~0_combout\ = ( \port_map_pc|outPort\(0) & ( (!\port_map_pc|outPort\(3) & !\port_map_pc|outPort\(4)) ) ) # ( !\port_map_pc|outPort\(0) & ( (\port_map_pc|outPort\(2) & (!\port_map_pc|outPort\(3) & !\port_map_pc|outPort\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_pc|ALT_INV_outPort\(4),
	dataf => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_rom|rom_memory~0_combout\);

-- Location: LABCELL_X67_Y4_N18
\port_map_rom|rom_memory~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~1_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort\(7) & (!\port_map_pc|outPort\(6) & !\port_map_pc|outPort\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(7),
	datac => \port_map_pc|ALT_INV_outPort\(6),
	datad => \port_map_pc|ALT_INV_outPort\(5),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~1_combout\);

-- Location: LABCELL_X67_Y4_N0
\port_map_rom|rom_memory~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~8_combout\ = ( \port_map_pc|outPort\(0) & ( \port_map_rom|rom_memory~2_combout\ & ( (\port_map_pc|outPort\(1) & !\port_map_pc|outPort\(3)) ) ) ) # ( !\port_map_pc|outPort\(0) & ( \port_map_rom|rom_memory~2_combout\ & ( 
-- (\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & !\port_map_pc|outPort\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	datae => \port_map_pc|ALT_INV_outPort\(0),
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~8_combout\);

-- Location: LABCELL_X64_Y4_N3
\port_map_ula|soma|overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|overflow~0_combout\ = ( \port_map_rom|rom_memory~7_combout\ & ( \port_map_ula|soma|b4|Cout~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~291_combout\ & \port_map_banco_de_registradores|registradores~282_combout\) ) ) ) 
-- # ( !\port_map_rom|rom_memory~7_combout\ & ( \port_map_ula|soma|b4|Cout~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~291_combout\ & (!\port_map_banco_de_registradores|registradores~35_q\ & 
-- ((\port_map_banco_de_registradores|registradores~282_combout\) # (\port_map_banco_de_registradores|registradores~26_q\)))) # (\port_map_banco_de_registradores|registradores~291_combout\ & (!\port_map_banco_de_registradores|registradores~26_q\ & 
-- (!\port_map_banco_de_registradores|registradores~282_combout\ & \port_map_banco_de_registradores|registradores~35_q\))) ) ) ) # ( !\port_map_rom|rom_memory~7_combout\ & ( !\port_map_ula|soma|b4|Cout~0_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~291_combout\ & (\port_map_banco_de_registradores|registradores~26_q\ & (\port_map_banco_de_registradores|registradores~282_combout\ & !\port_map_banco_de_registradores|registradores~35_q\))) # 
-- (\port_map_banco_de_registradores|registradores~291_combout\ & (\port_map_banco_de_registradores|registradores~35_q\ & ((!\port_map_banco_de_registradores|registradores~26_q\) # (!\port_map_banco_de_registradores|registradores~282_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010100000000000000000000101010010000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_ula|soma|b4|ALT_INV_Cout~0_combout\,
	combout => \port_map_ula|soma|overflow~0_combout\);

-- Location: LABCELL_X66_Y4_N6
\port_map_ula|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux0~0_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~6_combout\ & !\port_map_rom|rom_memory~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux0~0_combout\);

-- Location: LABCELL_X64_Y4_N21
\port_map_ula|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|overflow~combout\ = ( \port_map_ula|Mux0~0_combout\ & ( \port_map_ula|soma|overflow~0_combout\ ) ) # ( !\port_map_ula|Mux0~0_combout\ & ( \port_map_ula|overflow~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|soma|ALT_INV_overflow~0_combout\,
	datad => \port_map_ula|ALT_INV_overflow~combout\,
	dataf => \port_map_ula|ALT_INV_Mux0~0_combout\,
	combout => \port_map_ula|overflow~combout\);
END structure;


