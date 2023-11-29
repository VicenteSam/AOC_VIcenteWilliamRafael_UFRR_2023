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

-- DATE "11/29/2023 19:10:10"

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
	ula_overflow_out : BUFFER std_logic;
	out_br_regA : BUFFER std_logic_vector(15 DOWNTO 0);
	out_br_regB : BUFFER std_logic_vector(15 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rd : BUFFER std_logic_vector(3 DOWNTO 0);
	out_endereco : BUFFER std_logic_vector(15 DOWNTO 0);
	out_out_mult4_2X1_ram_ula : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Trinity;

-- Design Ports Information
-- outPc[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[11]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[13]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[14]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[8]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[10]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[11]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[12]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[13]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[7]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[8]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[9]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[12]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[15]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[8]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[12]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[15]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_overflow_out	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[9]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[10]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[11]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[13]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[15]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[12]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[14]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[9]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[10]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[8]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[9]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[10]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[11]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[15]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ula_overflow_out : std_logic;
SIGNAL ww_out_br_regA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_br_regB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_endereco : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_out_mult4_2X1_ram_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \port_map_addr|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~2\ : std_logic;
SIGNAL \port_map_addr|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~6\ : std_logic;
SIGNAL \port_map_addr|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_mult3_2X1_jump|Sout[2]~3_combout\ : std_logic;
SIGNAL \port_map_addr|Add0~10\ : std_logic;
SIGNAL \port_map_addr|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_mult3_2X1_jump|Sout[3]~4_combout\ : std_logic;
SIGNAL \port_map_addr|Add0~14\ : std_logic;
SIGNAL \port_map_addr|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~18\ : std_logic;
SIGNAL \port_map_addr|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~22\ : std_logic;
SIGNAL \port_map_addr|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~26\ : std_logic;
SIGNAL \port_map_addr|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_mult3_2X1_jump|Sout[1]~2_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~8_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~9_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~10_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~11_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~12_combout\ : std_logic;
SIGNAL \port_map_unidade_de_controle|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~2_combout\ : std_logic;
SIGNAL \port_map_unidade_de_controle|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_unidade_de_controle|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~320_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~21_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~278_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~321_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~279_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~41_q\ : std_logic;
SIGNAL \port_map_rom|rom_memory~13_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~286_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~24_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~283_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~288_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~281_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~3_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~43_q\ : std_logic;
SIGNAL \port_map_rom|rom_memory~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~290_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~28_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~292_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~3_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~6_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~45_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~295_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~296_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[8]~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~48_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~302_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~47_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~299_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~46feeder_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~46_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~298_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~9_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~4_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~5_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~9_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~12_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~49_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~304_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~8_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~305_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~52_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~310_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~35_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~308_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~15_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~12_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[15]~15_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~36_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~309_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~17_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~1_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~16_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~15_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~13_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~4_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~51feeder_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~51_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~307_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~16_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[13]~13_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~50_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~306_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~10_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[12]~12_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~33_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~303_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~13_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~7_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \port_map_ula|Mux8~1_combout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[11]~11_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~301_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[10]~10_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~31_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~300_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~4_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \port_map_ula|Mux10~1_combout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~30_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~297_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \port_map_ula|Mux13~0_combout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[6]~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~27_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~291_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux13~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux13~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[5]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~26_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~289_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~4_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[4]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~287_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux15~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux15~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux15~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[3]~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~284_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~285_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux16~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux16~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux16~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~282_combout\ : std_logic;
SIGNAL \port_map_ula|Mux17~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux17~1_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~280_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux18~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux18~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux18~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~277_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux19~0_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[7]~7_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~44_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~293_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~7_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~1_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|Sout[8]~8_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~294_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~8_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~5_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~3_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~4_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_ula|IN_BRANCH_HELPER~combout\ : std_logic;
SIGNAL \port_map_ula|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_ula|s_zero~combout\ : std_logic;
SIGNAL \port_map_mult3_2X1_jump|Sout[3]~0_combout\ : std_logic;
SIGNAL \port_map_mult3_2X1_jump|Sout[0]~1_combout\ : std_logic;
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
SIGNAL \port_map_rom|rom_memory~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~18_combout\ : std_logic;
SIGNAL \port_map_ula|Mux20~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mux20~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~311_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~312_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~313_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~314_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~315_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~316_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~317_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~318_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~319_combout\ : std_logic;
SIGNAL \port_map_pc|outPort\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|OP1|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~16_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~307_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~35_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~51_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~15_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~305_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~50_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~14_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~6_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~13_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~303_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~33_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~49_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~12_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~302_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~48_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~11_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~9_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~300_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~299_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~31_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~47_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~9_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~298_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~30_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~46_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~7_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[8]~7_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~296_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~295_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~294_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~45_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~293_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~28_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~44_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~6_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~27_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~43_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~5_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~26_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~42_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~287_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~41_q\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~14_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~13_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~285_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~24_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~40_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_S\ : std_logic_vector(15 DOWNTO 2);
SIGNAL \port_map_ula|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~39_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~38_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~21_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~37_q\ : std_logic;
SIGNAL \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~12_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~11_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~10_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~9_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~8_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~6_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_addr|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_addr|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_addr|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_addr|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_IN_BRANCH_HELPER~combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_s_zero~combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~8_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~16_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~15_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_mult3_2X1_jump|ALT_INV_Sout[3]~0_combout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|ALT_INV_Sout[14]~14_combout\ : std_logic;
SIGNAL \port_map_mult4_2x1_ram_ula|ALT_INV_Sout[9]~9_combout\ : std_logic;
SIGNAL \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~14_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~18_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~17_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~310_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[15]~14_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~309_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~36_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~52_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~13_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\ : std_logic;

BEGIN

ww_clock <= clock;
outPc <= ww_outPc;
outRam <= ww_outRam;
outRom <= ww_outRom;
outUla <= ww_outUla;
ula_overflow_out <= ww_ula_overflow_out;
out_br_regA <= ww_out_br_regA;
out_br_regB <= ww_out_br_regB;
out_opcode <= ww_out_opcode;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
out_rd <= ww_out_rd;
out_endereco <= ww_out_endereco;
out_out_mult4_2X1_ram_ula <= ww_out_out_mult4_2X1_ram_ula;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \port_map_ula|Mux4~1_combout\ & 
\port_map_ula|Mux5~1_combout\ & \port_map_ula|Mux6~0_combout\ & \port_map_ula|Mux7~7_combout\ & \port_map_ula|Mux8~2_combout\ & \port_map_ula|Mux9~4_combout\ & \port_map_ula|Mux10~2_combout\ & \port_map_ula|Mux11~2_combout\ & 
\port_map_ula|Mux12~2_combout\ & \port_map_ula|Mux13~2_combout\ & \port_map_ula|Mux14~4_combout\ & \port_map_ula|Mux15~2_combout\ & \port_map_ula|Mux16~2_combout\ & \port_map_ula|Mux17~1_combout\ & \port_map_ula|Mux18~2_combout\ & 
\port_map_ula|Mux19~0_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~5_combout\ & \port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~5_combout\ & \port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

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
\port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~11_combout\;
\port_map_ula|OP1|ALT_INV_C~16_combout\ <= NOT \port_map_ula|OP1|C~16_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~308_combout\ <= NOT \port_map_banco_de_registradores|registradores~308_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~307_combout\ <= NOT \port_map_banco_de_registradores|registradores~307_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~35_q\ <= NOT \port_map_banco_de_registradores|registradores~35_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~51_q\ <= NOT \port_map_banco_de_registradores|registradores~51_q\;
\port_map_ula|ALT_INV_Mux6~0_combout\ <= NOT \port_map_ula|Mux6~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[13]~12_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~10_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~10_combout\;
\port_map_ula|OP1|ALT_INV_C~15_combout\ <= NOT \port_map_ula|OP1|C~15_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~306_combout\ <= NOT \port_map_banco_de_registradores|registradores~306_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~305_combout\ <= NOT \port_map_banco_de_registradores|registradores~305_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~34_q\ <= NOT \port_map_banco_de_registradores|registradores~34_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~50_q\ <= NOT \port_map_banco_de_registradores|registradores~50_q\;
\port_map_ula|OP1|ALT_INV_C~14_combout\ <= NOT \port_map_ula|OP1|C~14_combout\;
\port_map_ula|ALT_INV_Mux7~6_combout\ <= NOT \port_map_ula|Mux7~6_combout\;
\port_map_ula|ALT_INV_Mux7~5_combout\ <= NOT \port_map_ula|Mux7~5_combout\;
\port_map_ula|ALT_INV_Mux7~4_combout\ <= NOT \port_map_ula|Mux7~4_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~9_combout\;
\port_map_ula|OP1|ALT_INV_C~13_combout\ <= NOT \port_map_ula|OP1|C~13_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~304_combout\ <= NOT \port_map_banco_de_registradores|registradores~304_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~303_combout\ <= NOT \port_map_banco_de_registradores|registradores~303_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~33_q\ <= NOT \port_map_banco_de_registradores|registradores~33_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~49_q\ <= NOT \port_map_banco_de_registradores|registradores~49_q\;
\port_map_ula|ALT_INV_Mux8~1_combout\ <= NOT \port_map_ula|Mux8~1_combout\;
\port_map_ula|OP1|ALT_INV_C~12_combout\ <= NOT \port_map_ula|OP1|C~12_combout\;
\port_map_ula|ALT_INV_Mux8~0_combout\ <= NOT \port_map_ula|Mux8~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~8_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~302_combout\ <= NOT \port_map_banco_de_registradores|registradores~302_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~301_combout\ <= NOT \port_map_banco_de_registradores|registradores~301_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~32_q\ <= NOT \port_map_banco_de_registradores|registradores~32_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~48_q\ <= NOT \port_map_banco_de_registradores|registradores~48_q\;
\port_map_ula|ALT_INV_Mux9~4_combout\ <= NOT \port_map_ula|Mux9~4_combout\;
\port_map_ula|ALT_INV_Mux9~3_combout\ <= NOT \port_map_ula|Mux9~3_combout\;
\port_map_ula|ALT_INV_Mux9~2_combout\ <= NOT \port_map_ula|Mux9~2_combout\;
\port_map_ula|ALT_INV_Mux9~1_combout\ <= NOT \port_map_ula|Mux9~1_combout\;
\port_map_ula|OP1|ALT_INV_C~11_combout\ <= NOT \port_map_ula|OP1|C~11_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~9_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[10]~9_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~300_combout\ <= NOT \port_map_banco_de_registradores|registradores~300_combout\;
\port_map_ula|ALT_INV_Mux9~0_combout\ <= NOT \port_map_ula|Mux9~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~299_combout\ <= NOT \port_map_banco_de_registradores|registradores~299_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~31_q\ <= NOT \port_map_banco_de_registradores|registradores~31_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~47_q\ <= NOT \port_map_banco_de_registradores|registradores~47_q\;
\port_map_ula|ALT_INV_Mux10~1_combout\ <= NOT \port_map_ula|Mux10~1_combout\;
\port_map_ula|OP1|ALT_INV_C~10_combout\ <= NOT \port_map_ula|OP1|C~10_combout\;
\port_map_ula|OP1|ALT_INV_C~9_combout\ <= NOT \port_map_ula|OP1|C~9_combout\;
\port_map_ula|ALT_INV_Mux10~0_combout\ <= NOT \port_map_ula|Mux10~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~7_combout\;
\port_map_ula|OP1|ALT_INV_C~8_combout\ <= NOT \port_map_ula|OP1|C~8_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~6_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~298_combout\ <= NOT \port_map_banco_de_registradores|registradores~298_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~297_combout\ <= NOT \port_map_banco_de_registradores|registradores~297_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~30_q\ <= NOT \port_map_banco_de_registradores|registradores~30_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~46_q\ <= NOT \port_map_banco_de_registradores|registradores~46_q\;
\port_map_ula|ALT_INV_Mux11~1_combout\ <= NOT \port_map_ula|Mux11~1_combout\;
\port_map_ula|OP1|ALT_INV_C~7_combout\ <= NOT \port_map_ula|OP1|C~7_combout\;
\port_map_ula|ALT_INV_Mux11~0_combout\ <= NOT \port_map_ula|Mux11~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~5_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[8]~7_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[8]~7_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~296_combout\ <= NOT \port_map_banco_de_registradores|registradores~296_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~295_combout\ <= NOT \port_map_banco_de_registradores|registradores~295_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~294_combout\ <= NOT \port_map_banco_de_registradores|registradores~294_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~29_q\ <= NOT \port_map_banco_de_registradores|registradores~29_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~45_q\ <= NOT \port_map_banco_de_registradores|registradores~45_q\;
\port_map_ula|ALT_INV_Mux12~1_combout\ <= NOT \port_map_ula|Mux12~1_combout\;
\port_map_ula|ALT_INV_Mux12~0_combout\ <= NOT \port_map_ula|Mux12~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~293_combout\ <= NOT \port_map_banco_de_registradores|registradores~293_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~292_combout\ <= NOT \port_map_banco_de_registradores|registradores~292_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~28_q\ <= NOT \port_map_banco_de_registradores|registradores~28_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~44_q\ <= NOT \port_map_banco_de_registradores|registradores~44_q\;
\port_map_ula|ALT_INV_Mux13~1_combout\ <= NOT \port_map_ula|Mux13~1_combout\;
\port_map_ula|OP1|ALT_INV_C~6_combout\ <= NOT \port_map_ula|OP1|C~6_combout\;
\port_map_ula|ALT_INV_Mux13~0_combout\ <= NOT \port_map_ula|Mux13~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~4_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~291_combout\ <= NOT \port_map_banco_de_registradores|registradores~291_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~290_combout\ <= NOT \port_map_banco_de_registradores|registradores~290_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~27_q\ <= NOT \port_map_banco_de_registradores|registradores~27_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~43_q\ <= NOT \port_map_banco_de_registradores|registradores~43_q\;
\port_map_ula|ALT_INV_Mux14~4_combout\ <= NOT \port_map_ula|Mux14~4_combout\;
\port_map_ula|ALT_INV_Mux14~3_combout\ <= NOT \port_map_ula|Mux14~3_combout\;
\port_map_ula|ALT_INV_Mux14~2_combout\ <= NOT \port_map_ula|Mux14~2_combout\;
\port_map_ula|ALT_INV_Mux14~1_combout\ <= NOT \port_map_ula|Mux14~1_combout\;
\port_map_ula|OP1|ALT_INV_C~5_combout\ <= NOT \port_map_ula|OP1|C~5_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~289_combout\ <= NOT \port_map_banco_de_registradores|registradores~289_combout\;
\port_map_ula|ALT_INV_Mux14~0_combout\ <= NOT \port_map_ula|Mux14~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~288_combout\ <= NOT \port_map_banco_de_registradores|registradores~288_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~26_q\ <= NOT \port_map_banco_de_registradores|registradores~26_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~42_q\ <= NOT \port_map_banco_de_registradores|registradores~42_q\;
\port_map_ula|ALT_INV_Mux15~2_combout\ <= NOT \port_map_ula|Mux15~2_combout\;
\port_map_ula|ALT_INV_Mux15~1_combout\ <= NOT \port_map_ula|Mux15~1_combout\;
\port_map_ula|OP1|ALT_INV_C~4_combout\ <= NOT \port_map_ula|OP1|C~4_combout\;
\port_map_ula|OP1|ALT_INV_C~3_combout\ <= NOT \port_map_ula|OP1|C~3_combout\;
\port_map_ula|ALT_INV_Mux15~0_combout\ <= NOT \port_map_ula|Mux15~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~3_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~2_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~287_combout\ <= NOT \port_map_banco_de_registradores|registradores~287_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~286_combout\ <= NOT \port_map_banco_de_registradores|registradores~286_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~25_q\ <= NOT \port_map_banco_de_registradores|registradores~25_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~41_q\ <= NOT \port_map_banco_de_registradores|registradores~41_q\;
\port_map_rom|ALT_INV_rom_memory~14_combout\ <= NOT \port_map_rom|rom_memory~14_combout\;
\port_map_rom|ALT_INV_rom_memory~13_combout\ <= NOT \port_map_rom|rom_memory~13_combout\;
\port_map_ula|ALT_INV_Mux16~2_combout\ <= NOT \port_map_ula|Mux16~2_combout\;
\port_map_ula|ALT_INV_Mux16~1_combout\ <= NOT \port_map_ula|Mux16~1_combout\;
\port_map_ula|OP1|ALT_INV_C~2_combout\ <= NOT \port_map_ula|OP1|C~2_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~285_combout\ <= NOT \port_map_banco_de_registradores|registradores~285_combout\;
\port_map_ula|ALT_INV_Mux16~0_combout\ <= NOT \port_map_ula|Mux16~0_combout\;
\port_map_ula|OP1|ALT_INV_C~1_combout\ <= NOT \port_map_ula|OP1|C~1_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~284_combout\ <= NOT \port_map_banco_de_registradores|registradores~284_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~283_combout\ <= NOT \port_map_banco_de_registradores|registradores~283_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~24_q\ <= NOT \port_map_banco_de_registradores|registradores~24_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~40_q\ <= NOT \port_map_banco_de_registradores|registradores~40_q\;
\port_map_ula|ALT_INV_Mux17~1_combout\ <= NOT \port_map_ula|Mux17~1_combout\;
\port_map_ula|OP1|ALT_INV_S\(2) <= NOT \port_map_ula|OP1|S\(2);
\port_map_ula|ALT_INV_Mux17~0_combout\ <= NOT \port_map_ula|Mux17~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~1_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~282_combout\ <= NOT \port_map_banco_de_registradores|registradores~282_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~281_combout\ <= NOT \port_map_banco_de_registradores|registradores~281_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~23_q\ <= NOT \port_map_banco_de_registradores|registradores~23_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~39_q\ <= NOT \port_map_banco_de_registradores|registradores~39_q\;
\port_map_ula|ALT_INV_Mux18~2_combout\ <= NOT \port_map_ula|Mux18~2_combout\;
\port_map_ula|ALT_INV_Mux18~1_combout\ <= NOT \port_map_ula|Mux18~1_combout\;
\port_map_ula|OP1|ALT_INV_C~0_combout\ <= NOT \port_map_ula|OP1|C~0_combout\;
\port_map_ula|ALT_INV_Mux7~3_combout\ <= NOT \port_map_ula|Mux7~3_combout\;
\port_map_ula|ALT_INV_Mux7~2_combout\ <= NOT \port_map_ula|Mux7~2_combout\;
\port_map_ula|ALT_INV_Mux7~1_combout\ <= NOT \port_map_ula|Mux7~1_combout\;
\port_map_ula|ALT_INV_Mux18~0_combout\ <= NOT \port_map_ula|Mux18~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~280_combout\ <= NOT \port_map_banco_de_registradores|registradores~280_combout\;
\port_map_ula|ALT_INV_Mux7~0_combout\ <= NOT \port_map_ula|Mux7~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~279_combout\ <= NOT \port_map_banco_de_registradores|registradores~279_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~22_q\ <= NOT \port_map_banco_de_registradores|registradores~22_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~38_q\ <= NOT \port_map_banco_de_registradores|registradores~38_q\;
\port_map_ula|ALT_INV_Mux19~0_combout\ <= NOT \port_map_ula|Mux19~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~278_combout\ <= NOT \port_map_banco_de_registradores|registradores~278_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~277_combout\ <= NOT \port_map_banco_de_registradores|registradores~277_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~21_q\ <= NOT \port_map_banco_de_registradores|registradores~21_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~37_q\ <= NOT \port_map_banco_de_registradores|registradores~37_q\;
\port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\ <= NOT \port_map_unidade_de_controle|Mux9~0_combout\;
\port_map_rom|ALT_INV_rom_memory~12_combout\ <= NOT \port_map_rom|rom_memory~12_combout\;
\port_map_rom|ALT_INV_rom_memory~11_combout\ <= NOT \port_map_rom|rom_memory~11_combout\;
\port_map_rom|ALT_INV_rom_memory~10_combout\ <= NOT \port_map_rom|rom_memory~10_combout\;
\port_map_rom|ALT_INV_rom_memory~9_combout\ <= NOT \port_map_rom|rom_memory~9_combout\;
\port_map_rom|ALT_INV_rom_memory~8_combout\ <= NOT \port_map_rom|rom_memory~8_combout\;
\port_map_rom|ALT_INV_rom_memory~6_combout\ <= NOT \port_map_rom|rom_memory~6_combout\;
\port_map_rom|ALT_INV_rom_memory~5_combout\ <= NOT \port_map_rom|rom_memory~5_combout\;
\port_map_rom|ALT_INV_rom_memory~4_combout\ <= NOT \port_map_rom|rom_memory~4_combout\;
\port_map_rom|ALT_INV_rom_memory~3_combout\ <= NOT \port_map_rom|rom_memory~3_combout\;
\port_map_rom|ALT_INV_rom_memory~2_combout\ <= NOT \port_map_rom|rom_memory~2_combout\;
\port_map_rom|ALT_INV_rom_memory~1_combout\ <= NOT \port_map_rom|rom_memory~1_combout\;
\port_map_rom|ALT_INV_rom_memory~0_combout\ <= NOT \port_map_rom|rom_memory~0_combout\;
\port_map_pc|ALT_INV_outPort\(3) <= NOT \port_map_pc|outPort\(3);
\port_map_pc|ALT_INV_outPort\(2) <= NOT \port_map_pc|outPort\(2);
\port_map_pc|ALT_INV_outPort\(1) <= NOT \port_map_pc|outPort\(1);
\port_map_pc|ALT_INV_outPort\(0) <= NOT \port_map_pc|outPort\(0);
\port_map_addr|ALT_INV_Add0~13_sumout\ <= NOT \port_map_addr|Add0~13_sumout\;
\port_map_addr|ALT_INV_Add0~9_sumout\ <= NOT \port_map_addr|Add0~9_sumout\;
\port_map_addr|ALT_INV_Add0~5_sumout\ <= NOT \port_map_addr|Add0~5_sumout\;
\port_map_addr|ALT_INV_Add0~1_sumout\ <= NOT \port_map_addr|Add0~1_sumout\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\;
\port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\;
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
\port_map_ula|ALT_INV_IN_BRANCH_HELPER~combout\ <= NOT \port_map_ula|IN_BRANCH_HELPER~combout\;
\port_map_ula|ALT_INV_s_zero~combout\ <= NOT \port_map_ula|s_zero~combout\;
\port_map_ula|ALT_INV_Mux7~8_combout\ <= NOT \port_map_ula|Mux7~8_combout\;
\port_map_ula|ALT_INV_Mux6~1_combout\ <= NOT \port_map_ula|Mux6~1_combout\;
\port_map_ula|ALT_INV_Mux5~4_combout\ <= NOT \port_map_ula|Mux5~4_combout\;
\port_map_ula|ALT_INV_Mux4~2_combout\ <= NOT \port_map_ula|Mux4~2_combout\;
\port_map_ula|ALT_INV_Mux5~3_combout\ <= NOT \port_map_ula|Mux5~3_combout\;
\port_map_ula|ALT_INV_Mux5~2_combout\ <= NOT \port_map_ula|Mux5~2_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~16_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~16_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~15_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~15_combout\;
\port_map_ula|ALT_INV_Equal0~5_combout\ <= NOT \port_map_ula|Equal0~5_combout\;
\port_map_ula|ALT_INV_Equal0~4_combout\ <= NOT \port_map_ula|Equal0~4_combout\;
\port_map_ula|ALT_INV_Equal0~3_combout\ <= NOT \port_map_ula|Equal0~3_combout\;
\port_map_ula|ALT_INV_Equal0~2_combout\ <= NOT \port_map_ula|Equal0~2_combout\;
\port_map_ula|ALT_INV_Mux2~0_combout\ <= NOT \port_map_ula|Mux2~0_combout\;
\port_map_ula|ALT_INV_Equal0~1_combout\ <= NOT \port_map_ula|Equal0~1_combout\;
\port_map_ula|ALT_INV_Equal0~0_combout\ <= NOT \port_map_ula|Equal0~0_combout\;
\port_map_ula|ALT_INV_Mux0~0_combout\ <= NOT \port_map_ula|Mux0~0_combout\;
\port_map_mult3_2X1_jump|ALT_INV_Sout[3]~0_combout\ <= NOT \port_map_mult3_2X1_jump|Sout[3]~0_combout\;
\port_map_mult4_2x1_ram_ula|ALT_INV_Sout[14]~14_combout\ <= NOT \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\;
\port_map_mult4_2x1_ram_ula|ALT_INV_Sout[9]~9_combout\ <= NOT \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\;
\port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\ <= NOT \port_map_unidade_de_controle|Mux7~0_combout\;
\port_map_ula|ALT_INV_Mux20~0_combout\ <= NOT \port_map_ula|Mux20~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~14_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~14_combout\;
\port_map_ula|OP1|ALT_INV_C~18_combout\ <= NOT \port_map_ula|OP1|C~18_combout\;
\port_map_ula|ALT_INV_Mux4~0_combout\ <= NOT \port_map_ula|Mux4~0_combout\;
\port_map_ula|OP1|ALT_INV_S\(15) <= NOT \port_map_ula|OP1|S\(15);
\port_map_ula|OP1|ALT_INV_C~17_combout\ <= NOT \port_map_ula|OP1|C~17_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~310_combout\ <= NOT \port_map_banco_de_registradores|registradores~310_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[15]~14_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~309_combout\ <= NOT \port_map_banco_de_registradores|registradores~309_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~36_q\ <= NOT \port_map_banco_de_registradores|registradores~36_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~52_q\ <= NOT \port_map_banco_de_registradores|registradores~52_q\;
\port_map_ula|ALT_INV_Mux5~0_combout\ <= NOT \port_map_ula|Mux5~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~13_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~13_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~12_combout\;

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N19
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

-- Location: IOOBUF_X30_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N59
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X34_Y81_N93
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X8_Y0_N53
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

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X4_Y0_N36
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X4_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X89_Y8_N22
\outRom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => ww_outRom(1));

-- Location: IOOBUF_X68_Y0_N19
\outRom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_outRom(2));

-- Location: IOOBUF_X40_Y81_N36
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

-- Location: IOOBUF_X6_Y0_N53
\outRom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => ww_outRom(4));

-- Location: IOOBUF_X70_Y81_N2
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

-- Location: IOOBUF_X80_Y81_N2
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

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X89_Y35_N79
\outRom[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~7_combout\,
	devoe => ww_devoe,
	o => ww_outRom(8));

-- Location: IOOBUF_X72_Y81_N2
\outRom[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(9));

-- Location: IOOBUF_X88_Y81_N20
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

-- Location: IOOBUF_X88_Y81_N37
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

-- Location: IOOBUF_X89_Y9_N22
\outRom[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	devoe => ww_devoe,
	o => ww_outRom(12));

-- Location: IOOBUF_X52_Y0_N2
\outRom[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~10_combout\,
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
	i => \port_map_rom|rom_memory~12_combout\,
	devoe => ww_devoe,
	o => ww_outRom(14));

-- Location: IOOBUF_X72_Y0_N2
\outRom[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_outRom(15));

-- Location: IOOBUF_X66_Y0_N76
\outUla[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(0));

-- Location: IOOBUF_X60_Y0_N2
\outUla[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux18~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(1));

-- Location: IOOBUF_X56_Y0_N53
\outUla[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux17~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(2));

-- Location: IOOBUF_X68_Y0_N53
\outUla[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux16~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(3));

-- Location: IOOBUF_X89_Y4_N62
\outUla[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux15~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(4));

-- Location: IOOBUF_X26_Y81_N59
\outUla[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_outUla(5));

-- Location: IOOBUF_X6_Y0_N36
\outUla[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux13~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(6));

-- Location: IOOBUF_X26_Y81_N76
\outUla[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux12~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(7));

-- Location: IOOBUF_X8_Y0_N36
\outUla[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(8));

-- Location: IOOBUF_X56_Y0_N2
\outUla[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux10~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(9));

-- Location: IOOBUF_X54_Y0_N36
\outUla[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_outUla(10));

-- Location: IOOBUF_X68_Y0_N36
\outUla[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~2_combout\,
	devoe => ww_devoe,
	o => ww_outUla(11));

-- Location: IOOBUF_X4_Y0_N2
\outUla[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~7_combout\,
	devoe => ww_devoe,
	o => ww_outUla(12));

-- Location: IOOBUF_X8_Y0_N2
\outUla[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(13));

-- Location: IOOBUF_X54_Y0_N53
\outUla[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(14));

-- Location: IOOBUF_X89_Y6_N5
\outUla[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(15));

-- Location: IOOBUF_X34_Y0_N42
\ula_overflow_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux20~1_combout\,
	devoe => ww_devoe,
	o => ww_ula_overflow_out);

-- Location: IOOBUF_X32_Y0_N2
\out_br_regA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~278_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(0));

-- Location: IOOBUF_X34_Y0_N93
\out_br_regA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~279_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(1));

-- Location: IOOBUF_X28_Y0_N2
\out_br_regA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~282_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(2));

-- Location: IOOBUF_X38_Y0_N2
\out_br_regA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~283_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(3));

-- Location: IOOBUF_X32_Y0_N53
\out_br_regA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~286_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(4));

-- Location: IOOBUF_X32_Y0_N36
\out_br_regA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~288_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(5));

-- Location: IOOBUF_X28_Y0_N53
\out_br_regA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~290_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(6));

-- Location: IOOBUF_X28_Y0_N36
\out_br_regA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~292_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(7));

-- Location: IOOBUF_X28_Y0_N19
\out_br_regA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~294_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(8));

-- Location: IOOBUF_X26_Y0_N59
\out_br_regA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~297_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(9));

-- Location: IOOBUF_X60_Y0_N36
\out_br_regA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~299_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(10));

-- Location: IOOBUF_X26_Y0_N42
\out_br_regA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~301_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(11));

-- Location: IOOBUF_X26_Y0_N76
\out_br_regA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~304_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(12));

-- Location: IOOBUF_X30_Y0_N53
\out_br_regA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~306_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(13));

-- Location: IOOBUF_X30_Y0_N36
\out_br_regA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~308_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(14));

-- Location: IOOBUF_X52_Y0_N36
\out_br_regA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~310_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(15));

-- Location: IOOBUF_X40_Y0_N2
\out_br_regB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~311_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(0));

-- Location: IOOBUF_X52_Y0_N19
\out_br_regB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~312_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(1));

-- Location: IOOBUF_X89_Y6_N39
\out_br_regB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~313_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(2));

-- Location: IOOBUF_X64_Y0_N53
\out_br_regB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~285_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(3));

-- Location: IOOBUF_X89_Y9_N56
\out_br_regB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~314_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(4));

-- Location: IOOBUF_X34_Y81_N76
\out_br_regB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~315_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(5));

-- Location: IOOBUF_X40_Y0_N53
\out_br_regB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~316_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(6));

-- Location: IOOBUF_X36_Y0_N2
\out_br_regB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~317_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(7));

-- Location: IOOBUF_X6_Y0_N2
\out_br_regB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~296_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(8));

-- Location: IOOBUF_X50_Y0_N76
\out_br_regB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~318_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(9));

-- Location: IOOBUF_X50_Y0_N93
\out_br_regB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~319_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(10));

-- Location: IOOBUF_X26_Y0_N93
\out_br_regB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~302_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(11));

-- Location: IOOBUF_X64_Y0_N2
\out_br_regB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~303_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(12));

-- Location: IOOBUF_X38_Y0_N36
\out_br_regB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~305_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(13));

-- Location: IOOBUF_X89_Y8_N39
\out_br_regB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~307_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(14));

-- Location: IOOBUF_X28_Y81_N2
\out_br_regB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~309_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(15));

-- Location: IOOBUF_X89_Y9_N39
\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(0));

-- Location: IOOBUF_X52_Y0_N53
\out_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~10_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(1));

-- Location: IOOBUF_X66_Y0_N59
\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~12_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(2));

-- Location: IOOBUF_X72_Y0_N53
\out_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(3));

-- Location: IOOBUF_X89_Y35_N45
\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~7_combout\,
	devoe => ww_devoe,
	o => ww_out_rs(0));

-- Location: IOOBUF_X60_Y81_N19
\out_rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rs(1));

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X62_Y81_N2
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

-- Location: IOOBUF_X6_Y0_N19
\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => ww_out_rt(0));

-- Location: IOOBUF_X82_Y81_N93
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

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X52_Y81_N53
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

-- Location: IOOBUF_X70_Y0_N2
\out_rd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => ww_out_rd(0));

-- Location: IOOBUF_X89_Y8_N56
\out_rd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => ww_out_rd(1));

-- Location: IOOBUF_X72_Y0_N36
\out_rd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_out_rd(2));

-- Location: IOOBUF_X66_Y81_N93
\out_rd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rd(3));

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X89_Y4_N79
\out_endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(1));

-- Location: IOOBUF_X68_Y0_N2
\out_endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(2));

-- Location: IOOBUF_X52_Y81_N19
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

-- Location: IOOBUF_X72_Y81_N19
\out_endereco[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(4));

-- Location: IOOBUF_X84_Y81_N19
\out_endereco[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(5));

-- Location: IOOBUF_X89_Y38_N5
\out_endereco[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(6));

-- Location: IOOBUF_X76_Y81_N19
\out_endereco[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(7));

-- Location: IOOBUF_X50_Y81_N42
\out_endereco[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(8));

-- Location: IOOBUF_X82_Y81_N42
\out_endereco[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(9));

-- Location: IOOBUF_X38_Y81_N53
\out_endereco[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(10));

-- Location: IOOBUF_X34_Y81_N59
\out_endereco[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(11));

-- Location: IOOBUF_X66_Y81_N59
\out_endereco[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(12));

-- Location: IOOBUF_X36_Y81_N53
\out_endereco[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(13));

-- Location: IOOBUF_X30_Y81_N36
\out_endereco[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(14));

-- Location: IOOBUF_X32_Y81_N36
\out_endereco[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_endereco(15));

-- Location: IOOBUF_X64_Y0_N19
\out_out_mult4_2X1_ram_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(0));

-- Location: IOOBUF_X40_Y0_N19
\out_out_mult4_2X1_ram_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(1));

-- Location: IOOBUF_X62_Y0_N53
\out_out_mult4_2X1_ram_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(2));

-- Location: IOOBUF_X64_Y0_N36
\out_out_mult4_2X1_ram_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(3));

-- Location: IOOBUF_X66_Y0_N42
\out_out_mult4_2X1_ram_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(4));

-- Location: IOOBUF_X62_Y0_N19
\out_out_mult4_2X1_ram_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(5));

-- Location: IOOBUF_X26_Y81_N93
\out_out_mult4_2X1_ram_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(6));

-- Location: IOOBUF_X4_Y0_N19
\out_out_mult4_2X1_ram_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(7));

-- Location: IOOBUF_X26_Y81_N42
\out_out_mult4_2X1_ram_ula[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(8));

-- Location: IOOBUF_X50_Y0_N42
\out_out_mult4_2X1_ram_ula[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(9));

-- Location: IOOBUF_X58_Y0_N59
\out_out_mult4_2X1_ram_ula[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(10));

-- Location: IOOBUF_X2_Y0_N76
\out_out_mult4_2X1_ram_ula[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(11));

-- Location: IOOBUF_X2_Y0_N59
\out_out_mult4_2X1_ram_ula[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(12));

-- Location: IOOBUF_X56_Y0_N36
\out_out_mult4_2X1_ram_ula[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(13));

-- Location: IOOBUF_X89_Y9_N5
\out_out_mult4_2X1_ram_ula[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(14));

-- Location: IOOBUF_X60_Y0_N53
\out_out_mult4_2X1_ram_ula[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult4_2x1_ram_ula|Sout[15]~15_combout\,
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

-- Location: LABCELL_X30_Y5_N0
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

-- Location: LABCELL_X30_Y5_N3
\port_map_addr|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~5_sumout\ = SUM(( \port_map_pc|outPort\(1) ) + ( GND ) + ( \port_map_addr|Add0~2\ ))
-- \port_map_addr|Add0~6\ = CARRY(( \port_map_pc|outPort\(1) ) + ( GND ) + ( \port_map_addr|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(1),
	cin => \port_map_addr|Add0~2\,
	sumout => \port_map_addr|Add0~5_sumout\,
	cout => \port_map_addr|Add0~6\);

-- Location: LABCELL_X30_Y5_N6
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

-- Location: LABCELL_X29_Y7_N30
\port_map_mult3_2X1_jump|Sout[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult3_2X1_jump|Sout[2]~3_combout\ = ( \port_map_addr|Add0~9_sumout\ & ( \port_map_rom|rom_memory~5_combout\ ) ) # ( !\port_map_addr|Add0~9_sumout\ & ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_mult3_2X1_jump|Sout[3]~0_combout\ ) ) ) # ( 
-- \port_map_addr|Add0~9_sumout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_mult3_2X1_jump|Sout[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_mult3_2X1_jump|ALT_INV_Sout[3]~0_combout\,
	datae => \port_map_addr|ALT_INV_Add0~9_sumout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_mult3_2X1_jump|Sout[2]~3_combout\);

-- Location: FF_X29_Y5_N14
\port_map_pc|outPort[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult3_2X1_jump|Sout[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(2));

-- Location: LABCELL_X30_Y5_N9
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

-- Location: LABCELL_X31_Y6_N0
\port_map_mult3_2X1_jump|Sout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult3_2X1_jump|Sout[3]~4_combout\ = ( !\port_map_mult3_2X1_jump|Sout[3]~0_combout\ & ( \port_map_addr|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_addr|ALT_INV_Add0~13_sumout\,
	dataf => \port_map_mult3_2X1_jump|ALT_INV_Sout[3]~0_combout\,
	combout => \port_map_mult3_2X1_jump|Sout[3]~4_combout\);

-- Location: FF_X29_Y5_N5
\port_map_pc|outPort[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult3_2X1_jump|Sout[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(3));

-- Location: LABCELL_X30_Y5_N12
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

-- Location: FF_X30_Y5_N14
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

-- Location: LABCELL_X30_Y5_N15
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

-- Location: FF_X30_Y5_N17
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

-- Location: LABCELL_X30_Y5_N18
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

-- Location: FF_X30_Y5_N20
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

-- Location: LABCELL_X30_Y5_N21
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

-- Location: FF_X30_Y5_N23
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

-- Location: LABCELL_X29_Y5_N21
\port_map_rom|rom_memory~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~2_combout\ = ( \port_map_pc|outPort\(0) & ( (!\port_map_pc|outPort\(1) & (\port_map_pc|outPort\(2) & !\port_map_pc|outPort\(3))) ) ) # ( !\port_map_pc|outPort\(0) & ( (!\port_map_pc|outPort\(1) & !\port_map_pc|outPort\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_rom|rom_memory~2_combout\);

-- Location: LABCELL_X30_Y5_N51
\port_map_rom|rom_memory~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~3_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (!\port_map_pc|outPort\(6) & (!\port_map_pc|outPort\(4) & (!\port_map_pc|outPort\(5) & !\port_map_pc|outPort\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(6),
	datab => \port_map_pc|ALT_INV_outPort\(4),
	datac => \port_map_pc|ALT_INV_outPort\(5),
	datad => \port_map_pc|ALT_INV_outPort\(7),
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~3_combout\);

-- Location: LABCELL_X29_Y5_N33
\port_map_mult3_2X1_jump|Sout[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult3_2X1_jump|Sout[1]~2_combout\ = ( \port_map_rom|rom_memory~3_combout\ & ( (\port_map_addr|Add0~5_sumout\) # (\port_map_mult3_2X1_jump|Sout[3]~0_combout\) ) ) # ( !\port_map_rom|rom_memory~3_combout\ & ( 
-- (!\port_map_mult3_2X1_jump|Sout[3]~0_combout\ & \port_map_addr|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult3_2X1_jump|ALT_INV_Sout[3]~0_combout\,
	datad => \port_map_addr|ALT_INV_Add0~5_sumout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_mult3_2X1_jump|Sout[1]~2_combout\);

-- Location: FF_X29_Y5_N35
\port_map_pc|outPort[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_mult3_2X1_jump|Sout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(1));

-- Location: LABCELL_X30_Y5_N54
\port_map_rom|rom_memory~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~4_combout\ = ( !\port_map_pc|outPort\(4) & ( (!\port_map_pc|outPort\(5) & (!\port_map_pc|outPort\(6) & !\port_map_pc|outPort\(7))) ) )

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
	combout => \port_map_rom|rom_memory~4_combout\);

-- Location: LABCELL_X29_Y5_N24
\port_map_rom|rom_memory~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~5_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & (\port_map_pc|outPort\(3) & \port_map_pc|outPort\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_pc|ALT_INV_outPort\(0),
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~5_combout\);

-- Location: LABCELL_X29_Y5_N48
\port_map_rom|rom_memory~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~8_combout\ = ( \port_map_pc|outPort\(1) & ( (!\port_map_pc|outPort\(3) & (!\port_map_pc|outPort\(2) $ (\port_map_pc|outPort\(0)))) ) ) # ( !\port_map_pc|outPort\(1) & ( !\port_map_pc|outPort\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_pc|ALT_INV_outPort\(0),
	dataf => \port_map_pc|ALT_INV_outPort\(1),
	combout => \port_map_rom|rom_memory~8_combout\);

-- Location: LABCELL_X29_Y5_N30
\port_map_rom|rom_memory~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~9_combout\ = ( \port_map_rom|rom_memory~8_combout\ & ( (((\port_map_pc|outPort\(5)) # (\port_map_pc|outPort\(6))) # (\port_map_pc|outPort\(7))) # (\port_map_pc|outPort\(4)) ) ) # ( !\port_map_rom|rom_memory~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(4),
	datab => \port_map_pc|ALT_INV_outPort\(7),
	datac => \port_map_pc|ALT_INV_outPort\(6),
	datad => \port_map_pc|ALT_INV_outPort\(5),
	dataf => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	combout => \port_map_rom|rom_memory~9_combout\);

-- Location: LABCELL_X29_Y5_N0
\port_map_rom|rom_memory~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~10_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_pc|outPort\(2) & (\port_map_pc|outPort\(1) & !\port_map_pc|outPort\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_pc|ALT_INV_outPort\(1),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~10_combout\);

-- Location: LABCELL_X29_Y5_N36
\port_map_rom|rom_memory~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~11_combout\ = ( \port_map_pc|outPort\(0) & ( (\port_map_pc|outPort\(2) & (\port_map_pc|outPort\(1) & !\port_map_pc|outPort\(3))) ) ) # ( !\port_map_pc|outPort\(0) & ( (!\port_map_pc|outPort\(2) & (!\port_map_pc|outPort\(1) & 
-- \port_map_pc|outPort\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_pc|ALT_INV_outPort\(1),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_rom|rom_memory~11_combout\);

-- Location: LABCELL_X29_Y5_N6
\port_map_rom|rom_memory~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~12_combout\ = ( !\port_map_pc|outPort\(6) & ( (\port_map_rom|rom_memory~11_combout\ & (!\port_map_pc|outPort\(7) & (!\port_map_pc|outPort\(5) & !\port_map_pc|outPort\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~11_combout\,
	datab => \port_map_pc|ALT_INV_outPort\(7),
	datac => \port_map_pc|ALT_INV_outPort\(5),
	datad => \port_map_pc|ALT_INV_outPort\(4),
	dataf => \port_map_pc|ALT_INV_outPort\(6),
	combout => \port_map_rom|rom_memory~12_combout\);

-- Location: LABCELL_X29_Y5_N18
\port_map_unidade_de_controle|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_de_controle|Mux9~0_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~12_combout\ & (!\port_map_rom|rom_memory~9_combout\)) # (\port_map_rom|rom_memory~12_combout\ & (\port_map_rom|rom_memory~9_combout\ & 
-- \port_map_rom|rom_memory~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_unidade_de_controle|Mux9~0_combout\);

-- Location: LABCELL_X31_Y5_N3
\port_map_rom|rom_memory~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~14_combout\ = (\port_map_pc|outPort\(0) & !\port_map_pc|outPort\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_pc|ALT_INV_outPort\(1),
	combout => \port_map_rom|rom_memory~14_combout\);

-- Location: LABCELL_X31_Y5_N9
\port_map_ula|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~2_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~12_combout\ $ (!\port_map_rom|rom_memory~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux7~2_combout\);

-- Location: MLABCELL_X28_Y4_N21
\port_map_unidade_de_controle|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_de_controle|Mux7~0_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (\port_map_rom|rom_memory~12_combout\ & (\port_map_rom|rom_memory~9_combout\ & !\port_map_rom|rom_memory~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_unidade_de_controle|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y4_N51
\port_map_ula|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~1_combout\ = ( \port_map_rom|rom_memory~10_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( (\port_map_rom|rom_memory~12_combout\ & \port_map_rom|rom_memory~9_combout\) ) ) ) # ( !\port_map_rom|rom_memory~10_combout\ & ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux7~1_combout\);

-- Location: LABCELL_X31_Y6_N30
\port_map_unidade_de_controle|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_de_controle|Mux8~0_combout\ = ( \port_map_rom|rom_memory~12_combout\ & ( (!\port_map_rom|rom_memory~10_combout\ & (!\port_map_rom|rom_memory~9_combout\ & !\port_map_rom|rom_memory~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	combout => \port_map_unidade_de_controle|Mux8~0_combout\);

-- Location: LABCELL_X30_Y5_N48
\port_map_rom|rom_memory~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~0_combout\ = ( \port_map_pc|outPort\(0) & ( (!\port_map_pc|outPort\(4) & (!\port_map_pc|outPort\(2) & !\port_map_pc|outPort\(3))) ) ) # ( !\port_map_pc|outPort\(0) & ( (!\port_map_pc|outPort\(4) & !\port_map_pc|outPort\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(4),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_rom|rom_memory~0_combout\);

-- Location: LABCELL_X30_Y5_N57
\port_map_rom|rom_memory~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~1_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort\(6) & (!\port_map_pc|outPort\(5) & !\port_map_pc|outPort\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(6),
	datac => \port_map_pc|ALT_INV_outPort\(5),
	datad => \port_map_pc|ALT_INV_outPort\(7),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~1_combout\);

-- Location: LABCELL_X31_Y5_N6
\port_map_banco_de_registradores|registradores~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~320_combout\ = ( \port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~4_combout\) # ((!\port_map_rom|rom_memory~11_combout\ & ((!\port_map_rom|rom_memory~14_combout\) # 
-- (\port_map_pc|outPort\(2))))) ) ) # ( !\port_map_rom|rom_memory~8_combout\ & ( ((!\port_map_rom|rom_memory~14_combout\) # (!\port_map_rom|rom_memory~4_combout\)) # (\port_map_pc|outPort\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111100001111110111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datab => \port_map_rom|ALT_INV_rom_memory~14_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~11_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	combout => \port_map_banco_de_registradores|registradores~320_combout\);

-- Location: FF_X31_Y5_N35
\port_map_banco_de_registradores|registradores~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[0]~0_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~21_q\);

-- Location: LABCELL_X31_Y5_N18
\port_map_banco_de_registradores|registradores~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~278_combout\ = ( \port_map_banco_de_registradores|registradores~37_q\ & ( \port_map_banco_de_registradores|registradores~21_q\ ) ) # ( !\port_map_banco_de_registradores|registradores~37_q\ & ( 
-- \port_map_banco_de_registradores|registradores~21_q\ & ( ((!\port_map_pc|outPort\(0)) # ((!\port_map_rom|rom_memory~4_combout\) # (\port_map_pc|outPort\(1)))) # (\port_map_pc|outPort\(2)) ) ) ) # ( \port_map_banco_de_registradores|registradores~37_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~21_q\ & ( (!\port_map_pc|outPort\(2) & (\port_map_pc|outPort\(0) & (\port_map_rom|rom_memory~4_combout\ & !\port_map_pc|outPort\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datab => \port_map_pc|ALT_INV_outPort\(0),
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	combout => \port_map_banco_de_registradores|registradores~278_combout\);

-- Location: LABCELL_X29_Y5_N57
\port_map_ula|OP1|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~0_combout\ = ( \port_map_banco_de_registradores|registradores~278_combout\ & ( (!\port_map_unidade_de_controle|Mux9~0_combout\ & (((!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~277_combout\)))) 
-- # (\port_map_unidade_de_controle|Mux9~0_combout\ & (\port_map_rom|rom_memory~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101110001010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	combout => \port_map_ula|OP1|C~0_combout\);

-- Location: MLABCELL_X28_Y4_N39
\port_map_ula|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~3_combout\ = ( \port_map_rom|rom_memory~10_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~12_combout\) # (!\port_map_rom|rom_memory~9_combout\) ) ) ) # ( !\port_map_rom|rom_memory~10_combout\ & ( 
-- !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux7~3_combout\);

-- Location: MLABCELL_X28_Y4_N18
\port_map_ula|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~0_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (\port_map_rom|rom_memory~12_combout\ & ((!\port_map_rom|rom_memory~9_combout\) # (!\port_map_rom|rom_memory~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux7~0_combout\);

-- Location: LABCELL_X31_Y5_N24
\port_map_banco_de_registradores|registradores~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~321_combout\ = ( \port_map_pc|outPort\(0) & ( (\port_map_rom|rom_memory~4_combout\ & (!\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & !\port_map_pc|outPort\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	dataf => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_banco_de_registradores|registradores~321_combout\);

-- Location: FF_X31_Y5_N2
\port_map_banco_de_registradores|registradores~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[1]~1_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~38_q\);

-- Location: LABCELL_X31_Y5_N21
\port_map_banco_de_registradores|registradores~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~279_combout\ = ( \port_map_banco_de_registradores|registradores~38_q\ & ( \port_map_banco_de_registradores|registradores~22_q\ ) ) # ( !\port_map_banco_de_registradores|registradores~38_q\ & ( 
-- \port_map_banco_de_registradores|registradores~22_q\ & ( ((!\port_map_pc|outPort\(0)) # ((!\port_map_rom|rom_memory~4_combout\) # (\port_map_pc|outPort\(1)))) # (\port_map_pc|outPort\(2)) ) ) ) # ( \port_map_banco_de_registradores|registradores~38_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~22_q\ & ( (!\port_map_pc|outPort\(2) & (\port_map_pc|outPort\(0) & (!\port_map_pc|outPort\(1) & \port_map_rom|rom_memory~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000011111111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datab => \port_map_pc|ALT_INV_outPort\(0),
	datac => \port_map_pc|ALT_INV_outPort\(1),
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	combout => \port_map_banco_de_registradores|registradores~279_combout\);

-- Location: MLABCELL_X28_Y6_N18
\port_map_ula|OP2|RESULTADO|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~0_combout\ = ( \port_map_banco_de_registradores|registradores~277_combout\ & ( (!\port_map_banco_de_registradores|registradores~278_combout\ & ((!\port_map_unidade_de_controle|Mux9~0_combout\ & 
-- ((!\port_map_rom|rom_memory~5_combout\))) # (\port_map_unidade_de_controle|Mux9~0_combout\ & (\port_map_rom|rom_memory~1_combout\)))) ) ) # ( !\port_map_banco_de_registradores|registradores~277_combout\ & ( (\port_map_rom|rom_memory~1_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~278_combout\ & \port_map_unidade_de_controle|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011000000010100001100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~0_combout\);

-- Location: LABCELL_X30_Y6_N30
\port_map_ula|OP2|RESULTADO|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~1_combout\ = ( \port_map_ula|OP2|RESULTADO|C~0_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & \port_map_banco_de_registradores|registradores~279_combout\) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~0_combout\ & ( 
-- (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # (\port_map_banco_de_registradores|registradores~279_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~1_combout\);

-- Location: FF_X31_Y5_N46
\port_map_banco_de_registradores|registradores~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[4]~4_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~41_q\);

-- Location: LABCELL_X31_Y5_N48
\port_map_rom|rom_memory~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~13_combout\ = ( !\port_map_pc|outPort\(2) & ( !\port_map_pc|outPort\(4) & ( (!\port_map_pc|outPort\(7) & (!\port_map_pc|outPort\(6) & !\port_map_pc|outPort\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(7),
	datac => \port_map_pc|ALT_INV_outPort\(6),
	datad => \port_map_pc|ALT_INV_outPort\(5),
	datae => \port_map_pc|ALT_INV_outPort\(2),
	dataf => \port_map_pc|ALT_INV_outPort\(4),
	combout => \port_map_rom|rom_memory~13_combout\);

-- Location: LABCELL_X31_Y5_N33
\port_map_banco_de_registradores|registradores~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~286_combout\ = ( \port_map_rom|rom_memory~13_combout\ & ( (!\port_map_rom|rom_memory~14_combout\ & ((\port_map_banco_de_registradores|registradores~25_q\))) # (\port_map_rom|rom_memory~14_combout\ & 
-- (\port_map_banco_de_registradores|registradores~41_q\)) ) ) # ( !\port_map_rom|rom_memory~13_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~14_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~13_combout\,
	combout => \port_map_banco_de_registradores|registradores~286_combout\);

-- Location: FF_X30_Y6_N17
\port_map_banco_de_registradores|registradores~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[3]~3_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~24_q\);

-- Location: LABCELL_X30_Y6_N24
\port_map_banco_de_registradores|registradores~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~283_combout\ = ( \port_map_banco_de_registradores|registradores~40_q\ & ( \port_map_banco_de_registradores|registradores~24_q\ ) ) # ( !\port_map_banco_de_registradores|registradores~40_q\ & ( 
-- \port_map_banco_de_registradores|registradores~24_q\ & ( ((!\port_map_rom|rom_memory~4_combout\) # ((!\port_map_pc|outPort\(0)) # (\port_map_pc|outPort\(2)))) # (\port_map_pc|outPort\(1)) ) ) ) # ( \port_map_banco_de_registradores|registradores~40_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~24_q\ & ( (!\port_map_pc|outPort\(1) & (\port_map_rom|rom_memory~4_combout\ & (!\port_map_pc|outPort\(2) & \port_map_pc|outPort\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000011111111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_pc|ALT_INV_outPort\(0),
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	combout => \port_map_banco_de_registradores|registradores~283_combout\);

-- Location: LABCELL_X29_Y6_N39
\port_map_ula|OP2|RESULTADO|C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~2_combout\ = ( \port_map_banco_de_registradores|registradores~284_combout\ & ( (\port_map_banco_de_registradores|registradores~283_combout\ & ((\port_map_unidade_de_controle|Mux9~0_combout\) # 
-- (\port_map_rom|rom_memory~5_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~284_combout\ & ( \port_map_banco_de_registradores|registradores~283_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~2_combout\);

-- Location: FF_X31_Y6_N53
\port_map_banco_de_registradores|registradores~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[5]~5_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~42_q\);

-- Location: LABCELL_X31_Y5_N15
\port_map_banco_de_registradores|registradores~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~288_combout\ = ( \port_map_rom|rom_memory~14_combout\ & ( (!\port_map_rom|rom_memory~13_combout\ & ((\port_map_banco_de_registradores|registradores~26_q\))) # (\port_map_rom|rom_memory~13_combout\ & 
-- (\port_map_banco_de_registradores|registradores~42_q\)) ) ) # ( !\port_map_rom|rom_memory~14_combout\ & ( \port_map_banco_de_registradores|registradores~26_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~13_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~14_combout\,
	combout => \port_map_banco_de_registradores|registradores~288_combout\);

-- Location: MLABCELL_X28_Y5_N3
\port_map_mult1_2x1_br_ula|Sout[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_unidade_de_controle|Mux9~0_combout\ & \port_map_banco_de_registradores|registradores~289_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\);

-- Location: LABCELL_X29_Y6_N57
\port_map_ula|OP1|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~1_combout\ = ( \port_map_banco_de_registradores|registradores~284_combout\ & ( !\port_map_banco_de_registradores|registradores~283_combout\ $ (((\port_map_unidade_de_controle|Mux9~0_combout\) # (\port_map_rom|rom_memory~5_combout\))) ) 
-- ) # ( !\port_map_banco_de_registradores|registradores~284_combout\ & ( \port_map_banco_de_registradores|registradores~283_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	combout => \port_map_ula|OP1|C~1_combout\);

-- Location: FF_X30_Y6_N50
\port_map_banco_de_registradores|registradores~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_mult4_2x1_ram_ula|Sout[2]~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~23_q\);

-- Location: LABCELL_X29_Y6_N12
\port_map_banco_de_registradores|registradores~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~281_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~39_q\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~23_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~281_combout\);

-- Location: LABCELL_X29_Y6_N54
\port_map_mult1_2x1_br_ula|Sout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ = ( \port_map_banco_de_registradores|registradores~281_combout\ & ( !\port_map_rom|rom_memory~5_combout\ $ (\port_map_unidade_de_controle|Mux9~0_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~281_combout\ & ( (\port_map_rom|rom_memory~5_combout\ & \port_map_unidade_de_controle|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\);

-- Location: MLABCELL_X28_Y6_N12
\port_map_ula|OP2|RESULTADO|C~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~3_combout\ = ( \port_map_banco_de_registradores|registradores~279_combout\ & ( \port_map_ula|OP2|RESULTADO|C~0_combout\ & ( (!\port_map_ula|OP1|C~1_combout\ & ((!\port_map_banco_de_registradores|registradores~282_combout\ & 
-- (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\)) # (\port_map_banco_de_registradores|registradores~282_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # 
-- (!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( \port_map_ula|OP2|RESULTADO|C~0_combout\ & ( (\port_map_banco_de_registradores|registradores~282_combout\ & 
-- (!\port_map_ula|OP1|C~1_combout\ & !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~0_combout\ & ( (!\port_map_ula|OP1|C~1_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\) # (\port_map_banco_de_registradores|registradores~282_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~0_combout\ & ( 
-- (!\port_map_ula|OP1|C~1_combout\ & ((!\port_map_banco_de_registradores|registradores~282_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~282_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000110011000100010001000100000000001100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~1_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~3_combout\);

-- Location: MLABCELL_X28_Y6_N36
\port_map_ula|OP2|RESULTADO|C~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~4_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( \port_map_ula|OP2|RESULTADO|C~3_combout\ & ( (!\port_map_banco_de_registradores|registradores~288_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~286_combout\) # (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\))) # (\port_map_banco_de_registradores|registradores~288_combout\ & (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & 
-- !\port_map_banco_de_registradores|registradores~286_combout\)) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( \port_map_ula|OP2|RESULTADO|C~3_combout\ & ( (!\port_map_banco_de_registradores|registradores~288_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~3_combout\ & ( (!\port_map_banco_de_registradores|registradores~288_combout\ & 
-- ((!\port_map_ula|OP2|RESULTADO|C~2_combout\) # ((!\port_map_banco_de_registradores|registradores~286_combout\) # (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\)))) # (\port_map_banco_de_registradores|registradores~288_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~2_combout\) # (!\port_map_banco_de_registradores|registradores~286_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( 
-- !\port_map_ula|OP2|RESULTADO|C~3_combout\ & ( (!\port_map_banco_de_registradores|registradores~288_combout\ & (((!\port_map_ula|OP2|RESULTADO|C~2_combout\ & !\port_map_banco_de_registradores|registradores~286_combout\)) # 
-- (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\))) # (\port_map_banco_de_registradores|registradores~288_combout\ & (!\port_map_ula|OP2|RESULTADO|C~2_combout\ & (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & 
-- !\port_map_banco_de_registradores|registradores~286_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000001100110011111000111000001100000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~4_combout\);

-- Location: FF_X27_Y6_N8
\port_map_banco_de_registradores|registradores~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[6]~6_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~43_q\);

-- Location: MLABCELL_X25_Y5_N39
\port_map_rom|rom_memory~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~6_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( (!\port_map_pc|outPort\(1) & (\port_map_pc|outPort\(0) & !\port_map_pc|outPort\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_pc|ALT_INV_outPort\(2),
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~6_combout\);

-- Location: LABCELL_X27_Y5_N15
\port_map_banco_de_registradores|registradores~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~290_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~43_q\ ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~27_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~43_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~290_combout\);

-- Location: FF_X27_Y6_N44
\port_map_banco_de_registradores|registradores~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[7]~7_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~28_q\);

-- Location: LABCELL_X27_Y6_N30
\port_map_banco_de_registradores|registradores~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~292_combout\ = ( \port_map_banco_de_registradores|registradores~28_q\ & ( (!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~44_q\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~28_q\ & ( (\port_map_banco_de_registradores|registradores~44_q\ & \port_map_rom|rom_memory~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~44_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	combout => \port_map_banco_de_registradores|registradores~292_combout\);

-- Location: LABCELL_X27_Y6_N9
\port_map_ula|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & ( \port_map_banco_de_registradores|registradores~292_combout\ & ( ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & (\port_map_ula|OP2|RESULTADO|C~4_combout\ & 
-- !\port_map_banco_de_registradores|registradores~290_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ((!\port_map_banco_de_registradores|registradores~290_combout\) # (\port_map_ula|OP2|RESULTADO|C~4_combout\)))) # 
-- (\port_map_ula|Mux7~0_combout\) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & ( \port_map_banco_de_registradores|registradores~292_combout\ & ( ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~4_combout\) # 
-- (\port_map_banco_de_registradores|registradores~290_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & (!\port_map_ula|OP2|RESULTADO|C~4_combout\ & \port_map_banco_de_registradores|registradores~290_combout\))) # 
-- (\port_map_ula|Mux7~0_combout\) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & ( !\port_map_banco_de_registradores|registradores~292_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & 
-- ((!\port_map_ula|OP2|RESULTADO|C~4_combout\) # (\port_map_banco_de_registradores|registradores~290_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & (!\port_map_ula|OP2|RESULTADO|C~4_combout\ & 
-- \port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & ( !\port_map_banco_de_registradores|registradores~292_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & (\port_map_ula|OP2|RESULTADO|C~4_combout\ & !\port_map_banco_de_registradores|registradores~290_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~290_combout\) # (\port_map_ula|OP2|RESULTADO|C~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000100011100000000010001110111111110111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datab => \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	combout => \port_map_ula|Mux12~0_combout\);

-- Location: LABCELL_X29_Y6_N33
\port_map_ula|OP1|C~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~3_combout\ = ( \port_map_banco_de_registradores|registradores~284_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~283_combout\ & !\port_map_unidade_de_controle|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	combout => \port_map_ula|OP1|C~3_combout\);

-- Location: MLABCELL_X28_Y5_N27
\port_map_ula|OP1|C~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~4_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( \port_map_ula|OP1|C~1_combout\ & ( ((!\port_map_banco_de_registradores|registradores~279_combout\ & (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & 
-- \port_map_ula|OP1|C~0_combout\)) # (\port_map_banco_de_registradores|registradores~279_combout\ & ((\port_map_ula|OP1|C~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)))) # (\port_map_banco_de_registradores|registradores~282_combout\) ) ) ) 
-- # ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( \port_map_ula|OP1|C~1_combout\ & ( (\port_map_banco_de_registradores|registradores~282_combout\ & ((!\port_map_banco_de_registradores|registradores~279_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & \port_map_ula|OP1|C~0_combout\)) # (\port_map_banco_de_registradores|registradores~279_combout\ & ((\port_map_ula|OP1|C~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~1_combout\,
	combout => \port_map_ula|OP1|C~4_combout\);

-- Location: MLABCELL_X28_Y5_N30
\port_map_ula|OP1|C~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~6_combout\ = ( \port_map_ula|OP1|C~4_combout\ & ( \port_map_banco_de_registradores|registradores~288_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & (!\port_map_banco_de_registradores|registradores~286_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\)) ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( \port_map_banco_de_registradores|registradores~288_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ((!\port_map_banco_de_registradores|registradores~286_combout\) # (!\port_map_ula|OP1|C~3_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~286_combout\ & !\port_map_ula|OP1|C~3_combout\)))) ) ) ) # ( \port_map_ula|OP1|C~4_combout\ & ( !\port_map_banco_de_registradores|registradores~288_combout\ & ( 
-- (!\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & !\port_map_banco_de_registradores|registradores~286_combout\)) ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~288_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ((!\port_map_banco_de_registradores|registradores~286_combout\) # 
-- (!\port_map_ula|OP1|C~3_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & (!\port_map_banco_de_registradores|registradores~286_combout\ & !\port_map_ula|OP1|C~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000111110001111100011100000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~3_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	combout => \port_map_ula|OP1|C~6_combout\);

-- Location: LABCELL_X27_Y6_N48
\port_map_ula|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~1_combout\ = ( \port_map_ula|Mux7~3_combout\ & ( \port_map_ula|OP1|C~6_combout\ & ( !\port_map_banco_de_registradores|registradores~292_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ 
-- (((\port_map_banco_de_registradores|registradores~290_combout\ & \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)))) ) ) ) # ( !\port_map_ula|Mux7~3_combout\ & ( \port_map_ula|OP1|C~6_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ ) ) ) # ( 
-- \port_map_ula|Mux7~3_combout\ & ( !\port_map_ula|OP1|C~6_combout\ & ( !\port_map_banco_de_registradores|registradores~292_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ (((\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # 
-- (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( !\port_map_ula|Mux7~3_combout\ & ( !\port_map_ula|OP1|C~6_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011110001000011100000000111111110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~3_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux12~1_combout\);

-- Location: LABCELL_X27_Y6_N21
\port_map_ula|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~2_combout\ = ( \port_map_ula|Mux12~1_combout\ & ( ((\port_map_ula|Mux12~0_combout\ & \port_map_ula|Mux7~2_combout\)) # (\port_map_ula|Mux7~1_combout\) ) ) # ( !\port_map_ula|Mux12~1_combout\ & ( (\port_map_ula|Mux12~0_combout\ & 
-- \port_map_ula|Mux7~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datac => \port_map_ula|ALT_INV_Mux12~0_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux12~1_combout\,
	combout => \port_map_ula|Mux12~2_combout\);

-- Location: FF_X27_Y5_N47
\port_map_banco_de_registradores|registradores~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[8]~8_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~45_q\);

-- Location: LABCELL_X29_Y6_N6
\port_map_banco_de_registradores|registradores~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~295_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((\port_map_banco_de_registradores|registradores~45_q\ & !\port_map_rom|rom_memory~3_combout\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (\port_map_banco_de_registradores|registradores~29_q\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000001011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~45_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~295_combout\);

-- Location: MLABCELL_X28_Y6_N45
\port_map_banco_de_registradores|registradores~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~296_combout\ = ( \port_map_banco_de_registradores|registradores~295_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~295_combout\,
	combout => \port_map_banco_de_registradores|registradores~296_combout\);

-- Location: LABCELL_X27_Y6_N39
\port_map_mult1_2x1_br_ula|Sout[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[8]~7_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( \port_map_banco_de_registradores|registradores~296_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~296_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[8]~7_combout\);

-- Location: LABCELL_X27_Y6_N24
\port_map_ula|OP2|RESULTADO|C~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~5_combout\ = ( \port_map_ula|OP2|RESULTADO|C~4_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (((\port_map_banco_de_registradores|registradores~290_combout\ & !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~292_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_banco_de_registradores|registradores~292_combout\ & (\port_map_banco_de_registradores|registradores~290_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~4_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # 
-- (\port_map_banco_de_registradores|registradores~290_combout\)) # (\port_map_banco_de_registradores|registradores~292_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_banco_de_registradores|registradores~292_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # (\port_map_banco_de_registradores|registradores~290_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100101011101110110010101100101011001000100010101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~5_combout\);

-- Location: LABCELL_X27_Y6_N12
\port_map_ula|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~5_combout\ & ( !\port_map_banco_de_registradores|registradores~294_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[8]~7_combout\) # (\port_map_ula|Mux7~0_combout\))) ) ) # ( 
-- !\port_map_ula|OP2|RESULTADO|C~5_combout\ & ( !\port_map_banco_de_registradores|registradores~294_combout\ $ (((\port_map_ula|Mux7~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[8]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100001111110000110000111100111100000011110011110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[8]~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~294_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\,
	combout => \port_map_ula|Mux11~0_combout\);

-- Location: LABCELL_X27_Y6_N3
\port_map_ula|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~2_combout\ = ( \port_map_ula|Mux11~1_combout\ & ( ((\port_map_ula|Mux11~0_combout\ & \port_map_ula|Mux7~2_combout\)) # (\port_map_ula|Mux7~1_combout\) ) ) # ( !\port_map_ula|Mux11~1_combout\ & ( (\port_map_ula|Mux11~0_combout\ & 
-- \port_map_ula|Mux7~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datac => \port_map_ula|ALT_INV_Mux11~0_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux11~1_combout\,
	combout => \port_map_ula|Mux11~2_combout\);

-- Location: FF_X25_Y5_N5
\port_map_banco_de_registradores|registradores~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[11]~11_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~48_q\);

-- Location: MLABCELL_X25_Y5_N24
\port_map_banco_de_registradores|registradores~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~302_combout\ = ( !\port_map_rom|rom_memory~3_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~1_combout\ & ((\port_map_banco_de_registradores|registradores~32_q\))) # 
-- (\port_map_rom|rom_memory~1_combout\ & (\port_map_banco_de_registradores|registradores~48_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~48_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~302_combout\);

-- Location: LABCELL_X27_Y5_N51
\port_map_mult1_2x1_br_ula|Sout[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ = ( \port_map_banco_de_registradores|registradores~302_combout\ & ( !\port_map_unidade_de_controle|Mux9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~302_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\);

-- Location: MLABCELL_X28_Y4_N30
\port_map_ula|OP2|RESULTADO|C~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~6_combout\ = ( \port_map_banco_de_registradores|registradores~294_combout\ & ( ((!\port_map_banco_de_registradores|registradores~295_combout\) # (\port_map_rom|rom_memory~5_combout\)) # 
-- (\port_map_unidade_de_controle|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~295_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~294_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~6_combout\);

-- Location: FF_X29_Y4_N49
\port_map_banco_de_registradores|registradores~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[10]~10_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~47_q\);

-- Location: LABCELL_X29_Y4_N6
\port_map_banco_de_registradores|registradores~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~299_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~47_q\ ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~31_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~47_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~299_combout\);

-- Location: LABCELL_X27_Y4_N3
\port_map_banco_de_registradores|registradores~46feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~46feeder_combout\ = \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult4_2x1_ram_ula|ALT_INV_Sout[9]~9_combout\,
	combout => \port_map_banco_de_registradores|registradores~46feeder_combout\);

-- Location: FF_X27_Y4_N5
\port_map_banco_de_registradores|registradores~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~46feeder_combout\,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~46_q\);

-- Location: LABCELL_X29_Y4_N3
\port_map_banco_de_registradores|registradores~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~298_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((\port_map_banco_de_registradores|registradores~46_q\ & !\port_map_rom|rom_memory~3_combout\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~30_q\ & !\port_map_rom|rom_memory~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000001110111001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~46_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~298_combout\);

-- Location: LABCELL_X29_Y5_N9
\port_map_mult1_2x1_br_ula|Sout[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_unidade_de_controle|Mux9~0_combout\ & \port_map_banco_de_registradores|registradores~298_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~298_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\);

-- Location: MLABCELL_X28_Y6_N30
\port_map_ula|OP2|RESULTADO|C~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~7_combout\ = ( \port_map_ula|OP2|RESULTADO|C~4_combout\ & ( !\port_map_ula|OP1|C~8_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (((\port_map_banco_de_registradores|registradores~290_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)) # (\port_map_banco_de_registradores|registradores~292_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_banco_de_registradores|registradores~290_combout\ & 
-- (\port_map_banco_de_registradores|registradores~292_combout\ & !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~4_combout\ & ( !\port_map_ula|OP1|C~8_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & 
-- (((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # (\port_map_banco_de_registradores|registradores~292_combout\)) # (\port_map_banco_de_registradores|registradores~290_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & 
-- (\port_map_banco_de_registradores|registradores~292_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101001101010011010000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~8_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~7_combout\);

-- Location: MLABCELL_X28_Y6_N24
\port_map_ula|OP2|RESULTADO|C~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~8_combout\ = ( \port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_ula|OP2|RESULTADO|C~7_combout\ & ( (\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & 
-- !\port_map_banco_de_registradores|registradores~299_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_ula|OP2|RESULTADO|C~7_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~299_combout\ & \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & ((!\port_map_banco_de_registradores|registradores~299_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\))) ) ) ) # ( \port_map_banco_de_registradores|registradores~297_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~7_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & 
-- (!\port_map_ula|OP2|RESULTADO|C~6_combout\ & (!\port_map_banco_de_registradores|registradores~299_combout\ & \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~299_combout\) # ((!\port_map_ula|OP2|RESULTADO|C~6_combout\ & \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( 
-- !\port_map_ula|OP2|RESULTADO|C~7_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & (!\port_map_banco_de_registradores|registradores~299_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~6_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~6_combout\) # ((!\port_map_banco_de_registradores|registradores~299_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011110101010100001101010001010000111101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~9_combout\,
	datab => \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~299_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~8_combout\);

-- Location: MLABCELL_X28_Y6_N9
\port_map_ula|OP2|RESULTADO|C~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~9_combout\ = ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & \port_map_banco_de_registradores|registradores~301_combout\) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~8_combout\ & 
-- ( (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # (\port_map_banco_de_registradores|registradores~301_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~9_combout\);

-- Location: LABCELL_X29_Y5_N3
\port_map_ula|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~4_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~2_combout\,
	combout => \port_map_ula|Mux7~4_combout\);

-- Location: MLABCELL_X28_Y4_N27
\port_map_ula|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~5_combout\ = ( \port_map_ula|Mux7~3_combout\ & ( \port_map_ula|Mux7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~3_combout\,
	combout => \port_map_ula|Mux7~5_combout\);

-- Location: MLABCELL_X28_Y6_N57
\port_map_ula|OP1|C~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~9_combout\ = ( \port_map_banco_de_registradores|registradores~294_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~295_combout\ & !\port_map_unidade_de_controle|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~295_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~294_combout\,
	combout => \port_map_ula|OP1|C~9_combout\);

-- Location: MLABCELL_X28_Y5_N12
\port_map_ula|OP1|C~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~10_combout\ = ( \port_map_banco_de_registradores|registradores~290_combout\ & ( \port_map_ula|OP1|C~6_combout\ & ( (\port_map_ula|OP1|C~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & \port_map_banco_de_registradores|registradores~292_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ((\port_map_banco_de_registradores|registradores~292_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\))))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~290_combout\ & ( \port_map_ula|OP1|C~6_combout\ & ( (\port_map_ula|OP1|C~8_combout\ & (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & 
-- \port_map_banco_de_registradores|registradores~292_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~290_combout\ & ( !\port_map_ula|OP1|C~6_combout\ & ( (\port_map_ula|OP1|C~8_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~292_combout\) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~290_combout\ & ( !\port_map_ula|OP1|C~6_combout\ & ( 
-- (\port_map_ula|OP1|C~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & \port_map_banco_de_registradores|registradores~292_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~292_combout\) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000110011001100000000000000110000000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~8_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~6_combout\,
	combout => \port_map_ula|OP1|C~10_combout\);

-- Location: MLABCELL_X28_Y5_N36
\port_map_ula|OP1|C~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~12_combout\ = ( \port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_ula|OP1|C~10_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & !\port_map_banco_de_registradores|registradores~299_combout\) ) ) ) 
-- # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_ula|OP1|C~10_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~299_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & !\port_map_banco_de_registradores|registradores~299_combout\)) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~297_combout\ & ( !\port_map_ula|OP1|C~10_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & ((!\port_map_banco_de_registradores|registradores~299_combout\) # 
-- ((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & !\port_map_ula|OP1|C~9_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & (!\port_map_ula|OP1|C~9_combout\ & 
-- !\port_map_banco_de_registradores|registradores~299_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( !\port_map_ula|OP1|C~10_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\) # ((!\port_map_ula|OP1|C~9_combout\) # (!\port_map_banco_de_registradores|registradores~299_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~299_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\) # (!\port_map_ula|OP1|C~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001000111011001000000011101110100010001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~9_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~299_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~10_combout\,
	combout => \port_map_ula|OP1|C~12_combout\);

-- Location: FF_X25_Y5_N14
\port_map_banco_de_registradores|registradores~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[12]~12_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~49_q\);

-- Location: MLABCELL_X25_Y5_N45
\port_map_banco_de_registradores|registradores~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~304_combout\ = ( \port_map_banco_de_registradores|registradores~33_q\ & ( (!\port_map_rom|rom_memory~6_combout\) # (\port_map_banco_de_registradores|registradores~49_q\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~33_q\ & ( (\port_map_rom|rom_memory~6_combout\ & \port_map_banco_de_registradores|registradores~49_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~49_q\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	combout => \port_map_banco_de_registradores|registradores~304_combout\);

-- Location: MLABCELL_X25_Y5_N36
\port_map_ula|Mux7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~8_combout\ = ( \port_map_rom|rom_memory~12_combout\ & ( (\port_map_banco_de_registradores|registradores~304_combout\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	combout => \port_map_ula|Mux7~8_combout\);

-- Location: MLABCELL_X25_Y5_N18
\port_map_ula|Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~6_combout\ = ( \port_map_banco_de_registradores|registradores~301_combout\ & ( \port_map_ula|OP1|C~13_combout\ & ( (!\port_map_ula|Mux7~8_combout\ & ((!\port_map_ula|Mux7~5_combout\) # ((!\port_map_ula|OP1|C~12_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( \port_map_ula|OP1|C~13_combout\ & ( (!\port_map_ula|Mux7~8_combout\ & ((!\port_map_ula|Mux7~5_combout\) # 
-- ((\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & !\port_map_ula|OP1|C~12_combout\)))) ) ) ) # ( \port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_ula|OP1|C~13_combout\ & ( (!\port_map_ula|Mux7~8_combout\ & 
-- ((!\port_map_ula|Mux7~5_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & \port_map_ula|OP1|C~12_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_ula|OP1|C~13_combout\ & ( 
-- (!\port_map_ula|Mux7~8_combout\ & ((!\port_map_ula|Mux7~5_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # (\port_map_ula|OP1|C~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000101011100000000010111010000000001111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~5_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~8_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~13_combout\,
	combout => \port_map_ula|Mux7~6_combout\);

-- Location: FF_X27_Y5_N32
\port_map_banco_de_registradores|registradores~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_mult4_2x1_ram_ula|Sout[13]~13_combout\,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~34_q\);

-- Location: LABCELL_X27_Y5_N9
\port_map_banco_de_registradores|registradores~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~305_combout\ = ( !\port_map_rom|rom_memory~3_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~1_combout\ & (\port_map_banco_de_registradores|registradores~34_q\)) # 
-- (\port_map_rom|rom_memory~1_combout\ & ((\port_map_banco_de_registradores|registradores~50_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~50_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~305_combout\);

-- Location: MLABCELL_X28_Y6_N54
\port_map_mult1_2x1_br_ula|Sout[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ = ( \port_map_banco_de_registradores|registradores~305_combout\ & ( !\port_map_unidade_de_controle|Mux9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~305_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[13]~12_combout\);

-- Location: FF_X29_Y6_N32
\port_map_banco_de_registradores|registradores~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[15]~15_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~52_q\);

-- Location: LABCELL_X30_Y6_N0
\port_map_banco_de_registradores|registradores~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~310_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~52_q\ ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~36_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~52_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~310_combout\);

-- Location: LABCELL_X30_Y6_N21
\port_map_ula|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~2_combout\ = ( \port_map_rom|rom_memory~12_combout\ & ( (!\port_map_rom|rom_memory~10_combout\ & (!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~310_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~310_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	combout => \port_map_ula|Mux4~2_combout\);

-- Location: FF_X27_Y7_N2
\port_map_banco_de_registradores|registradores~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~35_q\);

-- Location: MLABCELL_X28_Y6_N6
\port_map_banco_de_registradores|registradores~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~308_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~51_q\ ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~35_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~51_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~308_combout\);

-- Location: MLABCELL_X28_Y6_N21
\port_map_ula|OP2|RESULTADO|C~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~11_combout\ = ( !\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & ( \port_map_banco_de_registradores|registradores~306_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~11_combout\);

-- Location: LABCELL_X27_Y5_N18
\port_map_ula|OP1|C~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~15_combout\ = ( \port_map_banco_de_registradores|registradores~306_combout\ & ( (!\port_map_banco_de_registradores|registradores~305_combout\) # (\port_map_unidade_de_controle|Mux9~0_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~306_combout\ & ( (\port_map_banco_de_registradores|registradores~305_combout\ & !\port_map_unidade_de_controle|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~305_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	combout => \port_map_ula|OP1|C~15_combout\);

-- Location: LABCELL_X27_Y5_N57
\port_map_mult1_2x1_br_ula|Sout[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( \port_map_banco_de_registradores|registradores~303_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~303_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\);

-- Location: MLABCELL_X28_Y6_N48
\port_map_ula|OP2|RESULTADO|C~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~12_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( (!\port_map_ula|OP1|C~15_combout\ & (\port_map_banco_de_registradores|registradores~304_combout\ & 
-- (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & \port_map_banco_de_registradores|registradores~301_combout\))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( 
-- (!\port_map_ula|OP1|C~15_combout\ & (((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & \port_map_banco_de_registradores|registradores~301_combout\)) # (\port_map_banco_de_registradores|registradores~304_combout\))) ) ) ) # ( 
-- \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~8_combout\ & ( (!\port_map_ula|OP1|C~15_combout\ & (\port_map_banco_de_registradores|registradores~304_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # 
-- (\port_map_banco_de_registradores|registradores~301_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~8_combout\ & ( (!\port_map_ula|OP1|C~15_combout\ & 
-- (((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # (\port_map_banco_de_registradores|registradores~301_combout\)) # (\port_map_banco_de_registradores|registradores~304_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101010001000000010001000100010101000100000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~15_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~12_combout\);

-- Location: LABCELL_X29_Y6_N42
\port_map_ula|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( (\port_map_ula|Mux7~4_combout\ & (!\port_map_banco_de_registradores|registradores~308_combout\ $ 
-- (\port_map_ula|OP1|C~17_combout\))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( (\port_map_ula|Mux7~4_combout\ & (!\port_map_ula|OP1|C~17_combout\ $ 
-- (((\port_map_banco_de_registradores|registradores~308_combout\ & \port_map_ula|OP2|RESULTADO|C~11_combout\))))) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( (\port_map_ula|Mux7~4_combout\ & 
-- \port_map_ula|OP1|C~17_combout\) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( (\port_map_ula|Mux7~4_combout\ & (!\port_map_ula|OP1|C~17_combout\ $ 
-- (((\port_map_ula|OP2|RESULTADO|C~11_combout\) # (\port_map_banco_de_registradores|registradores~308_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101000000000101010101010100000000010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~4_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~17_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\,
	combout => \port_map_ula|Mux4~0_combout\);

-- Location: M10K_X26_Y6_N0
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor_16bits.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_upv1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux8~0_combout\,
	portbre => \port_map_unidade_de_controle|Mux7~0_combout\,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X29_Y6_N21
\port_map_mult4_2x1_ram_ula|Sout[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[15]~15_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ & ( \port_map_ula|OP1|S\(15) & ( (((\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ula|Mux4~0_combout\)) # 
-- (\port_map_ula|Mux7~5_combout\)) # (\port_map_ula|Mux4~2_combout\) ) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ & ( \port_map_ula|OP1|S\(15) & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ula|Mux4~0_combout\) # 
-- (\port_map_ula|Mux7~5_combout\)) # (\port_map_ula|Mux4~2_combout\))) ) ) ) # ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ & ( !\port_map_ula|OP1|S\(15) & ( ((\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ula|Mux4~0_combout\)) # 
-- (\port_map_ula|Mux4~2_combout\) ) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a15\ & ( !\port_map_ula|OP1|S\(15) & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & ((\port_map_ula|Mux4~0_combout\) # (\port_map_ula|Mux4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111111111111101111111000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux4~2_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~5_combout\,
	datac => \port_map_ula|ALT_INV_Mux4~0_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datae => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	dataf => \port_map_ula|OP1|ALT_INV_S\(15),
	combout => \port_map_mult4_2x1_ram_ula|Sout[15]~15_combout\);

-- Location: FF_X29_Y6_N20
\port_map_banco_de_registradores|registradores~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[15]~15_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~36_q\);

-- Location: LABCELL_X29_Y6_N30
\port_map_banco_de_registradores|registradores~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~309_combout\ = ( !\port_map_rom|rom_memory~3_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~1_combout\ & (\port_map_banco_de_registradores|registradores~36_q\)) # 
-- (\port_map_rom|rom_memory~1_combout\ & ((\port_map_banco_de_registradores|registradores~52_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~52_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~309_combout\);

-- Location: LABCELL_X29_Y6_N0
\port_map_mult1_2x1_br_ula|Sout[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( \port_map_banco_de_registradores|registradores~309_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~309_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\);

-- Location: LABCELL_X29_Y6_N9
\port_map_ula|OP1|C~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~17_combout\ = ( \port_map_banco_de_registradores|registradores~310_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[15]~14_combout\ ) ) # ( !\port_map_banco_de_registradores|registradores~310_combout\ & ( 
-- \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[15]~14_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~310_combout\,
	combout => \port_map_ula|OP1|C~17_combout\);

-- Location: MLABCELL_X28_Y5_N48
\port_map_ula|OP1|C~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~14_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & (\port_map_banco_de_registradores|registradores~304_combout\ & ((!\port_map_ula|OP1|C~12_combout\) # 
-- (\port_map_banco_de_registradores|registradores~301_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & (((!\port_map_ula|OP1|C~12_combout\) # (\port_map_banco_de_registradores|registradores~301_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~304_combout\))) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & (\port_map_banco_de_registradores|registradores~304_combout\ & 
-- (!\port_map_ula|OP1|C~12_combout\ & \port_map_banco_de_registradores|registradores~301_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & (((!\port_map_ula|OP1|C~12_combout\ & \port_map_banco_de_registradores|registradores~301_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~304_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110001000100010111000101110001011101110111000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	combout => \port_map_ula|OP1|C~14_combout\);

-- Location: LABCELL_X29_Y6_N24
\port_map_ula|OP1|S[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|S\(15) = ( \port_map_ula|OP1|C~14_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( !\port_map_ula|OP1|C~17_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~306_combout\ & !\port_map_banco_de_registradores|registradores~308_combout\)))) ) ) ) # ( !\port_map_ula|OP1|C~14_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( 
-- !\port_map_ula|OP1|C~17_combout\ $ (((!\port_map_banco_de_registradores|registradores~308_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) # (!\port_map_banco_de_registradores|registradores~306_combout\))))) ) ) ) # ( 
-- \port_map_ula|OP1|C~14_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( !\port_map_ula|OP1|C~17_combout\ $ (((!\port_map_banco_de_registradores|registradores~308_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- !\port_map_banco_de_registradores|registradores~306_combout\)))) ) ) ) # ( !\port_map_ula|OP1|C~14_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( !\port_map_ula|OP1|C~17_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) # 
-- ((!\port_map_banco_de_registradores|registradores~306_combout\) # (!\port_map_banco_de_registradores|registradores~308_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110111100000011110111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~17_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~14_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\,
	combout => \port_map_ula|OP1|S\(15));

-- Location: LABCELL_X29_Y6_N36
\port_map_ula|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~1_combout\ = ( \port_map_ula|Mux4~0_combout\ ) # ( !\port_map_ula|Mux4~0_combout\ & ( ((\port_map_ula|Mux7~5_combout\ & \port_map_ula|OP1|S\(15))) # (\port_map_ula|Mux4~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux7~5_combout\,
	datac => \port_map_ula|OP1|ALT_INV_S\(15),
	datad => \port_map_ula|ALT_INV_Mux4~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux4~0_combout\,
	combout => \port_map_ula|Mux4~1_combout\);

-- Location: LABCELL_X27_Y7_N6
\port_map_ula|OP2|RESULTADO|C~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~16_combout\ = ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( \port_map_banco_de_registradores|registradores~304_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~16_combout\);

-- Location: LABCELL_X27_Y7_N27
\port_map_ula|OP2|RESULTADO|C~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~15_combout\ = ( \port_map_banco_de_registradores|registradores~301_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_ula|OP1|C~15_combout\ & 
-- \port_map_banco_de_registradores|registradores~304_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_ula|OP1|C~15_combout\ & 
-- (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & \port_map_banco_de_registradores|registradores~304_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( 
-- !\port_map_ula|OP1|C~15_combout\ ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_ula|OP1|C~15_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # 
-- (\port_map_banco_de_registradores|registradores~304_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010101010101010101000000000100010000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~15_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~15_combout\);

-- Location: LABCELL_X27_Y7_N54
\port_map_ula|OP2|RESULTADO|C~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~13_combout\ = ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( \port_map_ula|OP2|RESULTADO|C~15_combout\ & ( (!\port_map_ula|OP2|RESULTADO|C~11_combout\ & (!\port_map_ula|OP2|RESULTADO|C~16_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~301_combout\) # (\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\)))) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~15_combout\ & ( 
-- !\port_map_ula|OP2|RESULTADO|C~11_combout\ ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~8_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~15_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\,
	datab => \port_map_ula|OP2|RESULTADO|ALT_INV_C~16_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~15_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~13_combout\);

-- Location: LABCELL_X27_Y7_N48
\port_map_ula|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~3_combout\ = ( \port_map_banco_de_registradores|registradores~304_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_banco_de_registradores|registradores~306_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~304_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_banco_de_registradores|registradores~306_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\))) # (\port_map_banco_de_registradores|registradores~306_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~304_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_banco_de_registradores|registradores~306_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\))) # (\port_map_banco_de_registradores|registradores~306_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\)) ) ) ) # ( !\port_map_banco_de_registradores|registradores~304_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_banco_de_registradores|registradores~306_combout\) # 
-- (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101000100011101110100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	combout => \port_map_ula|Mux5~3_combout\);

-- Location: LABCELL_X27_Y7_N36
\port_map_ula|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~4_combout\ = ( \port_map_rom|rom_memory~12_combout\ & ( \port_map_banco_de_registradores|registradores~308_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\,
	combout => \port_map_ula|Mux5~4_combout\);

-- Location: LABCELL_X27_Y7_N18
\port_map_ula|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~2_combout\ = ( \port_map_banco_de_registradores|registradores~301_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- !\port_map_banco_de_registradores|registradores~306_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~306_combout\) # (!\port_map_banco_de_registradores|registradores~304_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & (!\port_map_banco_de_registradores|registradores~306_combout\ & 
-- !\port_map_banco_de_registradores|registradores~304_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~306_combout\) # (!\port_map_banco_de_registradores|registradores~304_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & (!\port_map_banco_de_registradores|registradores~306_combout\ & 
-- !\port_map_banco_de_registradores|registradores~304_combout\)) ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~306_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111010001110100011101000111010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	combout => \port_map_ula|Mux5~2_combout\);

-- Location: LABCELL_X27_Y7_N45
\port_map_ula|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~0_combout\ = ( \port_map_ula|OP1|C~12_combout\ & ( \port_map_ula|Mux5~2_combout\ & ( (!\port_map_ula|Mux5~4_combout\ & ((!\port_map_ula|OP1|C~16_combout\) # (!\port_map_ula|Mux7~5_combout\))) ) ) ) # ( !\port_map_ula|OP1|C~12_combout\ & 
-- ( \port_map_ula|Mux5~2_combout\ & ( (!\port_map_ula|Mux5~4_combout\ & ((!\port_map_ula|Mux7~5_combout\) # (!\port_map_ula|Mux5~3_combout\ $ (!\port_map_ula|OP1|C~16_combout\)))) ) ) ) # ( \port_map_ula|OP1|C~12_combout\ & ( !\port_map_ula|Mux5~2_combout\ 
-- & ( (!\port_map_ula|Mux5~4_combout\ & ((!\port_map_ula|Mux7~5_combout\) # (!\port_map_ula|Mux5~3_combout\ $ (!\port_map_ula|OP1|C~16_combout\)))) ) ) ) # ( !\port_map_ula|OP1|C~12_combout\ & ( !\port_map_ula|Mux5~2_combout\ & ( 
-- (!\port_map_ula|Mux5~4_combout\ & ((!\port_map_ula|Mux7~5_combout\) # (\port_map_ula|OP1|C~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000100100011001100010010001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux5~3_combout\,
	datab => \port_map_ula|ALT_INV_Mux5~4_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~16_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~5_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	dataf => \port_map_ula|ALT_INV_Mux5~2_combout\,
	combout => \port_map_ula|Mux5~0_combout\);

-- Location: LABCELL_X27_Y7_N3
\port_map_mult4_2x1_ram_ula|Sout[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\ = ( \port_map_ula|OP2|RESULTADO|C~13_combout\ & ( \port_map_ula|Mux5~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (!\port_map_ula|OP1|C~16_combout\ & (\port_map_ula|Mux7~4_combout\))) # 
-- (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\)))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~13_combout\ & ( \port_map_ula|Mux5~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (\port_map_ula|OP1|C~16_combout\ & (\port_map_ula|Mux7~4_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\)))) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~13_combout\ & ( 
-- !\port_map_ula|Mux5~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~13_combout\ & ( !\port_map_ula|Mux5~0_combout\ & ( 
-- (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a14\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000010010101110000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~16_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~4_combout\,
	datad => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~13_combout\,
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\);

-- Location: LABCELL_X27_Y7_N12
\port_map_banco_de_registradores|registradores~51feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~51feeder_combout\ = ( \port_map_mult4_2x1_ram_ula|Sout[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_mult4_2x1_ram_ula|ALT_INV_Sout[14]~14_combout\,
	combout => \port_map_banco_de_registradores|registradores~51feeder_combout\);

-- Location: FF_X27_Y7_N14
\port_map_banco_de_registradores|registradores~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~51feeder_combout\,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~51_q\);

-- Location: LABCELL_X30_Y6_N33
\port_map_banco_de_registradores|registradores~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~307_combout\ = ( \port_map_banco_de_registradores|registradores~35_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & (!\port_map_rom|rom_memory~5_combout\ & ((!\port_map_rom|rom_memory~1_combout\) # 
-- (\port_map_banco_de_registradores|registradores~51_q\)))) ) ) # ( !\port_map_banco_de_registradores|registradores~35_q\ & ( (!\port_map_rom|rom_memory~3_combout\ & (!\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_banco_de_registradores|registradores~51_q\ & \port_map_rom|rom_memory~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100010001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~51_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	combout => \port_map_banco_de_registradores|registradores~307_combout\);

-- Location: LABCELL_X29_Y6_N15
\port_map_mult1_2x1_br_ula|Sout[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( \port_map_banco_de_registradores|registradores~307_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~307_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\);

-- Location: LABCELL_X29_Y6_N48
\port_map_ula|OP1|C~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~16_combout\ = ( \port_map_banco_de_registradores|registradores~308_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ ) ) # ( !\port_map_banco_de_registradores|registradores~308_combout\ & ( 
-- \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\,
	combout => \port_map_ula|OP1|C~16_combout\);

-- Location: LABCELL_X27_Y7_N30
\port_map_ula|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~1_combout\ = ( \port_map_ula|OP2|RESULTADO|C~13_combout\ & ( \port_map_ula|Mux5~0_combout\ & ( (\port_map_ula|Mux7~4_combout\ & !\port_map_ula|OP1|C~16_combout\) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~13_combout\ & ( 
-- \port_map_ula|Mux5~0_combout\ & ( (\port_map_ula|Mux7~4_combout\ & \port_map_ula|OP1|C~16_combout\) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~13_combout\ & ( !\port_map_ula|Mux5~0_combout\ ) ) # ( !\port_map_ula|OP2|RESULTADO|C~13_combout\ & ( 
-- !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux7~4_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~16_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~13_combout\,
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|Mux5~1_combout\);

-- Location: LABCELL_X27_Y5_N30
\port_map_mult4_2x1_ram_ula|Sout[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[13]~13_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\ & ( (\port_map_ula|Mux6~0_combout\) # (\port_map_unidade_de_controle|Mux7~0_combout\) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a13\ 
-- & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & \port_map_ula|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_ula|ALT_INV_Mux6~0_combout\,
	dataf => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[13]~13_combout\);

-- Location: FF_X27_Y5_N11
\port_map_banco_de_registradores|registradores~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[13]~13_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~50_q\);

-- Location: LABCELL_X27_Y5_N27
\port_map_banco_de_registradores|registradores~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~306_combout\ = ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~50_q\ ) ) # ( !\port_map_rom|rom_memory~6_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~34_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~50_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~306_combout\);

-- Location: LABCELL_X27_Y5_N36
\port_map_ula|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~1_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( (\port_map_banco_de_registradores|registradores~306_combout\ & (\port_map_rom|rom_memory~12_combout\ & !\port_map_rom|rom_memory~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux6~1_combout\);

-- Location: MLABCELL_X28_Y6_N42
\port_map_ula|OP2|RESULTADO|C~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~10_combout\ = ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( (!\port_map_banco_de_registradores|registradores~304_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & 
-- (\port_map_banco_de_registradores|registradores~301_combout\ & !\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\))) # (\port_map_banco_de_registradores|registradores~304_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\) # 
-- ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & \port_map_banco_de_registradores|registradores~301_combout\)))) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~8_combout\ & ( (!\port_map_banco_de_registradores|registradores~304_combout\ & 
-- (!\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # (\port_map_banco_de_registradores|registradores~301_combout\)))) # (\port_map_banco_de_registradores|registradores~304_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[12]~11_combout\) # (\port_map_banco_de_registradores|registradores~301_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100100011101111110010001100111011000000100011101100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~11_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~10_combout\);

-- Location: LABCELL_X27_Y5_N42
\port_map_ula|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~0_combout\ = ( \port_map_ula|Mux7~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~10_combout\ & ( ((!\port_map_ula|OP1|C~14_combout\ & (\port_map_ula|OP1|C~15_combout\)) # (\port_map_ula|OP1|C~14_combout\ & 
-- ((!\port_map_ula|OP1|C~15_combout\) # (\port_map_ula|Mux7~4_combout\)))) # (\port_map_ula|Mux6~1_combout\) ) ) ) # ( !\port_map_ula|Mux7~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~10_combout\ & ( ((\port_map_ula|OP1|C~15_combout\ & 
-- \port_map_ula|Mux7~4_combout\)) # (\port_map_ula|Mux6~1_combout\) ) ) ) # ( \port_map_ula|Mux7~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~10_combout\ & ( ((!\port_map_ula|OP1|C~14_combout\ & ((\port_map_ula|Mux7~4_combout\) # 
-- (\port_map_ula|OP1|C~15_combout\))) # (\port_map_ula|OP1|C~14_combout\ & (!\port_map_ula|OP1|C~15_combout\))) # (\port_map_ula|Mux6~1_combout\) ) ) ) # ( !\port_map_ula|Mux7~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~10_combout\ & ( 
-- ((!\port_map_ula|OP1|C~15_combout\ & \port_map_ula|Mux7~4_combout\)) # (\port_map_ula|Mux6~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101011111011111110101010101010111110111110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux6~1_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~14_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~15_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~4_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~5_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~10_combout\,
	combout => \port_map_ula|Mux6~0_combout\);

-- Location: MLABCELL_X25_Y5_N30
\port_map_mult4_2x1_ram_ula|Sout[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[12]~12_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ & ( \port_map_ula|OP1|C~13_combout\ & ( ((!\port_map_ula|Mux7~6_combout\) # ((\port_map_ula|OP2|RESULTADO|C~9_combout\ & 
-- \port_map_ula|Mux7~4_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\) ) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ & ( \port_map_ula|OP1|C~13_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- ((!\port_map_ula|Mux7~6_combout\) # ((\port_map_ula|OP2|RESULTADO|C~9_combout\ & \port_map_ula|Mux7~4_combout\)))) ) ) ) # ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ & ( !\port_map_ula|OP1|C~13_combout\ & ( ((!\port_map_ula|Mux7~6_combout\) # 
-- ((!\port_map_ula|OP2|RESULTADO|C~9_combout\ & \port_map_ula|Mux7~4_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\) ) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a12\ & ( !\port_map_ula|OP1|C~13_combout\ & ( 
-- (!\port_map_unidade_de_controle|Mux7~0_combout\ & ((!\port_map_ula|Mux7~6_combout\) # ((!\port_map_ula|OP2|RESULTADO|C~9_combout\ & \port_map_ula|Mux7~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101000110111011111110110001000100010101101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~6_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~4_combout\,
	datae => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \port_map_ula|OP1|ALT_INV_C~13_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[12]~12_combout\);

-- Location: FF_X25_Y5_N32
\port_map_banco_de_registradores|registradores~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_mult4_2x1_ram_ula|Sout[12]~12_combout\,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~33_q\);

-- Location: MLABCELL_X25_Y5_N12
\port_map_banco_de_registradores|registradores~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~303_combout\ = ( \port_map_banco_de_registradores|registradores~49_q\ & ( !\port_map_rom|rom_memory~3_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & ((\port_map_rom|rom_memory~1_combout\) # 
-- (\port_map_banco_de_registradores|registradores~33_q\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~49_q\ & ( !\port_map_rom|rom_memory~3_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_banco_de_registradores|registradores~33_q\ & !\port_map_rom|rom_memory~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001010100010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~49_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~303_combout\);

-- Location: MLABCELL_X25_Y5_N57
\port_map_ula|OP1|C~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~13_combout\ = ( \port_map_banco_de_registradores|registradores~304_combout\ & ( (!\port_map_banco_de_registradores|registradores~303_combout\) # (\port_map_unidade_de_controle|Mux9~0_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~304_combout\ & ( (!\port_map_unidade_de_controle|Mux9~0_combout\ & \port_map_banco_de_registradores|registradores~303_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~303_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~304_combout\,
	combout => \port_map_ula|OP1|C~13_combout\);

-- Location: MLABCELL_X25_Y6_N18
\port_map_ula|Mux7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~7_combout\ = ( \port_map_ula|OP1|C~13_combout\ & ( \port_map_ula|Mux7~6_combout\ & ( (\port_map_ula|OP2|RESULTADO|C~9_combout\ & \port_map_ula|Mux7~4_combout\) ) ) ) # ( !\port_map_ula|OP1|C~13_combout\ & ( \port_map_ula|Mux7~6_combout\ 
-- & ( (!\port_map_ula|OP2|RESULTADO|C~9_combout\ & \port_map_ula|Mux7~4_combout\) ) ) ) # ( \port_map_ula|OP1|C~13_combout\ & ( !\port_map_ula|Mux7~6_combout\ ) ) # ( !\port_map_ula|OP1|C~13_combout\ & ( !\port_map_ula|Mux7~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100010001000100001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~4_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~13_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~6_combout\,
	combout => \port_map_ula|Mux7~7_combout\);

-- Location: MLABCELL_X25_Y5_N0
\port_map_ula|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~1_combout\ = ( \port_map_ula|Mux7~3_combout\ & ( \port_map_ula|OP1|C~12_combout\ & ( !\port_map_banco_de_registradores|registradores~301_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) ) ) ) # ( 
-- !\port_map_ula|Mux7~3_combout\ & ( \port_map_ula|OP1|C~12_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ ) ) ) # ( \port_map_ula|Mux7~3_combout\ & ( !\port_map_ula|OP1|C~12_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~301_combout\ $ (\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) ) ) ) # ( !\port_map_ula|Mux7~3_combout\ & ( !\port_map_ula|OP1|C~12_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011000011001100000000111111110011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~3_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	combout => \port_map_ula|Mux8~1_combout\);

-- Location: MLABCELL_X25_Y5_N9
\port_map_mult4_2x1_ram_ula|Sout[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[11]~11_combout\ = ( \port_map_ula|Mux7~1_combout\ & ( \port_map_ula|Mux8~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ula|Mux8~1_combout\)) # (\port_map_ula|Mux7~2_combout\))) # 
-- (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\)))) ) ) ) # ( !\port_map_ula|Mux7~1_combout\ & ( \port_map_ula|Mux8~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (\port_map_ula|Mux7~2_combout\)) # (\port_map_unidade_de_controle|Mux7~0_combout\ & ((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\))) ) ) ) # ( \port_map_ula|Mux7~1_combout\ & ( !\port_map_ula|Mux8~0_combout\ & ( 
-- (!\port_map_unidade_de_controle|Mux7~0_combout\ & ((\port_map_ula|Mux8~1_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\)) ) ) ) # ( !\port_map_ula|Mux7~1_combout\ & ( 
-- !\port_map_ula|Mux8~0_combout\ & ( (\port_map_unidade_de_controle|Mux7~0_combout\ & \port_map_ram|mem_rtl_0|auto_generated|ram_block1a11\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011010111100100111001001110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datac => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \port_map_ula|ALT_INV_Mux8~1_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux8~0_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[11]~11_combout\);

-- Location: FF_X25_Y5_N8
\port_map_banco_de_registradores|registradores~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[11]~11_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~32_q\);

-- Location: MLABCELL_X25_Y5_N27
\port_map_banco_de_registradores|registradores~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~301_combout\ = (!\port_map_rom|rom_memory~6_combout\ & (\port_map_banco_de_registradores|registradores~32_q\)) # (\port_map_rom|rom_memory~6_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~48_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~48_q\,
	combout => \port_map_banco_de_registradores|registradores~301_combout\);

-- Location: MLABCELL_X28_Y6_N3
\port_map_ula|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~8_combout\ & ( !\port_map_banco_de_registradores|registradores~301_combout\ $ (((\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # (\port_map_ula|Mux7~0_combout\))) ) ) # ( 
-- !\port_map_ula|OP2|RESULTADO|C~8_combout\ & ( !\port_map_banco_de_registradores|registradores~301_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\) # (\port_map_ula|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010110100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	combout => \port_map_ula|Mux8~0_combout\);

-- Location: MLABCELL_X25_Y6_N36
\port_map_ula|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~2_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux8~1_combout\ & ( (\port_map_ula|Mux7~1_combout\) # (\port_map_ula|Mux8~0_combout\) ) ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux8~1_combout\ & ( 
-- \port_map_ula|Mux7~1_combout\ ) ) ) # ( \port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux8~1_combout\ & ( \port_map_ula|Mux8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_Mux8~0_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux8~1_combout\,
	combout => \port_map_ula|Mux8~2_combout\);

-- Location: LABCELL_X29_Y4_N21
\port_map_mult4_2x1_ram_ula|Sout[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[10]~10_combout\ = ( \port_map_ula|Mux9~4_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\) ) ) # ( !\port_map_ula|Mux9~4_combout\ & ( 
-- (\port_map_unidade_de_controle|Mux7~0_combout\ & \port_map_ram|mem_rtl_0|auto_generated|ram_block1a10\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \port_map_ula|ALT_INV_Mux9~4_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[10]~10_combout\);

-- Location: FF_X29_Y4_N20
\port_map_banco_de_registradores|registradores~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[10]~10_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~31_q\);

-- Location: LABCELL_X29_Y4_N48
\port_map_banco_de_registradores|registradores~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~300_combout\ = ( \port_map_banco_de_registradores|registradores~47_q\ & ( \port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~3_combout\) # (\port_map_rom|rom_memory~5_combout\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~47_q\ & ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~5_combout\ ) ) ) # ( \port_map_banco_de_registradores|registradores~47_q\ & ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- (\port_map_banco_de_registradores|registradores~31_q\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~3_combout\)) ) ) ) # ( !\port_map_banco_de_registradores|registradores~47_q\ & ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- (\port_map_banco_de_registradores|registradores~31_q\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~47_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~300_combout\);

-- Location: LABCELL_X29_Y4_N39
\port_map_mult1_2x1_br_ula|Sout[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( \port_map_banco_de_registradores|registradores~300_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datae => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~300_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[10]~9_combout\);

-- Location: LABCELL_X29_Y4_N9
\port_map_ula|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~3_combout\ = ( !\port_map_ula|Mux7~3_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[10]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~9_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~3_combout\,
	combout => \port_map_ula|Mux9~3_combout\);

-- Location: LABCELL_X29_Y4_N54
\port_map_ula|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~0_combout\ = ( \port_map_ula|Mux7~0_combout\ & ( \port_map_banco_de_registradores|registradores~299_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~299_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ula|Mux9~0_combout\);

-- Location: LABCELL_X29_Y4_N57
\port_map_ula|OP1|C~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~11_combout\ = ( \port_map_banco_de_registradores|registradores~299_combout\ & ( (!\port_map_banco_de_registradores|registradores~300_combout\) # ((\port_map_unidade_de_controle|Mux9~0_combout\) # (\port_map_rom|rom_memory~5_combout\)) 
-- ) ) # ( !\port_map_banco_de_registradores|registradores~299_combout\ & ( (\port_map_banco_de_registradores|registradores~300_combout\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_unidade_de_controle|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~300_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~299_combout\,
	combout => \port_map_ula|OP1|C~11_combout\);

-- Location: LABCELL_X29_Y4_N42
\port_map_ula|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~1_combout\ = ( \port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_ula|OP2|RESULTADO|C~6_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & \port_map_ula|OP1|C~11_combout\) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_ula|OP2|RESULTADO|C~6_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ $ (!\port_map_ula|OP1|C~11_combout\))) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~297_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~6_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & (!\port_map_ula|OP1|C~11_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\) # 
-- (\port_map_ula|OP2|RESULTADO|C~7_combout\))))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~6_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & (!\port_map_ula|OP1|C~11_combout\ $ 
-- (((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & \port_map_ula|OP2|RESULTADO|C~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000001000010000001000110001000100100010000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~11_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux9~1_combout\);

-- Location: LABCELL_X29_Y4_N24
\port_map_ula|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~2_combout\ = ( \port_map_ula|OP1|C~10_combout\ & ( \port_map_ula|Mux7~3_combout\ & ( !\port_map_ula|OP1|C~11_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & !\port_map_banco_de_registradores|registradores~297_combout\))) 
-- ) ) ) # ( !\port_map_ula|OP1|C~10_combout\ & ( \port_map_ula|Mux7~3_combout\ & ( !\port_map_ula|OP1|C~11_combout\ $ (((!\port_map_ula|OP1|C~9_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\) # 
-- (!\port_map_banco_de_registradores|registradores~297_combout\))) # (\port_map_ula|OP1|C~9_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & !\port_map_banco_de_registradores|registradores~297_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111111010000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~9_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~11_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~10_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~3_combout\,
	combout => \port_map_ula|Mux9~2_combout\);

-- Location: LABCELL_X29_Y4_N12
\port_map_ula|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~4_combout\ = ( \port_map_ula|Mux9~1_combout\ & ( \port_map_ula|Mux9~2_combout\ & ( (\port_map_ula|Mux7~2_combout\) # (\port_map_ula|Mux7~1_combout\) ) ) ) # ( !\port_map_ula|Mux9~1_combout\ & ( \port_map_ula|Mux9~2_combout\ & ( 
-- ((\port_map_ula|Mux9~0_combout\ & \port_map_ula|Mux7~2_combout\)) # (\port_map_ula|Mux7~1_combout\) ) ) ) # ( \port_map_ula|Mux9~1_combout\ & ( !\port_map_ula|Mux9~2_combout\ & ( ((\port_map_ula|Mux9~3_combout\ & \port_map_ula|Mux7~1_combout\)) # 
-- (\port_map_ula|Mux7~2_combout\) ) ) ) # ( !\port_map_ula|Mux9~1_combout\ & ( !\port_map_ula|Mux9~2_combout\ & ( (!\port_map_ula|Mux9~3_combout\ & (\port_map_ula|Mux9~0_combout\ & ((\port_map_ula|Mux7~2_combout\)))) # (\port_map_ula|Mux9~3_combout\ & 
-- (((\port_map_ula|Mux9~0_combout\ & \port_map_ula|Mux7~2_combout\)) # (\port_map_ula|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001011111111100001111001111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux9~3_combout\,
	datab => \port_map_ula|ALT_INV_Mux9~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datae => \port_map_ula|ALT_INV_Mux9~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux9~2_combout\,
	combout => \port_map_ula|Mux9~4_combout\);

-- Location: LABCELL_X27_Y4_N36
\port_map_ula|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~1_combout\ = ( \port_map_ula|Mux7~3_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ $ (!\port_map_banco_de_registradores|registradores~297_combout\ $ (((\port_map_ula|OP1|C~10_combout\) # (\port_map_ula|OP1|C~9_combout\)))) 
-- ) ) # ( !\port_map_ula|Mux7~3_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~9_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~10_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~3_combout\,
	combout => \port_map_ula|Mux10~1_combout\);

-- Location: LABCELL_X27_Y4_N6
\port_map_mult4_2x1_ram_ula|Sout[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\ = ( \port_map_ula|Mux10~1_combout\ & ( \port_map_ula|Mux7~1_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\) ) ) ) # ( 
-- !\port_map_ula|Mux10~1_combout\ & ( \port_map_ula|Mux7~1_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ula|Mux10~0_combout\ & (\port_map_ula|Mux7~2_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\)))) ) ) ) # ( \port_map_ula|Mux10~1_combout\ & ( !\port_map_ula|Mux7~1_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ula|Mux10~0_combout\ & 
-- (\port_map_ula|Mux7~2_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\)))) ) ) ) # ( !\port_map_ula|Mux10~1_combout\ & ( !\port_map_ula|Mux7~1_combout\ & ( 
-- (!\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ula|Mux10~0_combout\ & (\port_map_ula|Mux7~2_combout\))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a9\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011100000010010101111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ula|ALT_INV_Mux10~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datad => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datae => \port_map_ula|ALT_INV_Mux10~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~1_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\);

-- Location: FF_X27_Y4_N20
\port_map_banco_de_registradores|registradores~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[9]~9_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~30_q\);

-- Location: MLABCELL_X25_Y5_N48
\port_map_banco_de_registradores|registradores~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~297_combout\ = ( \port_map_banco_de_registradores|registradores~30_q\ & ( \port_map_banco_de_registradores|registradores~46_q\ ) ) # ( !\port_map_banco_de_registradores|registradores~30_q\ & ( 
-- \port_map_banco_de_registradores|registradores~46_q\ & ( \port_map_rom|rom_memory~6_combout\ ) ) ) # ( \port_map_banco_de_registradores|registradores~30_q\ & ( !\port_map_banco_de_registradores|registradores~46_q\ & ( !\port_map_rom|rom_memory~6_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~46_q\,
	combout => \port_map_banco_de_registradores|registradores~297_combout\);

-- Location: LABCELL_X27_Y4_N57
\port_map_ula|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~6_combout\ & ( !\port_map_banco_de_registradores|registradores~297_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\) # (\port_map_ula|Mux7~0_combout\))) ) ) # ( 
-- !\port_map_ula|OP2|RESULTADO|C~6_combout\ & ( !\port_map_banco_de_registradores|registradores~297_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ $ (!\port_map_ula|OP2|RESULTADO|C~7_combout\)) # (\port_map_ula|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010101100101100101010110010101100101011001010110010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux10~0_combout\);

-- Location: LABCELL_X27_Y4_N12
\port_map_ula|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~2_combout\ = ( \port_map_ula|Mux10~1_combout\ & ( \port_map_ula|Mux7~1_combout\ ) ) # ( !\port_map_ula|Mux10~1_combout\ & ( \port_map_ula|Mux7~1_combout\ & ( (\port_map_ula|Mux7~2_combout\ & \port_map_ula|Mux10~0_combout\) ) ) ) # ( 
-- \port_map_ula|Mux10~1_combout\ & ( !\port_map_ula|Mux7~1_combout\ & ( (\port_map_ula|Mux7~2_combout\ & \port_map_ula|Mux10~0_combout\) ) ) ) # ( !\port_map_ula|Mux10~1_combout\ & ( !\port_map_ula|Mux7~1_combout\ & ( (\port_map_ula|Mux7~2_combout\ & 
-- \port_map_ula|Mux10~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datad => \port_map_ula|ALT_INV_Mux10~0_combout\,
	datae => \port_map_ula|ALT_INV_Mux10~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~1_combout\,
	combout => \port_map_ula|Mux10~2_combout\);

-- Location: LABCELL_X27_Y6_N0
\port_map_ula|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~0_combout\ = ( \port_map_banco_de_registradores|registradores~290_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ (\port_map_ula|OP2|RESULTADO|C~4_combout\)) # (\port_map_ula|Mux7~0_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~290_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ (!\port_map_ula|OP2|RESULTADO|C~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000010100101111111111010010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	combout => \port_map_ula|Mux13~0_combout\);

-- Location: LABCELL_X27_Y6_N57
\port_map_mult4_2x1_ram_ula|Sout[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[6]~6_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux13~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\) ) ) ) # ( 
-- !\port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux13~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ula|Mux13~1_combout\ & \port_map_ula|Mux7~1_combout\)))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\)) ) ) ) # ( \port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux13~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ula|Mux13~1_combout\ & \port_map_ula|Mux7~1_combout\)))) 
-- # (\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\)) ) ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux13~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (((\port_map_ula|Mux13~1_combout\ & \port_map_ula|Mux7~1_combout\)))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101100010001000110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datac => \port_map_ula|ALT_INV_Mux13~1_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux13~0_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[6]~6_combout\);

-- Location: FF_X27_Y6_N56
\port_map_banco_de_registradores|registradores~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[6]~6_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~27_q\);

-- Location: LABCELL_X27_Y5_N33
\port_map_banco_de_registradores|registradores~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~291_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~43_q\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~27_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~43_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~291_combout\);

-- Location: MLABCELL_X28_Y5_N51
\port_map_mult1_2x1_br_ula|Sout[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~291_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\);

-- Location: LABCELL_X27_Y6_N15
\port_map_ula|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~1_combout\ = ( \port_map_ula|OP1|C~6_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ (((!\port_map_banco_de_registradores|registradores~290_combout\) # (!\port_map_ula|Mux7~3_combout\))) ) ) # ( 
-- !\port_map_ula|OP1|C~6_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ (((!\port_map_ula|Mux7~3_combout\) # (\port_map_banco_de_registradores|registradores~290_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~3_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux13~1_combout\);

-- Location: LABCELL_X27_Y6_N18
\port_map_ula|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~2_combout\ = ( \port_map_ula|Mux13~0_combout\ & ( ((\port_map_ula|Mux7~1_combout\ & \port_map_ula|Mux13~1_combout\)) # (\port_map_ula|Mux7~2_combout\) ) ) # ( !\port_map_ula|Mux13~0_combout\ & ( (\port_map_ula|Mux7~1_combout\ & 
-- \port_map_ula|Mux13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datab => \port_map_ula|ALT_INV_Mux13~1_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux13~0_combout\,
	combout => \port_map_ula|Mux13~2_combout\);

-- Location: LABCELL_X31_Y6_N6
\port_map_mult4_2x1_ram_ula|Sout[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[5]~5_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ & ( \port_map_ula|Mux14~4_combout\ ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ & ( \port_map_ula|Mux14~4_combout\ & ( 
-- !\port_map_unidade_de_controle|Mux7~0_combout\ ) ) ) # ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ & ( !\port_map_ula|Mux14~4_combout\ & ( \port_map_unidade_de_controle|Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datae => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \port_map_ula|ALT_INV_Mux14~4_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[5]~5_combout\);

-- Location: FF_X31_Y6_N56
\port_map_banco_de_registradores|registradores~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[5]~5_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~26_q\);

-- Location: LABCELL_X27_Y5_N12
\port_map_banco_de_registradores|registradores~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~289_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~42_q\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (\port_map_banco_de_registradores|registradores~26_q\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~289_combout\);

-- Location: LABCELL_X27_Y5_N21
\port_map_ula|OP1|C~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~5_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_banco_de_registradores|registradores~288_combout\ ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_banco_de_registradores|registradores~288_combout\ $ 
-- (((!\port_map_banco_de_registradores|registradores~289_combout\) # (\port_map_unidade_de_controle|Mux9~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	datab => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|OP1|C~5_combout\);

-- Location: LABCELL_X31_Y6_N36
\port_map_ula|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~2_combout\ = ( \port_map_ula|OP1|C~4_combout\ & ( \port_map_ula|OP1|C~3_combout\ & ( (\port_map_ula|Mux7~3_combout\ & (!\port_map_ula|OP1|C~5_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & 
-- !\port_map_banco_de_registradores|registradores~286_combout\))))) ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( \port_map_ula|OP1|C~3_combout\ & ( (\port_map_ula|Mux7~3_combout\ & (!\port_map_ula|OP1|C~5_combout\ $ 
-- (((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & !\port_map_banco_de_registradores|registradores~286_combout\))))) ) ) ) # ( \port_map_ula|OP1|C~4_combout\ & ( !\port_map_ula|OP1|C~3_combout\ & ( (\port_map_ula|Mux7~3_combout\ & 
-- (!\port_map_ula|OP1|C~5_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & !\port_map_banco_de_registradores|registradores~286_combout\))))) ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( !\port_map_ula|OP1|C~3_combout\ & ( 
-- (\port_map_ula|Mux7~3_combout\ & (!\port_map_ula|OP1|C~5_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # (!\port_map_banco_de_registradores|registradores~286_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010000100110010000000010011001000000001001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~5_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~4_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~3_combout\,
	combout => \port_map_ula|Mux14~2_combout\);

-- Location: LABCELL_X31_Y6_N12
\port_map_ula|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~0_combout\ = ( \port_map_banco_de_registradores|registradores~288_combout\ & ( \port_map_ula|Mux7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~288_combout\,
	combout => \port_map_ula|Mux14~0_combout\);

-- Location: LABCELL_X31_Y6_N33
\port_map_ula|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~3_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ( !\port_map_ula|Mux7~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_Mux7~3_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\,
	combout => \port_map_ula|Mux14~3_combout\);

-- Location: LABCELL_X31_Y6_N42
\port_map_ula|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~1_combout\ = ( !\port_map_ula|Mux7~0_combout\ & ( \port_map_ula|OP2|RESULTADO|C~2_combout\ & ( !\port_map_ula|OP1|C~5_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~286_combout\))) ) ) ) # ( !\port_map_ula|Mux7~0_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~2_combout\ & ( !\port_map_ula|OP1|C~5_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~286_combout\) # (\port_map_ula|OP2|RESULTADO|C~3_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & (\port_map_ula|OP2|RESULTADO|C~3_combout\ & 
-- \port_map_banco_de_registradores|registradores~286_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010000101011000000000000000001010000101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datab => \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~5_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\,
	combout => \port_map_ula|Mux14~1_combout\);

-- Location: LABCELL_X31_Y6_N24
\port_map_ula|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~4_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux14~1_combout\ ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux14~1_combout\ & ( (\port_map_ula|Mux7~1_combout\ & ((\port_map_ula|Mux14~3_combout\) # 
-- (\port_map_ula|Mux14~2_combout\))) ) ) ) # ( \port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux14~1_combout\ & ( ((\port_map_ula|Mux7~1_combout\ & ((\port_map_ula|Mux14~3_combout\) # (\port_map_ula|Mux14~2_combout\)))) # (\port_map_ula|Mux14~0_combout\) 
-- ) ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux14~1_combout\ & ( (\port_map_ula|Mux7~1_combout\ & ((\port_map_ula|Mux14~3_combout\) # (\port_map_ula|Mux14~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111001100110111111100000000010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux14~2_combout\,
	datab => \port_map_ula|ALT_INV_Mux14~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux14~3_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux14~1_combout\,
	combout => \port_map_ula|Mux14~4_combout\);

-- Location: LABCELL_X31_Y5_N27
\port_map_mult4_2x1_ram_ula|Sout[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[4]~4_combout\ = ( \port_map_ula|Mux15~2_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\) ) ) # ( !\port_map_ula|Mux15~2_combout\ & ( 
-- (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\ & \port_map_unidade_de_controle|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_ula|ALT_INV_Mux15~2_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[4]~4_combout\);

-- Location: FF_X31_Y5_N29
\port_map_banco_de_registradores|registradores~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_mult4_2x1_ram_ula|Sout[4]~4_combout\,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~25_q\);

-- Location: LABCELL_X31_Y5_N45
\port_map_banco_de_registradores|registradores~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~287_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~41_q\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~3_combout\ & (\port_map_banco_de_registradores|registradores~25_q\ & !\port_map_rom|rom_memory~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~287_combout\);

-- Location: LABCELL_X29_Y5_N45
\port_map_mult1_2x1_br_ula|Sout[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ = ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~287_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~287_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\);

-- Location: LABCELL_X30_Y6_N57
\port_map_ula|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux15~1_combout\ = ( \port_map_ula|OP1|C~4_combout\ & ( \port_map_ula|OP1|C~3_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ (((!\port_map_ula|Mux7~3_combout\) # (\port_map_banco_de_registradores|registradores~286_combout\))) 
-- ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( \port_map_ula|OP1|C~3_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ (((!\port_map_ula|Mux7~3_combout\) # (\port_map_banco_de_registradores|registradores~286_combout\))) ) ) ) # ( 
-- \port_map_ula|OP1|C~4_combout\ & ( !\port_map_ula|OP1|C~3_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ (((!\port_map_ula|Mux7~3_combout\) # (\port_map_banco_de_registradores|registradores~286_combout\))) ) ) ) # ( 
-- !\port_map_ula|OP1|C~4_combout\ & ( !\port_map_ula|OP1|C~3_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ (((!\port_map_banco_de_registradores|registradores~286_combout\) # (!\port_map_ula|Mux7~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101011001100101010101100110010101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~3_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~4_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~3_combout\,
	combout => \port_map_ula|Mux15~1_combout\);

-- Location: LABCELL_X29_Y6_N3
\port_map_ula|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux15~0_combout\ = ( \port_map_ula|Mux7~0_combout\ & ( \port_map_banco_de_registradores|registradores~286_combout\ ) ) # ( !\port_map_ula|Mux7~0_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ 
-- (!\port_map_banco_de_registradores|registradores~286_combout\ $ (((!\port_map_ula|OP2|RESULTADO|C~2_combout\ & !\port_map_ula|OP2|RESULTADO|C~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001011010100101100101101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datab => \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ula|Mux15~0_combout\);

-- Location: LABCELL_X30_Y6_N18
\port_map_ula|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux15~2_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( ((\port_map_ula|Mux15~1_combout\ & \port_map_ula|Mux7~1_combout\)) # (\port_map_ula|Mux15~0_combout\) ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( (\port_map_ula|Mux15~1_combout\ & 
-- \port_map_ula|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux15~1_combout\,
	datac => \port_map_ula|ALT_INV_Mux15~0_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~2_combout\,
	combout => \port_map_ula|Mux15~2_combout\);

-- Location: LABCELL_X30_Y6_N36
\port_map_mult4_2x1_ram_ula|Sout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[3]~3_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ula|Mux16~2_combout\) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\ & 
-- ( (\port_map_ula|Mux16~2_combout\ & !\port_map_unidade_de_controle|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_Mux16~2_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[3]~3_combout\);

-- Location: FF_X30_Y6_N56
\port_map_banco_de_registradores|registradores~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[3]~3_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~40_q\);

-- Location: LABCELL_X29_Y6_N51
\port_map_banco_de_registradores|registradores~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~284_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((\port_map_banco_de_registradores|registradores~40_q\ & !\port_map_rom|rom_memory~3_combout\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~24_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~284_combout\);

-- Location: LABCELL_X30_Y6_N42
\port_map_banco_de_registradores|registradores~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~285_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_banco_de_registradores|registradores~284_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_banco_de_registradores|registradores~285_combout\);

-- Location: LABCELL_X30_Y6_N6
\port_map_ula|OP1|C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~2_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_banco_de_registradores|registradores~282_combout\ & (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~279_combout\) # (\port_map_ula|OP1|C~0_combout\)))) # (\port_map_banco_de_registradores|registradores~282_combout\ & (((\port_map_banco_de_registradores|registradores~279_combout\) # 
-- (\port_map_ula|OP1|C~0_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_banco_de_registradores|registradores~282_combout\ & (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ 
-- & (\port_map_ula|OP1|C~0_combout\ & \port_map_banco_de_registradores|registradores~279_combout\))) # (\port_map_banco_de_registradores|registradores~282_combout\ & (((\port_map_ula|OP1|C~0_combout\ & 
-- \port_map_banco_de_registradores|registradores~279_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	combout => \port_map_ula|OP1|C~2_combout\);

-- Location: LABCELL_X30_Y6_N51
\port_map_ula|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux16~1_combout\ = ( \port_map_banco_de_registradores|registradores~283_combout\ & ( (!\port_map_ula|Mux7~3_combout\ & (\port_map_banco_de_registradores|registradores~285_combout\ & ((!\port_map_unidade_de_controle|Mux9~0_combout\)))) # 
-- (\port_map_ula|Mux7~3_combout\ & (!\port_map_ula|OP1|C~2_combout\ $ (((\port_map_banco_de_registradores|registradores~285_combout\ & !\port_map_unidade_de_controle|Mux9~0_combout\))))) ) ) # ( !\port_map_banco_de_registradores|registradores~283_combout\ & 
-- ( (!\port_map_ula|Mux7~3_combout\ & (\port_map_banco_de_registradores|registradores~285_combout\ & ((!\port_map_unidade_de_controle|Mux9~0_combout\)))) # (\port_map_ula|Mux7~3_combout\ & (!\port_map_ula|OP1|C~2_combout\ $ 
-- (((!\port_map_banco_de_registradores|registradores~285_combout\) # (\port_map_unidade_de_controle|Mux9~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000000101001101100000010101100011010100000110001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~3_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~285_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~2_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	combout => \port_map_ula|Mux16~1_combout\);

-- Location: LABCELL_X30_Y6_N9
\port_map_ula|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux16~0_combout\ = ( !\port_map_ula|Mux7~0_combout\ & ( !\port_map_ula|OP1|C~1_combout\ $ (((!\port_map_banco_de_registradores|registradores~282_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & 
-- \port_map_ula|OP2|RESULTADO|C~1_combout\)) # (\port_map_banco_de_registradores|registradores~282_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\) # (\port_map_ula|OP2|RESULTADO|C~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001001001101101100100100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ula|Mux16~0_combout\);

-- Location: LABCELL_X30_Y6_N12
\port_map_ula|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux16~2_combout\ = ( \port_map_ula|Mux7~1_combout\ & ( \port_map_banco_de_registradores|registradores~283_combout\ & ( ((\port_map_ula|Mux7~2_combout\ & ((\port_map_ula|Mux7~0_combout\) # (\port_map_ula|Mux16~0_combout\)))) # 
-- (\port_map_ula|Mux16~1_combout\) ) ) ) # ( !\port_map_ula|Mux7~1_combout\ & ( \port_map_banco_de_registradores|registradores~283_combout\ & ( (\port_map_ula|Mux7~2_combout\ & ((\port_map_ula|Mux7~0_combout\) # (\port_map_ula|Mux16~0_combout\))) ) ) ) # ( 
-- \port_map_ula|Mux7~1_combout\ & ( !\port_map_banco_de_registradores|registradores~283_combout\ & ( ((\port_map_ula|Mux16~0_combout\ & \port_map_ula|Mux7~2_combout\)) # (\port_map_ula|Mux16~1_combout\) ) ) ) # ( !\port_map_ula|Mux7~1_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~283_combout\ & ( (\port_map_ula|Mux16~0_combout\ & \port_map_ula|Mux7~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110101011100000011000011110101011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux16~1_combout\,
	datab => \port_map_ula|ALT_INV_Mux16~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	combout => \port_map_ula|Mux16~2_combout\);

-- Location: LABCELL_X30_Y6_N48
\port_map_mult4_2x1_ram_ula|Sout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[2]~2_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\ & ( (\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ula|Mux17~1_combout\) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\ & 
-- ( (\port_map_ula|Mux17~1_combout\ & !\port_map_unidade_de_controle|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_Mux17~1_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	dataf => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[2]~2_combout\);

-- Location: FF_X30_Y6_N44
\port_map_banco_de_registradores|registradores~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[2]~2_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~39_q\);

-- Location: LABCELL_X30_Y6_N27
\port_map_banco_de_registradores|registradores~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~282_combout\ = ( \port_map_banco_de_registradores|registradores~39_q\ & ( \port_map_banco_de_registradores|registradores~23_q\ ) ) # ( !\port_map_banco_de_registradores|registradores~39_q\ & ( 
-- \port_map_banco_de_registradores|registradores~23_q\ & ( ((!\port_map_rom|rom_memory~4_combout\) # ((!\port_map_pc|outPort\(0)) # (\port_map_pc|outPort\(2)))) # (\port_map_pc|outPort\(1)) ) ) ) # ( \port_map_banco_de_registradores|registradores~39_q\ & ( 
-- !\port_map_banco_de_registradores|registradores~23_q\ & ( (!\port_map_pc|outPort\(1) & (\port_map_rom|rom_memory~4_combout\ & (\port_map_pc|outPort\(0) & !\port_map_pc|outPort\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_pc|ALT_INV_outPort\(2),
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	combout => \port_map_banco_de_registradores|registradores~282_combout\);

-- Location: LABCELL_X30_Y6_N3
\port_map_ula|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux17~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( (\port_map_ula|Mux7~2_combout\ & (!\port_map_banco_de_registradores|registradores~282_combout\ $ (((!\port_map_ula|OP2|RESULTADO|C~1_combout\) # 
-- (\port_map_ula|Mux7~0_combout\))))) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( (\port_map_ula|Mux7~2_combout\ & (!\port_map_banco_de_registradores|registradores~282_combout\ $ (((\port_map_ula|OP2|RESULTADO|C~1_combout\) # 
-- (\port_map_ula|Mux7~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010100000100010100010000010001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	combout => \port_map_ula|Mux17~0_combout\);

-- Location: LABCELL_X30_Y6_N39
\port_map_ula|OP1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|S\(2) = ( \port_map_banco_de_registradores|registradores~282_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (\port_map_banco_de_registradores|registradores~279_combout\ & 
-- \port_map_ula|OP1|C~0_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ((\port_map_ula|OP1|C~0_combout\) # (\port_map_banco_de_registradores|registradores~279_combout\))))) ) ) # ( !\port_map_banco_de_registradores|registradores~282_combout\ 
-- & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ((!\port_map_banco_de_registradores|registradores~279_combout\) # (!\port_map_ula|OP1|C~0_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ 
-- & (!\port_map_banco_de_registradores|registradores~279_combout\ & !\port_map_ula|OP1|C~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	combout => \port_map_ula|OP1|S\(2));

-- Location: LABCELL_X30_Y6_N45
\port_map_ula|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux17~1_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( ((\port_map_ula|Mux7~1_combout\ & ((!\port_map_ula|Mux7~3_combout\) # (\port_map_ula|OP1|S\(2))))) # (\port_map_ula|Mux17~0_combout\) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( ((\port_map_ula|OP1|S\(2) & (\port_map_ula|Mux7~1_combout\ & \port_map_ula|Mux7~3_combout\))) # (\port_map_ula|Mux17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010111010101010101011101011111010101110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux17~0_combout\,
	datab => \port_map_ula|OP1|ALT_INV_S\(2),
	datac => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~3_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	combout => \port_map_ula|Mux17~1_combout\);

-- Location: LABCELL_X31_Y5_N30
\port_map_mult4_2x1_ram_ula|Sout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[1]~1_combout\ = ( \port_map_unidade_de_controle|Mux7~0_combout\ & ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\ ) ) # ( !\port_map_unidade_de_controle|Mux7~0_combout\ & ( \port_map_ula|Mux18~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_Mux18~2_combout\,
	datad => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[1]~1_combout\);

-- Location: FF_X31_Y5_N53
\port_map_banco_de_registradores|registradores~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[1]~1_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~22_q\);

-- Location: LABCELL_X29_Y5_N42
\port_map_banco_de_registradores|registradores~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~280_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((!\port_map_rom|rom_memory~3_combout\ & \port_map_banco_de_registradores|registradores~38_q\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~5_combout\ & (\port_map_banco_de_registradores|registradores~22_q\ & !\port_map_rom|rom_memory~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~280_combout\);

-- Location: LABCELL_X29_Y5_N51
\port_map_mult1_2x1_br_ula|Sout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( (\port_map_unidade_de_controle|Mux9~0_combout\ & \port_map_rom|rom_memory~3_combout\) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- (!\port_map_unidade_de_controle|Mux9~0_combout\ & ((\port_map_banco_de_registradores|registradores~280_combout\))) # (\port_map_unidade_de_controle|Mux9~0_combout\ & (\port_map_rom|rom_memory~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\);

-- Location: LABCELL_X31_Y5_N57
\port_map_ula|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~1_combout\ = ( \port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ $ (((!\port_map_ula|Mux7~3_combout\) # (\port_map_ula|OP1|C~0_combout\))) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ $ (((!\port_map_ula|OP1|C~0_combout\) # (!\port_map_ula|Mux7~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~3_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	combout => \port_map_ula|Mux18~1_combout\);

-- Location: LABCELL_X31_Y5_N12
\port_map_ula|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~0_combout\ = ( \port_map_banco_de_registradores|registradores~279_combout\ & ( (!\port_map_ula|OP2|RESULTADO|C~0_combout\ $ (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)) # (\port_map_ula|Mux7~0_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~279_combout\ & ( (!\port_map_ula|Mux7~0_combout\ & (!\port_map_ula|OP2|RESULTADO|C~0_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011110011001111111111001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	combout => \port_map_ula|Mux18~0_combout\);

-- Location: LABCELL_X31_Y5_N36
\port_map_ula|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~2_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( ((\port_map_ula|Mux18~1_combout\ & \port_map_ula|Mux7~1_combout\)) # (\port_map_ula|Mux18~0_combout\) ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( (\port_map_ula|Mux18~1_combout\ & 
-- \port_map_ula|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux18~1_combout\,
	datab => \port_map_ula|ALT_INV_Mux18~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_ula|ALT_INV_Mux7~2_combout\,
	combout => \port_map_ula|Mux18~2_combout\);

-- Location: LABCELL_X31_Y5_N42
\port_map_mult4_2x1_ram_ula|Sout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[0]~0_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\port_map_ula|Mux19~0_combout\) # (\port_map_unidade_de_controle|Mux7~0_combout\) ) ) # ( 
-- !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & \port_map_ula|Mux19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_ula|ALT_INV_Mux19~0_combout\,
	dataf => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[0]~0_combout\);

-- Location: FF_X31_Y5_N38
\port_map_banco_de_registradores|registradores~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[0]~0_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~37_q\);

-- Location: LABCELL_X29_Y5_N54
\port_map_banco_de_registradores|registradores~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~277_combout\ = ( \port_map_rom|rom_memory~3_combout\ & ( (\port_map_rom|rom_memory~1_combout\ & \port_map_rom|rom_memory~5_combout\) ) ) # ( !\port_map_rom|rom_memory~3_combout\ & ( 
-- (!\port_map_rom|rom_memory~1_combout\ & (!\port_map_rom|rom_memory~5_combout\ & ((\port_map_banco_de_registradores|registradores~21_q\)))) # (\port_map_rom|rom_memory~1_combout\ & (((\port_map_banco_de_registradores|registradores~37_q\)) # 
-- (\port_map_rom|rom_memory~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010110011101000101011001110100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~277_combout\);

-- Location: LABCELL_X29_Y4_N30
\port_map_mult1_2x1_br_ula|Sout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ = ( \port_map_banco_de_registradores|registradores~277_combout\ & ( (!\port_map_unidade_de_controle|Mux9~0_combout\ & (!\port_map_rom|rom_memory~5_combout\)) # (\port_map_unidade_de_controle|Mux9~0_combout\ & 
-- ((\port_map_rom|rom_memory~1_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~277_combout\ & ( (\port_map_rom|rom_memory~1_combout\ & \port_map_unidade_de_controle|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110101010000011111010101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\);

-- Location: MLABCELL_X28_Y4_N6
\port_map_ula|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux19~0_combout\ = ( \port_map_rom|rom_memory~12_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( (!\port_map_rom|rom_memory~10_combout\ & (((\port_map_banco_de_registradores|registradores~278_combout\)))) # 
-- (\port_map_rom|rom_memory~10_combout\ & (\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & (\port_map_rom|rom_memory~9_combout\))) ) ) ) # ( !\port_map_rom|rom_memory~12_combout\ & ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ $ (!\port_map_banco_de_registradores|registradores~278_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000011111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux19~0_combout\);

-- Location: LABCELL_X27_Y6_N45
\port_map_mult4_2x1_ram_ula|Sout[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[7]~7_combout\ = ( \port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux12~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\) # (\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( 
-- !\port_map_ula|Mux7~2_combout\ & ( \port_map_ula|Mux12~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ula|Mux7~1_combout\ & ((\port_map_ula|Mux12~1_combout\)))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\)))) ) ) ) # ( \port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux12~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ula|Mux7~1_combout\ & 
-- ((\port_map_ula|Mux12~1_combout\)))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\)))) ) ) ) # ( !\port_map_ula|Mux7~2_combout\ & ( !\port_map_ula|Mux12~0_combout\ & ( 
-- (!\port_map_unidade_de_controle|Mux7~0_combout\ & (\port_map_ula|Mux7~1_combout\ & ((\port_map_ula|Mux12~1_combout\)))) # (\port_map_unidade_de_controle|Mux7~0_combout\ & (((\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datac => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datad => \port_map_ula|ALT_INV_Mux12~1_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux12~0_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[7]~7_combout\);

-- Location: FF_X27_Y6_N53
\port_map_banco_de_registradores|registradores~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[7]~7_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~44_q\);

-- Location: LABCELL_X27_Y6_N36
\port_map_banco_de_registradores|registradores~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~293_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( ((\port_map_banco_de_registradores|registradores~44_q\ & !\port_map_rom|rom_memory~3_combout\)) # (\port_map_rom|rom_memory~5_combout\) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( (\port_map_banco_de_registradores|registradores~28_q\ & (!\port_map_rom|rom_memory~5_combout\ & !\port_map_rom|rom_memory~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000001011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~44_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~293_combout\);

-- Location: LABCELL_X27_Y6_N33
\port_map_mult1_2x1_br_ula|Sout[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ = ( \port_map_banco_de_registradores|registradores~293_combout\ & ( (!\port_map_unidade_de_controle|Mux9~0_combout\ & !\port_map_rom|rom_memory~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~293_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\);

-- Location: LABCELL_X27_Y5_N54
\port_map_ula|OP1|C~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~7_combout\ = ( \port_map_ula|OP1|C~6_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & (\port_map_banco_de_registradores|registradores~290_combout\ & 
-- \port_map_banco_de_registradores|registradores~292_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & \port_map_banco_de_registradores|registradores~290_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~292_combout\))) ) ) # ( !\port_map_ula|OP1|C~6_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_banco_de_registradores|registradores~292_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~290_combout\) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (((\port_map_banco_de_registradores|registradores~292_combout\) # 
-- (\port_map_banco_de_registradores|registradores~290_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111111000101010111111100000001010101110000000101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~6_combout\,
	combout => \port_map_ula|OP1|C~7_combout\);

-- Location: LABCELL_X27_Y5_N39
\port_map_ula|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~1_combout\ = ( \port_map_banco_de_registradores|registradores~294_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[8]~7_combout\ $ (((!\port_map_ula|Mux7~3_combout\) # (\port_map_ula|OP1|C~7_combout\))) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~294_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[8]~7_combout\ $ (((!\port_map_ula|OP1|C~7_combout\) # (!\port_map_ula|Mux7~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101000001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~7_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[8]~7_combout\,
	datad => \port_map_ula|ALT_INV_Mux7~3_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~294_combout\,
	combout => \port_map_ula|Mux11~1_combout\);

-- Location: LABCELL_X27_Y5_N3
\port_map_mult4_2x1_ram_ula|Sout[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult4_2x1_ram_ula|Sout[8]~8_combout\ = ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ & ( \port_map_ula|Mux11~0_combout\ & ( (((\port_map_ula|Mux11~1_combout\ & \port_map_ula|Mux7~1_combout\)) # 
-- (\port_map_unidade_de_controle|Mux7~0_combout\)) # (\port_map_ula|Mux7~2_combout\) ) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ & ( \port_map_ula|Mux11~0_combout\ & ( (!\port_map_unidade_de_controle|Mux7~0_combout\ & 
-- (((\port_map_ula|Mux11~1_combout\ & \port_map_ula|Mux7~1_combout\)) # (\port_map_ula|Mux7~2_combout\))) ) ) ) # ( \port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ & ( !\port_map_ula|Mux11~0_combout\ & ( ((\port_map_ula|Mux11~1_combout\ & 
-- \port_map_ula|Mux7~1_combout\)) # (\port_map_unidade_de_controle|Mux7~0_combout\) ) ) ) # ( !\port_map_ram|mem_rtl_0|auto_generated|ram_block1a8\ & ( !\port_map_ula|Mux11~0_combout\ & ( (\port_map_ula|Mux11~1_combout\ & (\port_map_ula|Mux7~1_combout\ & 
-- !\port_map_unidade_de_controle|Mux7~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111111101010111000000000101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~2_combout\,
	datab => \port_map_ula|ALT_INV_Mux11~1_combout\,
	datac => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datad => \port_map_unidade_de_controle|ALT_INV_Mux7~0_combout\,
	datae => \port_map_ram|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \port_map_ula|ALT_INV_Mux11~0_combout\,
	combout => \port_map_mult4_2x1_ram_ula|Sout[8]~8_combout\);

-- Location: FF_X27_Y5_N2
\port_map_banco_de_registradores|registradores~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_mult4_2x1_ram_ula|Sout[8]~8_combout\,
	sload => VCC,
	ena => \port_map_banco_de_registradores|registradores~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~29_q\);

-- Location: LABCELL_X27_Y5_N24
\port_map_banco_de_registradores|registradores~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~294_combout\ = ( \port_map_rom|rom_memory~13_combout\ & ( (!\port_map_rom|rom_memory~14_combout\ & (\port_map_banco_de_registradores|registradores~29_q\)) # (\port_map_rom|rom_memory~14_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~45_q\))) ) ) # ( !\port_map_rom|rom_memory~13_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~14_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~45_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~13_combout\,
	combout => \port_map_banco_de_registradores|registradores~294_combout\);

-- Location: LABCELL_X27_Y5_N48
\port_map_ula|OP1|C~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~8_combout\ = ( \port_map_banco_de_registradores|registradores~295_combout\ & ( !\port_map_banco_de_registradores|registradores~294_combout\ $ (((\port_map_rom|rom_memory~5_combout\) # (\port_map_unidade_de_controle|Mux9~0_combout\))) ) 
-- ) # ( !\port_map_banco_de_registradores|registradores~295_combout\ & ( \port_map_banco_de_registradores|registradores~294_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~294_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~295_combout\,
	combout => \port_map_ula|OP1|C~8_combout\);

-- Location: LABCELL_X27_Y5_N6
\port_map_ula|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~5_combout\ = (!\port_map_ula|OP1|C~8_combout\ & !\port_map_ula|OP1|C~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|OP1|ALT_INV_C~8_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~5_combout\,
	combout => \port_map_ula|Equal0~5_combout\);

-- Location: MLABCELL_X28_Y5_N18
\port_map_ula|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~3_combout\ = ( \port_map_banco_de_registradores|registradores~297_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( (\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & 
-- (\port_map_banco_de_registradores|registradores~286_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( 
-- \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & (\port_map_banco_de_registradores|registradores~286_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ 
-- (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( \port_map_banco_de_registradores|registradores~297_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( (\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~286_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~297_combout\ & ( 
-- !\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[9]~8_combout\ & (!\port_map_banco_de_registradores|registradores~286_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ $ 
-- (\port_map_banco_de_registradores|registradores~290_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~8_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~290_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~286_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~297_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	combout => \port_map_ula|Equal0~3_combout\);

-- Location: MLABCELL_X28_Y5_N42
\port_map_ula|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~2_combout\ = ( \port_map_banco_de_registradores|registradores~279_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & ( (\port_map_banco_de_registradores|registradores~278_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ (\port_map_banco_de_registradores|registradores~292_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( 
-- \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & ( (\port_map_banco_de_registradores|registradores~278_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ 
-- (\port_map_banco_de_registradores|registradores~292_combout\)))) ) ) ) # ( \port_map_banco_de_registradores|registradores~279_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~278_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ (\port_map_banco_de_registradores|registradores~292_combout\)))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~279_combout\ & ( 
-- !\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~278_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ 
-- (\port_map_banco_de_registradores|registradores~292_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~292_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~278_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~279_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	combout => \port_map_ula|Equal0~2_combout\);

-- Location: LABCELL_X29_Y5_N15
\port_map_ula|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~0_combout\ = ( \port_map_banco_de_registradores|registradores~284_combout\ & ( \port_map_unidade_de_controle|Mux9~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~282_combout\ $ (\port_map_rom|rom_memory~5_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~284_combout\ & ( \port_map_unidade_de_controle|Mux9~0_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~283_combout\ & (!\port_map_banco_de_registradores|registradores~282_combout\ $ (\port_map_rom|rom_memory~5_combout\))) ) ) ) # ( \port_map_banco_de_registradores|registradores~284_combout\ & ( 
-- !\port_map_unidade_de_controle|Mux9~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\ & (((!\port_map_banco_de_registradores|registradores~282_combout\ & \port_map_rom|rom_memory~5_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~283_combout\ & (!\port_map_rom|rom_memory~5_combout\ & (!\port_map_banco_de_registradores|registradores~281_combout\ $ (\port_map_banco_de_registradores|registradores~282_combout\)))) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~284_combout\ & ( !\port_map_unidade_de_controle|Mux9~0_combout\ & ( (!\port_map_banco_de_registradores|registradores~283_combout\ & (!\port_map_banco_de_registradores|registradores~282_combout\ $ 
-- (((\port_map_banco_de_registradores|registradores~281_combout\ & !\port_map_rom|rom_memory~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000011000000000010011100000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~282_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~283_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~284_combout\,
	dataf => \port_map_unidade_de_controle|ALT_INV_Mux9~0_combout\,
	combout => \port_map_ula|Equal0~0_combout\);

-- Location: MLABCELL_X28_Y5_N6
\port_map_ula|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~4_combout\ = ( \port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_ula|OP1|C~11_combout\ & ( (\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & (\port_map_ula|Equal0~0_combout\ & 
-- (!\port_map_ula|OP1|C~15_combout\ & !\port_map_ula|OP1|C~13_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~301_combout\ & ( !\port_map_ula|OP1|C~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[11]~10_combout\ & 
-- (\port_map_ula|Equal0~0_combout\ & (!\port_map_ula|OP1|C~15_combout\ & !\port_map_ula|OP1|C~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~10_combout\,
	datab => \port_map_ula|ALT_INV_Equal0~0_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~15_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~13_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~301_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~11_combout\,
	combout => \port_map_ula|Equal0~4_combout\);

-- Location: MLABCELL_X28_Y5_N54
\port_map_ula|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~1_combout\ = ( !\port_map_ula|OP1|C~17_combout\ & ( \port_map_ula|Equal0~4_combout\ & ( (\port_map_ula|Equal0~5_combout\ & (\port_map_ula|Equal0~3_combout\ & (\port_map_ula|Equal0~2_combout\ & !\port_map_ula|OP1|C~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Equal0~5_combout\,
	datab => \port_map_ula|ALT_INV_Equal0~3_combout\,
	datac => \port_map_ula|ALT_INV_Equal0~2_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~16_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~17_combout\,
	dataf => \port_map_ula|ALT_INV_Equal0~4_combout\,
	combout => \port_map_ula|Equal0~1_combout\);

-- Location: LABCELL_X29_Y5_N39
\port_map_ula|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux2~0_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( (\port_map_rom|rom_memory~9_combout\ & !\port_map_rom|rom_memory~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y5_N0
\port_map_ula|IN_BRANCH_HELPER\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|IN_BRANCH_HELPER~combout\ = ( \port_map_ula|Mux2~0_combout\ & ( \port_map_ula|Equal0~1_combout\ ) ) # ( !\port_map_ula|Mux2~0_combout\ & ( \port_map_ula|IN_BRANCH_HELPER~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Equal0~1_combout\,
	datad => \port_map_ula|ALT_INV_IN_BRANCH_HELPER~combout\,
	dataf => \port_map_ula|ALT_INV_Mux2~0_combout\,
	combout => \port_map_ula|IN_BRANCH_HELPER~combout\);

-- Location: LABCELL_X31_Y5_N39
\port_map_ula|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux0~0_combout\ = ( \port_map_rom|rom_memory~8_combout\ & ( (\port_map_rom|rom_memory~11_combout\ & \port_map_rom|rom_memory~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~11_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	combout => \port_map_ula|Mux0~0_combout\);

-- Location: LABCELL_X31_Y5_N54
\port_map_ula|s_zero\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|s_zero~combout\ = ( \port_map_ula|Mux0~0_combout\ & ( \port_map_ula|IN_BRANCH_HELPER~combout\ ) ) # ( !\port_map_ula|Mux0~0_combout\ & ( \port_map_ula|s_zero~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|ALT_INV_IN_BRANCH_HELPER~combout\,
	datad => \port_map_ula|ALT_INV_s_zero~combout\,
	dataf => \port_map_ula|ALT_INV_Mux0~0_combout\,
	combout => \port_map_ula|s_zero~combout\);

-- Location: LABCELL_X31_Y6_N21
\port_map_mult3_2X1_jump|Sout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult3_2X1_jump|Sout[3]~0_combout\ = ( \port_map_ula|s_zero~combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & ((!\port_map_rom|rom_memory~12_combout\ & (\port_map_rom|rom_memory~5_combout\)) # (\port_map_rom|rom_memory~12_combout\ & 
-- ((\port_map_rom|rom_memory~10_combout\))))) ) ) # ( !\port_map_ula|s_zero~combout\ & ( (\port_map_rom|rom_memory~5_combout\ & (!\port_map_rom|rom_memory~9_combout\ & !\port_map_rom|rom_memory~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	dataf => \port_map_ula|ALT_INV_s_zero~combout\,
	combout => \port_map_mult3_2X1_jump|Sout[3]~0_combout\);

-- Location: LABCELL_X29_Y5_N27
\port_map_mult3_2X1_jump|Sout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult3_2X1_jump|Sout[0]~1_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( (\port_map_mult3_2X1_jump|Sout[3]~0_combout\) # (\port_map_addr|Add0~1_sumout\) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( (\port_map_addr|Add0~1_sumout\ & 
-- !\port_map_mult3_2X1_jump|Sout[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_addr|ALT_INV_Add0~1_sumout\,
	datad => \port_map_mult3_2X1_jump|ALT_INV_Sout[3]~0_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_mult3_2X1_jump|Sout[0]~1_combout\);

-- Location: FF_X29_Y5_N29
\port_map_pc|outPort[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_mult3_2X1_jump|Sout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(0));

-- Location: LABCELL_X30_Y5_N24
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

-- Location: FF_X30_Y5_N26
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

-- Location: LABCELL_X30_Y5_N27
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

-- Location: FF_X30_Y5_N29
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

-- Location: LABCELL_X30_Y5_N30
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

-- Location: FF_X30_Y5_N32
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

-- Location: LABCELL_X30_Y5_N33
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

-- Location: FF_X30_Y5_N35
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

-- Location: LABCELL_X30_Y5_N36
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

-- Location: FF_X30_Y5_N38
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

-- Location: LABCELL_X30_Y5_N39
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

-- Location: FF_X30_Y5_N41
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

-- Location: LABCELL_X30_Y5_N42
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

-- Location: FF_X30_Y5_N44
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

-- Location: LABCELL_X30_Y5_N45
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

-- Location: FF_X30_Y5_N47
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

-- Location: LABCELL_X31_Y5_N0
\port_map_rom|rom_memory~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~7_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_pc|outPort\(0) & (!\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(3) & !\port_map_pc|outPort\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(3),
	datad => \port_map_pc|ALT_INV_outPort\(2),
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~7_combout\);

-- Location: LABCELL_X31_Y6_N15
\port_map_ula|OP1|C~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~18_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( ((!\port_map_ula|OP1|C~14_combout\ & (\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & \port_map_banco_de_registradores|registradores~306_combout\)) # 
-- (\port_map_ula|OP1|C~14_combout\ & ((\port_map_banco_de_registradores|registradores~306_combout\) # (\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\)))) # (\port_map_banco_de_registradores|registradores~308_combout\) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & ( (\port_map_banco_de_registradores|registradores~308_combout\ & ((!\port_map_ula|OP1|C~14_combout\ & (\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\ & 
-- \port_map_banco_de_registradores|registradores~306_combout\)) # (\port_map_ula|OP1|C~14_combout\ & ((\port_map_banco_de_registradores|registradores~306_combout\) # (\port_map_mult1_2x1_br_ula|Sout[13]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~14_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~12_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~306_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\,
	combout => \port_map_ula|OP1|C~18_combout\);

-- Location: MLABCELL_X28_Y4_N0
\port_map_ula|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux20~0_combout\ = ( !\port_map_rom|rom_memory~12_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \port_map_rom|ALT_INV_rom_memory~12_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_ula|Mux20~0_combout\);

-- Location: MLABCELL_X28_Y6_N0
\port_map_ula|OP2|RESULTADO|C~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~14_combout\ = ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( (!\port_map_banco_de_registradores|registradores~308_combout\ & \port_map_mult1_2x1_br_ula|Sout[14]~13_combout\) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ 
-- & ( (!\port_map_banco_de_registradores|registradores~308_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~11_combout\) # (\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\))) # (\port_map_banco_de_registradores|registradores~308_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[14]~13_combout\ & !\port_map_ula|OP2|RESULTADO|C~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001100110011110000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~308_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~13_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~14_combout\);

-- Location: MLABCELL_X28_Y4_N15
\port_map_ula|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux20~1_combout\ = ( \port_map_rom|rom_memory~10_combout\ & ( \port_map_ula|OP2|RESULTADO|C~14_combout\ & ( (\port_map_banco_de_registradores|registradores~310_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[15]~14_combout\ & 
-- \port_map_ula|Mux20~0_combout\)) ) ) ) # ( !\port_map_rom|rom_memory~10_combout\ & ( \port_map_ula|OP2|RESULTADO|C~14_combout\ & ( (\port_map_ula|Mux20~0_combout\ & ((!\port_map_banco_de_registradores|registradores~310_combout\ & 
-- (\port_map_ula|OP1|C~18_combout\ & \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\)) # (\port_map_banco_de_registradores|registradores~310_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[15]~14_combout\) # (\port_map_ula|OP1|C~18_combout\))))) ) ) ) # ( 
-- \port_map_rom|rom_memory~10_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~14_combout\ & ( (\port_map_ula|Mux20~0_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[15]~14_combout\) # (\port_map_banco_de_registradores|registradores~310_combout\))) ) ) ) # ( 
-- !\port_map_rom|rom_memory~10_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~14_combout\ & ( (\port_map_ula|Mux20~0_combout\ & ((!\port_map_banco_de_registradores|registradores~310_combout\ & (\port_map_ula|OP1|C~18_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[15]~14_combout\)) # (\port_map_banco_de_registradores|registradores~310_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[15]~14_combout\) # (\port_map_ula|OP1|C~18_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000001111010100000000000101110000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~310_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~18_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[15]~14_combout\,
	datad => \port_map_ula|ALT_INV_Mux20~0_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~14_combout\,
	combout => \port_map_ula|Mux20~1_combout\);

-- Location: LABCELL_X29_Y4_N18
\port_map_banco_de_registradores|registradores~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~311_combout\ = ( \port_map_banco_de_registradores|registradores~277_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~277_combout\,
	combout => \port_map_banco_de_registradores|registradores~311_combout\);

-- Location: LABCELL_X29_Y4_N0
\port_map_banco_de_registradores|registradores~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~312_combout\ = ( \port_map_banco_de_registradores|registradores~280_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~280_combout\,
	combout => \port_map_banco_de_registradores|registradores~312_combout\);

-- Location: LABCELL_X31_Y6_N18
\port_map_banco_de_registradores|registradores~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~313_combout\ = (!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~281_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~281_combout\,
	combout => \port_map_banco_de_registradores|registradores~313_combout\);

-- Location: LABCELL_X29_Y7_N51
\port_map_banco_de_registradores|registradores~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~314_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_banco_de_registradores|registradores~287_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~287_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_banco_de_registradores|registradores~314_combout\);

-- Location: LABCELL_X31_Y6_N3
\port_map_banco_de_registradores|registradores~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~315_combout\ = ( \port_map_banco_de_registradores|registradores~289_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~289_combout\,
	combout => \port_map_banco_de_registradores|registradores~315_combout\);

-- Location: MLABCELL_X28_Y4_N54
\port_map_banco_de_registradores|registradores~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~316_combout\ = ( \port_map_banco_de_registradores|registradores~291_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~291_combout\,
	combout => \port_map_banco_de_registradores|registradores~316_combout\);

-- Location: LABCELL_X30_Y2_N3
\port_map_banco_de_registradores|registradores~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~317_combout\ = ( \port_map_banco_de_registradores|registradores~293_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~293_combout\,
	combout => \port_map_banco_de_registradores|registradores~317_combout\);

-- Location: LABCELL_X29_Y4_N33
\port_map_banco_de_registradores|registradores~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~318_combout\ = (!\port_map_rom|rom_memory~5_combout\ & \port_map_banco_de_registradores|registradores~298_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~298_combout\,
	combout => \port_map_banco_de_registradores|registradores~318_combout\);

-- Location: MLABCELL_X28_Y4_N45
\port_map_banco_de_registradores|registradores~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~319_combout\ = ( \port_map_banco_de_registradores|registradores~300_combout\ & ( !\port_map_rom|rom_memory~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~300_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	combout => \port_map_banco_de_registradores|registradores~319_combout\);

-- Location: LABCELL_X42_Y47_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


