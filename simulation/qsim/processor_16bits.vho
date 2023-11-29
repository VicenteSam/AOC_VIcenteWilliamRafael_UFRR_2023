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

-- DATE "11/29/2023 10:07:57"

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
-- outPc[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[13]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPc[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[8]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[10]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[11]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[13]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRam[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[11]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outRom[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[4]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[8]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[11]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outUla[15]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_overflow_out	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[9]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regA[15]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_br_regB[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_opcode[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rs[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rt[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rd[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[10]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[11]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endereco[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[8]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[10]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[12]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[13]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_out_mult4_2X1_ram_ula[15]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \port_map_addr|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[0]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~2\ : std_logic;
SIGNAL \port_map_addr|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[1]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|outPort[2]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~6\ : std_logic;
SIGNAL \port_map_addr|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[3]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~10\ : std_logic;
SIGNAL \port_map_addr|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~14\ : std_logic;
SIGNAL \port_map_addr|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[4]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|outPort[5]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~18\ : std_logic;
SIGNAL \port_map_addr|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[6]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~22\ : std_logic;
SIGNAL \port_map_addr|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[7]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~26\ : std_logic;
SIGNAL \port_map_addr|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[8]~DUPLICATE_q\ : std_logic;
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
SIGNAL \port_map_pc|outPort[13]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~50\ : std_logic;
SIGNAL \port_map_addr|Add0~53_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[14]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~54\ : std_logic;
SIGNAL \port_map_addr|Add0~57_sumout\ : std_logic;
SIGNAL \port_map_pc|outPort[15]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_addr|Add0~58\ : std_logic;
SIGNAL \port_map_addr|Add0~61_sumout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~21_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~166_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~165_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux19~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~167_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~168_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux18~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~169_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~170_combout\ : std_logic;
SIGNAL \port_map_ula|Mux17~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~24_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~172_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~171_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux16~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~174_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~173_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~2_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~3_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~5_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~6_combout\ : std_logic;
SIGNAL \port_map_ula|Mux15~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~26_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~175_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~176_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux14~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~43_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~27feeder_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~27DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~178_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~5_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~7_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~27_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~177_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux13~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~210_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~44_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~209_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~28DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~180_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~44DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~28_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~179_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~0_wirecell_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~45_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~181_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~182_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~9_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~6_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~213_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~30_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~214_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~46_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~183_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~184_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~12_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~0_wirecell_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~47_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~31_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~185_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~186_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~13_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~9_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~48DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~188_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~48_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~187_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~15_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[10]~8_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[11]~9_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~33_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~49_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~190_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~189_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~17_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~16_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~50_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~192_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~191_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~18_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~51_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~35_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~194_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~193_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~19_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|C~12_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~52_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~36_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~195_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~196_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~20_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|C~21_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~0_combout\ : std_logic;
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
SIGNAL \port_map_ula|Mux20~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux20~1_combout\ : std_logic;
SIGNAL \port_map_pc|outPort\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|OP1|ALT_INV_C~13_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~186_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~185_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~47_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~31_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~12_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~10_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~184_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~183_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~46_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~30_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~9_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~8_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~182_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~181_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~45_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~180_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~179_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~44_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~28_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~177_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~43_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~27_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~176_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~175_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~26_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~6_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~5_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~174_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~173_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~25_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~172_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~171_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~24_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~170_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~169_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~168_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~167_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~166_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~165_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~21_q\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~48DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~44DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~28DUPLICATE_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~27DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[15]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[14]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[13]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[8]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[7]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[6]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[5]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[4]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[3]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[2]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~21_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~20_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~196_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~195_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~52_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~36_q\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~19_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~194_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~12_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~193_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~51_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~35_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~18_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~192_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~11_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~191_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~50_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~34_q\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~10_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~17_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~190_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~10_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~189_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~49_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~33_q\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~16_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~9_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~15_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~188_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~187_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~48_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~32_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP1|ALT_INV_C~14_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~7_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\ : std_logic;
SIGNAL \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\ : std_logic;

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

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \port_map_ula|Mux4~0_combout\ & 
\port_map_ula|Mux5~0_combout\ & \port_map_ula|Mux6~1_combout\ & \port_map_ula|Mux7~0_combout\ & \port_map_ula|Mux8~0_combout\ & \port_map_ula|Mux9~0_combout\ & \port_map_ula|Mux10~0_wirecell_combout\ & \port_map_ula|Mux11~0_combout\ & 
\port_map_ula|Mux12~0_wirecell_combout\ & \port_map_ula|Mux13~0_combout\ & \port_map_ula|Mux14~1_combout\ & \port_map_ula|Mux15~0_combout\ & \port_map_ula|Mux16~0_combout\ & \port_map_ula|Mux17~0_combout\ & \port_map_ula|Mux18~0_combout\ & 
\port_map_ula|Mux19~0_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~1_combout\ & \port_map_rom|rom_memory~0_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~1_combout\ & \port_map_rom|rom_memory~0_combout\);

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
\port_map_ula|OP1|ALT_INV_C~13_combout\ <= NOT \port_map_ula|OP1|C~13_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~186_combout\ <= NOT \port_map_banco_de_registradores|registradores~186_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~185_combout\ <= NOT \port_map_banco_de_registradores|registradores~185_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~47_q\ <= NOT \port_map_banco_de_registradores|registradores~47_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~31_q\ <= NOT \port_map_banco_de_registradores|registradores~31_q\;
\port_map_ula|OP1|ALT_INV_C~12_combout\ <= NOT \port_map_ula|OP1|C~12_combout\;
\port_map_ula|OP1|ALT_INV_C~11_combout\ <= NOT \port_map_ula|OP1|C~11_combout\;
\port_map_ula|OP1|ALT_INV_C~10_combout\ <= NOT \port_map_ula|OP1|C~10_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~184_combout\ <= NOT \port_map_banco_de_registradores|registradores~184_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~183_combout\ <= NOT \port_map_banco_de_registradores|registradores~183_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~46_q\ <= NOT \port_map_banco_de_registradores|registradores~46_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~30_q\ <= NOT \port_map_banco_de_registradores|registradores~30_q\;
\port_map_ula|OP1|ALT_INV_C~9_combout\ <= NOT \port_map_ula|OP1|C~9_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~6_combout\;
\port_map_ula|OP1|ALT_INV_C~8_combout\ <= NOT \port_map_ula|OP1|C~8_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~182_combout\ <= NOT \port_map_banco_de_registradores|registradores~182_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~181_combout\ <= NOT \port_map_banco_de_registradores|registradores~181_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~45_q\ <= NOT \port_map_banco_de_registradores|registradores~45_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~29_q\ <= NOT \port_map_banco_de_registradores|registradores~29_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~180_combout\ <= NOT \port_map_banco_de_registradores|registradores~180_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~179_combout\ <= NOT \port_map_banco_de_registradores|registradores~179_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~44_q\ <= NOT \port_map_banco_de_registradores|registradores~44_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~28_q\ <= NOT \port_map_banco_de_registradores|registradores~28_q\;
\port_map_ula|ALT_INV_Mux13~0_combout\ <= NOT \port_map_ula|Mux13~0_combout\;
\port_map_ula|OP1|ALT_INV_C~7_combout\ <= NOT \port_map_ula|OP1|C~7_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~5_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~178_combout\ <= NOT \port_map_banco_de_registradores|registradores~178_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~177_combout\ <= NOT \port_map_banco_de_registradores|registradores~177_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~43_q\ <= NOT \port_map_banco_de_registradores|registradores~43_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~27_q\ <= NOT \port_map_banco_de_registradores|registradores~27_q\;
\port_map_ula|ALT_INV_Mux14~0_combout\ <= NOT \port_map_ula|Mux14~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~176_combout\ <= NOT \port_map_banco_de_registradores|registradores~176_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~175_combout\ <= NOT \port_map_banco_de_registradores|registradores~175_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~42_q\ <= NOT \port_map_banco_de_registradores|registradores~42_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~26_q\ <= NOT \port_map_banco_de_registradores|registradores~26_q\;
\port_map_ula|OP1|ALT_INV_C~6_combout\ <= NOT \port_map_ula|OP1|C~6_combout\;
\port_map_ula|OP1|ALT_INV_C~5_combout\ <= NOT \port_map_ula|OP1|C~5_combout\;
\port_map_ula|OP1|ALT_INV_C~4_combout\ <= NOT \port_map_ula|OP1|C~4_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~4_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~3_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~2_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~174_combout\ <= NOT \port_map_banco_de_registradores|registradores~174_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~173_combout\ <= NOT \port_map_banco_de_registradores|registradores~173_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~41_q\ <= NOT \port_map_banco_de_registradores|registradores~41_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~25_q\ <= NOT \port_map_banco_de_registradores|registradores~25_q\;
\port_map_ula|OP1|ALT_INV_C~3_combout\ <= NOT \port_map_ula|OP1|C~3_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~172_combout\ <= NOT \port_map_banco_de_registradores|registradores~172_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~171_combout\ <= NOT \port_map_banco_de_registradores|registradores~171_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~40_q\ <= NOT \port_map_banco_de_registradores|registradores~40_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~24_q\ <= NOT \port_map_banco_de_registradores|registradores~24_q\;
\port_map_ula|OP1|ALT_INV_C~2_combout\ <= NOT \port_map_ula|OP1|C~2_combout\;
\port_map_ula|OP1|ALT_INV_C~1_combout\ <= NOT \port_map_ula|OP1|C~1_combout\;
\port_map_ula|OP1|ALT_INV_C~0_combout\ <= NOT \port_map_ula|OP1|C~0_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~1_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~170_combout\ <= NOT \port_map_banco_de_registradores|registradores~170_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~169_combout\ <= NOT \port_map_banco_de_registradores|registradores~169_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~39_q\ <= NOT \port_map_banco_de_registradores|registradores~39_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~23_q\ <= NOT \port_map_banco_de_registradores|registradores~23_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~168_combout\ <= NOT \port_map_banco_de_registradores|registradores~168_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~167_combout\ <= NOT \port_map_banco_de_registradores|registradores~167_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~38_q\ <= NOT \port_map_banco_de_registradores|registradores~38_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~22_q\ <= NOT \port_map_banco_de_registradores|registradores~22_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~166_combout\ <= NOT \port_map_banco_de_registradores|registradores~166_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~165_combout\ <= NOT \port_map_banco_de_registradores|registradores~165_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~37_q\ <= NOT \port_map_banco_de_registradores|registradores~37_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~21_q\ <= NOT \port_map_banco_de_registradores|registradores~21_q\;
\port_map_rom|ALT_INV_rom_memory~5_combout\ <= NOT \port_map_rom|rom_memory~5_combout\;
\port_map_rom|ALT_INV_rom_memory~4_combout\ <= NOT \port_map_rom|rom_memory~4_combout\;
\port_map_rom|ALT_INV_rom_memory~3_combout\ <= NOT \port_map_rom|rom_memory~3_combout\;
\port_map_rom|ALT_INV_rom_memory~2_combout\ <= NOT \port_map_rom|rom_memory~2_combout\;
\port_map_rom|ALT_INV_rom_memory~1_combout\ <= NOT \port_map_rom|rom_memory~1_combout\;
\port_map_rom|ALT_INV_rom_memory~0_combout\ <= NOT \port_map_rom|rom_memory~0_combout\;
\port_map_pc|ALT_INV_outPort\(12) <= NOT \port_map_pc|outPort\(12);
\port_map_pc|ALT_INV_outPort\(11) <= NOT \port_map_pc|outPort\(11);
\port_map_pc|ALT_INV_outPort\(10) <= NOT \port_map_pc|outPort\(10);
\port_map_pc|ALT_INV_outPort\(9) <= NOT \port_map_pc|outPort\(9);
\port_map_pc|ALT_INV_outPort\(6) <= NOT \port_map_pc|outPort\(6);
\port_map_pc|ALT_INV_outPort\(4) <= NOT \port_map_pc|outPort\(4);
\port_map_pc|ALT_INV_outPort\(2) <= NOT \port_map_pc|outPort\(2);
\port_map_pc|ALT_INV_outPort\(1) <= NOT \port_map_pc|outPort\(1);
\port_map_pc|ALT_INV_outPort\(0) <= NOT \port_map_pc|outPort\(0);
\port_map_ula|ALT_INV_Mux12~0_combout\ <= NOT \port_map_ula|Mux12~0_combout\;
\port_map_ula|ALT_INV_Mux10~0_combout\ <= NOT \port_map_ula|Mux10~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~48DUPLICATE_q\ <= NOT \port_map_banco_de_registradores|registradores~48DUPLICATE_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~44DUPLICATE_q\ <= NOT \port_map_banco_de_registradores|registradores~44DUPLICATE_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~28DUPLICATE_q\ <= NOT \port_map_banco_de_registradores|registradores~28DUPLICATE_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~27DUPLICATE_q\ <= NOT \port_map_banco_de_registradores|registradores~27DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[15]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[15]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[14]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[14]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[13]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[13]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[8]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[8]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[7]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[7]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[6]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[6]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[5]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[5]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[4]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[4]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[3]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[3]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[2]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[2]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[1]~DUPLICATE_q\;
\port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\ <= NOT \port_map_pc|outPort[0]~DUPLICATE_q\;
\port_map_ula|ALT_INV_Mux20~0_combout\ <= NOT \port_map_ula|Mux20~0_combout\;
\port_map_ula|OP1|ALT_INV_C~21_combout\ <= NOT \port_map_ula|OP1|C~21_combout\;
\port_map_ula|OP1|ALT_INV_C~20_combout\ <= NOT \port_map_ula|OP1|C~20_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~196_combout\ <= NOT \port_map_banco_de_registradores|registradores~196_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~195_combout\ <= NOT \port_map_banco_de_registradores|registradores~195_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~52_q\ <= NOT \port_map_banco_de_registradores|registradores~52_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~36_q\ <= NOT \port_map_banco_de_registradores|registradores~36_q\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~12_combout\;
\port_map_ula|OP1|ALT_INV_C~19_combout\ <= NOT \port_map_ula|OP1|C~19_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~194_combout\ <= NOT \port_map_banco_de_registradores|registradores~194_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~12_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[14]~12_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~193_combout\ <= NOT \port_map_banco_de_registradores|registradores~193_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~51_q\ <= NOT \port_map_banco_de_registradores|registradores~51_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~35_q\ <= NOT \port_map_banco_de_registradores|registradores~35_q\;
\port_map_ula|ALT_INV_Mux6~0_combout\ <= NOT \port_map_ula|Mux6~0_combout\;
\port_map_ula|OP1|ALT_INV_C~18_combout\ <= NOT \port_map_ula|OP1|C~18_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~192_combout\ <= NOT \port_map_banco_de_registradores|registradores~192_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~11_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[13]~11_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~191_combout\ <= NOT \port_map_banco_de_registradores|registradores~191_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~50_q\ <= NOT \port_map_banco_de_registradores|registradores~50_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~34_q\ <= NOT \port_map_banco_de_registradores|registradores~34_q\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~11_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~10_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~10_combout\;
\port_map_ula|OP1|ALT_INV_C~17_combout\ <= NOT \port_map_ula|OP1|C~17_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~190_combout\ <= NOT \port_map_banco_de_registradores|registradores~190_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~10_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[12]~10_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~189_combout\ <= NOT \port_map_banco_de_registradores|registradores~189_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~49_q\ <= NOT \port_map_banco_de_registradores|registradores~49_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~33_q\ <= NOT \port_map_banco_de_registradores|registradores~33_q\;
\port_map_ula|OP1|ALT_INV_C~16_combout\ <= NOT \port_map_ula|OP1|C~16_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~9_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[11]~9_combout\;
\port_map_ula|OP1|ALT_INV_C~15_combout\ <= NOT \port_map_ula|OP1|C~15_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~188_combout\ <= NOT \port_map_banco_de_registradores|registradores~188_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~187_combout\ <= NOT \port_map_banco_de_registradores|registradores~187_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~48_q\ <= NOT \port_map_banco_de_registradores|registradores~48_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~32_q\ <= NOT \port_map_banco_de_registradores|registradores~32_q\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~8_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[10]~8_combout\;
\port_map_ula|OP1|ALT_INV_C~14_combout\ <= NOT \port_map_ula|OP1|C~14_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~7_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[9]~7_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~9_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~8_combout\;
\port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\ <= NOT \port_map_ula|OP2|RESULTADO|C~7_combout\;

-- Location: IOOBUF_X36_Y0_N53
\outPc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_outPc(0));

-- Location: IOOBUF_X36_Y0_N19
\outPc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_outPc(1));

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N2
\outPc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_outPc(4));

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X34_Y0_N59
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X40_Y81_N36
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X38_Y81_N19
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N42
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X38_Y81_N2
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X50_Y0_N76
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

-- Location: IOOBUF_X89_Y4_N96
\outRom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~0_combout\,
	devoe => ww_devoe,
	o => ww_outRom(0));

-- Location: IOOBUF_X66_Y0_N42
\outRom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => ww_outRom(1));

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X86_Y81_N2
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

-- Location: IOOBUF_X89_Y35_N96
\outRom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~2_combout\,
	devoe => ww_devoe,
	o => ww_outRom(4));

-- Location: IOOBUF_X80_Y81_N2
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

-- Location: IOOBUF_X56_Y81_N19
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

-- Location: IOOBUF_X26_Y81_N59
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

-- Location: IOOBUF_X89_Y35_N45
\outRom[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~2_combout\,
	devoe => ww_devoe,
	o => ww_outRom(8));

-- Location: IOOBUF_X74_Y81_N42
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

-- Location: IOOBUF_X62_Y81_N2
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X32_Y0_N36
\outRom[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~4_combout\,
	devoe => ww_devoe,
	o => ww_outRom(12));

-- Location: IOOBUF_X34_Y0_N93
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

-- Location: IOOBUF_X30_Y81_N2
\outRom[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(14));

-- Location: IOOBUF_X62_Y81_N19
\outRom[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRom(15));

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X89_Y4_N62
\outUla[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(1));

-- Location: IOOBUF_X36_Y81_N19
\outUla[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(2));

-- Location: IOOBUF_X52_Y0_N53
\outUla[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(3));

-- Location: IOOBUF_X70_Y0_N19
\outUla[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(4));

-- Location: IOOBUF_X6_Y0_N19
\outUla[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux14~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(5));

-- Location: IOOBUF_X38_Y81_N36
\outUla[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(6));

-- Location: IOOBUF_X64_Y0_N19
\outUla[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(7));

-- Location: IOOBUF_X40_Y81_N19
\outUla[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(8));

-- Location: IOOBUF_X32_Y81_N53
\outUla[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(9));

-- Location: IOOBUF_X68_Y0_N36
\outUla[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(10));

-- Location: IOOBUF_X64_Y0_N53
\outUla[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(11));

-- Location: IOOBUF_X68_Y0_N19
\outUla[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(12));

-- Location: IOOBUF_X36_Y81_N36
\outUla[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_outUla(13));

-- Location: IOOBUF_X56_Y0_N36
\outUla[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(14));

-- Location: IOOBUF_X30_Y0_N36
\outUla[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_outUla(15));

-- Location: IOOBUF_X4_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N36
\out_br_regA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~166_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(0));

-- Location: IOOBUF_X36_Y0_N2
\out_br_regA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~168_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(1));

-- Location: IOOBUF_X28_Y0_N19
\out_br_regA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~170_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(2));

-- Location: IOOBUF_X26_Y0_N59
\out_br_regA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~172_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(3));

-- Location: IOOBUF_X32_Y0_N19
\out_br_regA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~174_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(4));

-- Location: IOOBUF_X30_Y0_N19
\out_br_regA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~176_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(5));

-- Location: IOOBUF_X36_Y0_N36
\out_br_regA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~178_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(6));

-- Location: IOOBUF_X38_Y0_N2
\out_br_regA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~180_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(7));

-- Location: IOOBUF_X32_Y0_N2
\out_br_regA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~182_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(8));

-- Location: IOOBUF_X62_Y0_N19
\out_br_regA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~184_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(9));

-- Location: IOOBUF_X52_Y0_N36
\out_br_regA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~186_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(10));

-- Location: IOOBUF_X28_Y0_N2
\out_br_regA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~188_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(11));

-- Location: IOOBUF_X28_Y0_N36
\out_br_regA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~190_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(12));

-- Location: IOOBUF_X28_Y0_N53
\out_br_regA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~192_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(13));

-- Location: IOOBUF_X8_Y0_N2
\out_br_regA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~194_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(14));

-- Location: IOOBUF_X6_Y0_N53
\out_br_regA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~196_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regA(15));

-- Location: IOOBUF_X30_Y0_N53
\out_br_regB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~165_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(0));

-- Location: IOOBUF_X38_Y0_N53
\out_br_regB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~167_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(1));

-- Location: IOOBUF_X26_Y0_N76
\out_br_regB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~169_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(2));

-- Location: IOOBUF_X40_Y0_N53
\out_br_regB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~171_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(3));

-- Location: IOOBUF_X26_Y0_N93
\out_br_regB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~173_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(4));

-- Location: IOOBUF_X8_Y0_N36
\out_br_regB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~175_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(5));

-- Location: IOOBUF_X8_Y0_N19
\out_br_regB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~177_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(6));

-- Location: IOOBUF_X89_Y6_N22
\out_br_regB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~179_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(7));

-- Location: IOOBUF_X38_Y0_N19
\out_br_regB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~181_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(8));

-- Location: IOOBUF_X89_Y6_N5
\out_br_regB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~183_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(9));

-- Location: IOOBUF_X52_Y0_N19
\out_br_regB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~185_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(10));

-- Location: IOOBUF_X8_Y0_N53
\out_br_regB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~187_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(11));

-- Location: IOOBUF_X6_Y0_N2
\out_br_regB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~189_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(12));

-- Location: IOOBUF_X4_Y0_N36
\out_br_regB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~191_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(13));

-- Location: IOOBUF_X4_Y0_N19
\out_br_regB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~193_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(14));

-- Location: IOOBUF_X26_Y0_N42
\out_br_regB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~195_combout\,
	devoe => ww_devoe,
	o => ww_out_br_regB(15));

-- Location: IOOBUF_X32_Y0_N53
\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~4_combout\,
	devoe => ww_devoe,
	o => ww_out_opcode(0));

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X58_Y81_N93
\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_opcode(2));

-- Location: IOOBUF_X30_Y81_N53
\out_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_opcode(3));

-- Location: IOOBUF_X89_Y37_N5
\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~2_combout\,
	devoe => ww_devoe,
	o => ww_out_rs(0));

-- Location: IOOBUF_X64_Y81_N19
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X64_Y81_N2
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

-- Location: IOOBUF_X89_Y37_N39
\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~2_combout\,
	devoe => ww_devoe,
	o => ww_out_rt(0));

-- Location: IOOBUF_X60_Y81_N36
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

-- Location: IOOBUF_X52_Y81_N19
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

-- Location: IOOBUF_X50_Y81_N93
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

-- Location: IOOBUF_X89_Y4_N45
\out_rd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~0_combout\,
	devoe => ww_devoe,
	o => ww_out_rd(0));

-- Location: IOOBUF_X68_Y0_N53
\out_rd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => ww_out_rd(1));

-- Location: IOOBUF_X28_Y81_N19
\out_rd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_rd(2));

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y4_N79
\out_endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~0_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(0));

-- Location: IOOBUF_X68_Y0_N2
\out_endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(1));

-- Location: IOOBUF_X74_Y81_N93
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

-- Location: IOOBUF_X52_Y81_N53
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

-- Location: IOOBUF_X89_Y37_N56
\out_endereco[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~2_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(4));

-- Location: IOOBUF_X50_Y81_N42
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

-- Location: IOOBUF_X76_Y81_N2
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

-- Location: IOOBUF_X66_Y81_N93
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

-- Location: IOOBUF_X89_Y8_N39
\out_endereco[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~2_combout\,
	devoe => ww_devoe,
	o => ww_out_endereco(8));

-- Location: IOOBUF_X32_Y81_N36
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

-- Location: IOOBUF_X72_Y81_N19
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

-- Location: IOOBUF_X84_Y81_N19
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

-- Location: IOOBUF_X50_Y81_N76
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

-- Location: IOOBUF_X2_Y0_N42
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

-- Location: IOOBUF_X40_Y81_N2
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

-- Location: IOOBUF_X34_Y81_N59
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

-- Location: IOOBUF_X66_Y0_N76
\out_out_mult4_2X1_ram_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(0));

-- Location: IOOBUF_X72_Y0_N2
\out_out_mult4_2X1_ram_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(1));

-- Location: IOOBUF_X36_Y81_N53
\out_out_mult4_2X1_ram_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(2));

-- Location: IOOBUF_X52_Y0_N2
\out_out_mult4_2X1_ram_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(3));

-- Location: IOOBUF_X70_Y0_N36
\out_out_mult4_2X1_ram_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(4));

-- Location: IOOBUF_X6_Y0_N36
\out_out_mult4_2X1_ram_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux14~1_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(5));

-- Location: IOOBUF_X38_Y81_N53
\out_out_mult4_2X1_ram_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(6));

-- Location: IOOBUF_X64_Y0_N36
\out_out_mult4_2X1_ram_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(7));

-- Location: IOOBUF_X40_Y81_N53
\out_out_mult4_2X1_ram_ula[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(8));

-- Location: IOOBUF_X32_Y81_N2
\out_out_mult4_2X1_ram_ula[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(9));

-- Location: IOOBUF_X66_Y0_N59
\out_out_mult4_2X1_ram_ula[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(10));

-- Location: IOOBUF_X64_Y0_N2
\out_out_mult4_2X1_ram_ula[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(11));

-- Location: IOOBUF_X72_Y0_N19
\out_out_mult4_2X1_ram_ula[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(12));

-- Location: IOOBUF_X36_Y81_N2
\out_out_mult4_2X1_ram_ula[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(13));

-- Location: IOOBUF_X56_Y0_N53
\out_out_mult4_2X1_ram_ula[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_out_out_mult4_2X1_ram_ula(14));

-- Location: IOOBUF_X30_Y0_N2
\out_out_mult4_2X1_ram_ula[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux4~0_combout\,
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

-- Location: FF_X37_Y1_N55
\port_map_pc|outPort[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_addr|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(0));

-- Location: LABCELL_X37_Y1_N0
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

-- Location: FF_X37_Y1_N56
\port_map_pc|outPort[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_addr|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort[0]~DUPLICATE_q\);

-- Location: FF_X37_Y1_N4
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

-- Location: LABCELL_X37_Y1_N3
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

-- Location: FF_X37_Y1_N5
\port_map_pc|outPort[1]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[1]~DUPLICATE_q\);

-- Location: FF_X37_Y1_N7
\port_map_pc|outPort[2]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[2]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N6
\port_map_addr|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~9_sumout\ = SUM(( \port_map_pc|outPort[2]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~6\ ))
-- \port_map_addr|Add0~10\ = CARRY(( \port_map_pc|outPort[2]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort[2]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~6\,
	sumout => \port_map_addr|Add0~9_sumout\,
	cout => \port_map_addr|Add0~10\);

-- Location: FF_X37_Y1_N8
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

-- Location: FF_X37_Y1_N11
\port_map_pc|outPort[3]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[3]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N9
\port_map_addr|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~13_sumout\ = SUM(( \port_map_pc|outPort[3]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~10\ ))
-- \port_map_addr|Add0~14\ = CARRY(( \port_map_pc|outPort[3]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort[3]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~10\,
	sumout => \port_map_addr|Add0~13_sumout\,
	cout => \port_map_addr|Add0~14\);

-- Location: FF_X37_Y1_N10
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

-- Location: LABCELL_X37_Y1_N12
\port_map_addr|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~17_sumout\ = SUM(( \port_map_pc|outPort[4]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~14\ ))
-- \port_map_addr|Add0~18\ = CARRY(( \port_map_pc|outPort[4]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort[4]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~14\,
	sumout => \port_map_addr|Add0~17_sumout\,
	cout => \port_map_addr|Add0~18\);

-- Location: FF_X37_Y1_N13
\port_map_pc|outPort[4]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[4]~DUPLICATE_q\);

-- Location: FF_X37_Y1_N17
\port_map_pc|outPort[5]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[5]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N15
\port_map_addr|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~21_sumout\ = SUM(( \port_map_pc|outPort[5]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~18\ ))
-- \port_map_addr|Add0~22\ = CARRY(( \port_map_pc|outPort[5]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort[5]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~18\,
	sumout => \port_map_addr|Add0~21_sumout\,
	cout => \port_map_addr|Add0~22\);

-- Location: FF_X37_Y1_N16
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

-- Location: FF_X37_Y1_N19
\port_map_pc|outPort[6]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[6]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N18
\port_map_addr|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~25_sumout\ = SUM(( \port_map_pc|outPort[6]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~22\ ))
-- \port_map_addr|Add0~26\ = CARRY(( \port_map_pc|outPort[6]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort[6]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~22\,
	sumout => \port_map_addr|Add0~25_sumout\,
	cout => \port_map_addr|Add0~26\);

-- Location: FF_X37_Y1_N20
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

-- Location: FF_X37_Y1_N23
\port_map_pc|outPort[7]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[7]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N21
\port_map_addr|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~29_sumout\ = SUM(( \port_map_pc|outPort[7]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~26\ ))
-- \port_map_addr|Add0~30\ = CARRY(( \port_map_pc|outPort[7]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort[7]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~26\,
	sumout => \port_map_addr|Add0~29_sumout\,
	cout => \port_map_addr|Add0~30\);

-- Location: FF_X37_Y1_N22
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

-- Location: FF_X37_Y1_N26
\port_map_pc|outPort[8]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[8]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N24
\port_map_addr|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~33_sumout\ = SUM(( \port_map_pc|outPort[8]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~30\ ))
-- \port_map_addr|Add0~34\ = CARRY(( \port_map_pc|outPort[8]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort[8]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~30\,
	sumout => \port_map_addr|Add0~33_sumout\,
	cout => \port_map_addr|Add0~34\);

-- Location: FF_X37_Y1_N25
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

-- Location: LABCELL_X37_Y1_N27
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

-- Location: FF_X37_Y1_N29
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

-- Location: LABCELL_X37_Y1_N30
\port_map_addr|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~41_sumout\ = SUM(( \port_map_pc|outPort\(10) ) + ( GND ) + ( \port_map_addr|Add0~38\ ))
-- \port_map_addr|Add0~42\ = CARRY(( \port_map_pc|outPort\(10) ) + ( GND ) + ( \port_map_addr|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort\(10),
	cin => \port_map_addr|Add0~38\,
	sumout => \port_map_addr|Add0~41_sumout\,
	cout => \port_map_addr|Add0~42\);

-- Location: FF_X37_Y1_N31
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

-- Location: LABCELL_X37_Y1_N33
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

-- Location: FF_X37_Y1_N35
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

-- Location: LABCELL_X37_Y1_N36
\port_map_addr|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~49_sumout\ = SUM(( \port_map_pc|outPort\(12) ) + ( GND ) + ( \port_map_addr|Add0~46\ ))
-- \port_map_addr|Add0~50\ = CARRY(( \port_map_pc|outPort\(12) ) + ( GND ) + ( \port_map_addr|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(12),
	cin => \port_map_addr|Add0~46\,
	sumout => \port_map_addr|Add0~49_sumout\,
	cout => \port_map_addr|Add0~50\);

-- Location: FF_X37_Y1_N37
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

-- Location: FF_X37_Y1_N41
\port_map_pc|outPort[13]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[13]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N39
\port_map_addr|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~53_sumout\ = SUM(( \port_map_pc|outPort[13]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~50\ ))
-- \port_map_addr|Add0~54\ = CARRY(( \port_map_pc|outPort[13]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort[13]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~50\,
	sumout => \port_map_addr|Add0~53_sumout\,
	cout => \port_map_addr|Add0~54\);

-- Location: FF_X37_Y1_N40
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

-- Location: FF_X37_Y1_N44
\port_map_pc|outPort[14]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[14]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N42
\port_map_addr|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~57_sumout\ = SUM(( \port_map_pc|outPort[14]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~54\ ))
-- \port_map_addr|Add0~58\ = CARRY(( \port_map_pc|outPort[14]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort[14]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~54\,
	sumout => \port_map_addr|Add0~57_sumout\,
	cout => \port_map_addr|Add0~58\);

-- Location: FF_X37_Y1_N43
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

-- Location: FF_X37_Y1_N47
\port_map_pc|outPort[15]~DUPLICATE\ : dffeas
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
	q => \port_map_pc|outPort[15]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N45
\port_map_addr|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~61_sumout\ = SUM(( \port_map_pc|outPort[15]~DUPLICATE_q\ ) + ( GND ) + ( \port_map_addr|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort[15]~DUPLICATE_q\,
	cin => \port_map_addr|Add0~58\,
	sumout => \port_map_addr|Add0~61_sumout\);

-- Location: FF_X37_Y1_N46
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

-- Location: FF_X37_Y1_N14
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

-- Location: LABCELL_X37_Y1_N57
\port_map_rom|rom_memory~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~0_combout\ = ( !\port_map_pc|outPort[7]~DUPLICATE_q\ & ( !\port_map_pc|outPort[3]~DUPLICATE_q\ & ( (!\port_map_pc|outPort[2]~DUPLICATE_q\ & (!\port_map_pc|outPort[5]~DUPLICATE_q\ & (!\port_map_pc|outPort\(4) & 
-- !\port_map_pc|outPort\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort[2]~DUPLICATE_q\,
	datab => \port_map_pc|ALT_INV_outPort[5]~DUPLICATE_q\,
	datac => \port_map_pc|ALT_INV_outPort\(4),
	datad => \port_map_pc|ALT_INV_outPort\(6),
	datae => \port_map_pc|ALT_INV_outPort[7]~DUPLICATE_q\,
	dataf => \port_map_pc|ALT_INV_outPort[3]~DUPLICATE_q\,
	combout => \port_map_rom|rom_memory~0_combout\);

-- Location: LABCELL_X37_Y2_N18
\port_map_rom|rom_memory~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~2_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_pc|outPort[0]~DUPLICATE_q\ & !\port_map_pc|outPort\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~2_combout\);

-- Location: FF_X36_Y1_N29
\port_map_banco_de_registradores|registradores~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux19~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~37_q\);

-- Location: FF_X36_Y1_N35
\port_map_banco_de_registradores|registradores~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux19~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~21_q\);

-- Location: LABCELL_X36_Y1_N48
\port_map_banco_de_registradores|registradores~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~166_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort[1]~DUPLICATE_q\ & ((!\port_map_pc|outPort[0]~DUPLICATE_q\ & ((\port_map_banco_de_registradores|registradores~21_q\))) # 
-- (\port_map_pc|outPort[0]~DUPLICATE_q\ & (\port_map_banco_de_registradores|registradores~37_q\)))) # (\port_map_pc|outPort[1]~DUPLICATE_q\ & (((\port_map_banco_de_registradores|registradores~21_q\)))) ) ) # ( !\port_map_rom|rom_memory~0_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~21_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010001110000111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	datab => \port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	datad => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~166_combout\);

-- Location: LABCELL_X36_Y1_N36
\port_map_banco_de_registradores|registradores~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~165_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~37_q\ & ((\port_map_pc|outPort[0]~DUPLICATE_q\) # (\port_map_pc|outPort[1]~DUPLICATE_q\))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~21_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	datab => \port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	datad => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~165_combout\);

-- Location: LABCELL_X37_Y1_N48
\port_map_rom|rom_memory~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~3_combout\ = ( !\port_map_pc|outPort[3]~DUPLICATE_q\ & ( (!\port_map_pc|outPort\(2) & ((!\port_map_pc|outPort[0]~DUPLICATE_q\) # (!\port_map_pc|outPort[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	datad => \port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\,
	dataf => \port_map_pc|ALT_INV_outPort[3]~DUPLICATE_q\,
	combout => \port_map_rom|rom_memory~3_combout\);

-- Location: LABCELL_X36_Y1_N18
\port_map_rom|rom_memory~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~4_combout\ = ( \port_map_rom|rom_memory~3_combout\ & ( (!\port_map_pc|outPort[5]~DUPLICATE_q\ & (!\port_map_pc|outPort\(4) & (!\port_map_pc|outPort[7]~DUPLICATE_q\ & !\port_map_pc|outPort[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort[5]~DUPLICATE_q\,
	datab => \port_map_pc|ALT_INV_outPort\(4),
	datac => \port_map_pc|ALT_INV_outPort[7]~DUPLICATE_q\,
	datad => \port_map_pc|ALT_INV_outPort[6]~DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_rom|rom_memory~4_combout\);

-- Location: LABCELL_X35_Y1_N6
\port_map_mult1_2x1_br_ula|Sout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( \port_map_rom|rom_memory~0_combout\ ) ) # ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~165_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~165_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\);

-- Location: LABCELL_X35_Y1_N54
\port_map_ula|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux19~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & ( !\port_map_banco_de_registradores|registradores~166_combout\ ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~166_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~166_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	combout => \port_map_ula|Mux19~0_combout\);

-- Location: LABCELL_X37_Y1_N51
\port_map_rom|rom_memory~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~1_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort[1]~DUPLICATE_q\ & !\port_map_pc|outPort[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\,
	datad => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~1_combout\);

-- Location: FF_X37_Y2_N38
\port_map_banco_de_registradores|registradores~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux18~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~22_q\);

-- Location: FF_X37_Y2_N23
\port_map_banco_de_registradores|registradores~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux18~0_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~38_q\);

-- Location: LABCELL_X37_Y2_N3
\port_map_banco_de_registradores|registradores~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~167_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~38_q\ & ((\port_map_pc|outPort\(1)) # (\port_map_pc|outPort\(0)))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~22_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	datab => \port_map_pc|ALT_INV_outPort\(0),
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~167_combout\);

-- Location: LABCELL_X36_Y1_N15
\port_map_mult1_2x1_br_ula|Sout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ = ( \port_map_banco_de_registradores|registradores~167_combout\ & ( (!\port_map_rom|rom_memory~4_combout\) # (\port_map_rom|rom_memory~1_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~167_combout\ & ( (\port_map_rom|rom_memory~4_combout\ & \port_map_rom|rom_memory~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~167_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\);

-- Location: LABCELL_X37_Y2_N12
\port_map_banco_de_registradores|registradores~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~168_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort[0]~DUPLICATE_q\ & (((\port_map_banco_de_registradores|registradores~22_q\)))) # (\port_map_pc|outPort[0]~DUPLICATE_q\ & 
-- ((!\port_map_pc|outPort\(1) & (\port_map_banco_de_registradores|registradores~38_q\)) # (\port_map_pc|outPort\(1) & ((\port_map_banco_de_registradores|registradores~22_q\))))) ) ) # ( !\port_map_rom|rom_memory~0_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~22_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011011000011110001101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~168_combout\);

-- Location: LABCELL_X36_Y3_N45
\port_map_rom|rom_memory~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~5_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( \port_map_pc|outPort\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~5_combout\);

-- Location: LABCELL_X37_Y2_N21
\port_map_ula|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux18~0_combout\ = ( \port_map_banco_de_registradores|registradores~166_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ $ (!\port_map_banco_de_registradores|registradores~168_combout\ $ 
-- (((\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & !\port_map_rom|rom_memory~5_combout\)))) ) ) # ( !\port_map_banco_de_registradores|registradores~166_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ $ 
-- (!\port_map_banco_de_registradores|registradores~168_combout\ $ (((\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ & \port_map_rom|rom_memory~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001001111000110100100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~168_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~166_combout\,
	combout => \port_map_ula|Mux18~0_combout\);

-- Location: LABCELL_X36_Y2_N54
\port_map_ula|OP1|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~0_combout\ = ( \port_map_banco_de_registradores|registradores~168_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & ((\port_map_banco_de_registradores|registradores~167_combout\))) # (\port_map_rom|rom_memory~4_combout\ & 
-- (\port_map_rom|rom_memory~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~167_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~168_combout\,
	combout => \port_map_ula|OP1|C~0_combout\);

-- Location: LABCELL_X36_Y2_N18
\port_map_ula|OP1|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~1_combout\ = ( \port_map_banco_de_registradores|registradores~165_combout\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~0_combout\ & (!\port_map_rom|rom_memory~1_combout\ $ 
-- (!\port_map_banco_de_registradores|registradores~168_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~165_combout\ & ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~0_combout\ & 
-- (!\port_map_rom|rom_memory~1_combout\ $ (!\port_map_banco_de_registradores|registradores~168_combout\))) ) ) ) # ( \port_map_banco_de_registradores|registradores~165_combout\ & ( !\port_map_rom|rom_memory~4_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~167_combout\ $ (!\port_map_banco_de_registradores|registradores~168_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~167_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~168_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~165_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP1|C~1_combout\);

-- Location: LABCELL_X36_Y2_N57
\port_map_ula|OP1|C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~2_combout\ = ( \port_map_ula|OP1|C~1_combout\ & ( (!\port_map_banco_de_registradores|registradores~166_combout\ & !\port_map_ula|OP1|C~0_combout\) ) ) # ( !\port_map_ula|OP1|C~1_combout\ & ( !\port_map_ula|OP1|C~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~166_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~0_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~1_combout\,
	combout => \port_map_ula|OP1|C~2_combout\);

-- Location: FF_X35_Y1_N35
\port_map_banco_de_registradores|registradores~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux17~0_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~39_q\);

-- Location: FF_X35_Y1_N44
\port_map_banco_de_registradores|registradores~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux17~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~23_q\);

-- Location: LABCELL_X35_Y1_N18
\port_map_banco_de_registradores|registradores~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~169_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~39_q\ & ((\port_map_pc|outPort\(1)) # (\port_map_pc|outPort\(0)))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~23_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	datab => \port_map_pc|ALT_INV_outPort\(0),
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~169_combout\);

-- Location: LABCELL_X36_Y1_N57
\port_map_mult1_2x1_br_ula|Sout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ = ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~169_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~169_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\);

-- Location: LABCELL_X36_Y1_N54
\port_map_ula|OP2|RESULTADO|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~0_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( (\port_map_rom|rom_memory~0_combout\ & !\port_map_banco_de_registradores|registradores~166_combout\) ) ) # ( !\port_map_rom|rom_memory~4_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~166_combout\ & \port_map_banco_de_registradores|registradores~165_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~166_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~165_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~0_combout\);

-- Location: LABCELL_X35_Y1_N3
\port_map_ula|OP2|RESULTADO|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~1_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (\port_map_banco_de_registradores|registradores~168_combout\ & !\port_map_ula|OP2|RESULTADO|C~0_combout\) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ 
-- & ( (!\port_map_ula|OP2|RESULTADO|C~0_combout\) # (\port_map_banco_de_registradores|registradores~168_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~168_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~1_combout\);

-- Location: LABCELL_X35_Y1_N57
\port_map_banco_de_registradores|registradores~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~170_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort[1]~DUPLICATE_q\ & ((!\port_map_pc|outPort\(0) & ((\port_map_banco_de_registradores|registradores~23_q\))) # 
-- (\port_map_pc|outPort\(0) & (\port_map_banco_de_registradores|registradores~39_q\)))) # (\port_map_pc|outPort[1]~DUPLICATE_q\ & (((\port_map_banco_de_registradores|registradores~23_q\)))) ) ) # ( !\port_map_rom|rom_memory~0_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~23_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011010100110011001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	datac => \port_map_pc|ALT_INV_outPort[1]~DUPLICATE_q\,
	datad => \port_map_pc|ALT_INV_outPort\(0),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~170_combout\);

-- Location: LABCELL_X35_Y1_N33
\port_map_ula|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux17~0_combout\ = ( \port_map_banco_de_registradores|registradores~170_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ (((!\port_map_rom|rom_memory~5_combout\ & (!\port_map_ula|OP1|C~2_combout\)) # 
-- (\port_map_rom|rom_memory~5_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~1_combout\))))) ) ) # ( !\port_map_banco_de_registradores|registradores~170_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ $ (((!\port_map_rom|rom_memory~5_combout\ & 
-- (\port_map_ula|OP1|C~2_combout\)) # (\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|OP2|RESULTADO|C~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110010010011100111001001001101100011011011000110001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~2_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~170_combout\,
	combout => \port_map_ula|Mux17~0_combout\);

-- Location: FF_X36_Y1_N10
\port_map_banco_de_registradores|registradores~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux16~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~40_q\);

-- Location: FF_X36_Y1_N47
\port_map_banco_de_registradores|registradores~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux16~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~24_q\);

-- Location: LABCELL_X36_Y1_N12
\port_map_banco_de_registradores|registradores~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~172_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort\(1) & ((!\port_map_pc|outPort[0]~DUPLICATE_q\ & ((\port_map_banco_de_registradores|registradores~24_q\))) # 
-- (\port_map_pc|outPort[0]~DUPLICATE_q\ & (\port_map_banco_de_registradores|registradores~40_q\)))) # (\port_map_pc|outPort\(1) & (((\port_map_banco_de_registradores|registradores~24_q\)))) ) ) # ( !\port_map_rom|rom_memory~0_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~24_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011010100110011001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	datac => \port_map_pc|ALT_INV_outPort\(1),
	datad => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~172_combout\);

-- Location: LABCELL_X36_Y1_N0
\port_map_banco_de_registradores|registradores~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~171_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~40_q\ & ((\port_map_pc|outPort[0]~DUPLICATE_q\) # (\port_map_pc|outPort\(1)))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~24_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	datac => \port_map_pc|ALT_INV_outPort\(1),
	datad => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~171_combout\);

-- Location: LABCELL_X36_Y1_N51
\port_map_ula|OP1|C~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~3_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~172_combout\ ) ) # ( !\port_map_rom|rom_memory~4_combout\ & ( !\port_map_banco_de_registradores|registradores~172_combout\ $ 
-- (!\port_map_banco_de_registradores|registradores~171_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~172_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~171_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP1|C~3_combout\);

-- Location: LABCELL_X35_Y1_N39
\port_map_ula|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux16~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~1_combout\ & ( \port_map_ula|OP1|C~2_combout\ & ( !\port_map_ula|OP1|C~3_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\) # (!\port_map_rom|rom_memory~5_combout\ $ 
-- (\port_map_banco_de_registradores|registradores~170_combout\)))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~1_combout\ & ( \port_map_ula|OP1|C~2_combout\ & ( !\port_map_ula|OP1|C~3_combout\ $ (((!\port_map_banco_de_registradores|registradores~170_combout\ & 
-- (!\port_map_rom|rom_memory~5_combout\)) # (\port_map_banco_de_registradores|registradores~170_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))))) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~1_combout\ & ( !\port_map_ula|OP1|C~2_combout\ & ( 
-- !\port_map_ula|OP1|C~3_combout\ $ (((!\port_map_banco_de_registradores|registradores~170_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\))) # (\port_map_banco_de_registradores|registradores~170_combout\ & 
-- (\port_map_rom|rom_memory~5_combout\)))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~1_combout\ & ( !\port_map_ula|OP1|C~2_combout\ & ( !\port_map_ula|OP1|C~3_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & 
-- (!\port_map_rom|rom_memory~5_combout\ $ (\port_map_banco_de_registradores|registradores~170_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010011010010110101001100101100110010110100101011001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~3_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~170_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~1_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~2_combout\,
	combout => \port_map_ula|Mux16~0_combout\);

-- Location: FF_X35_Y1_N41
\port_map_banco_de_registradores|registradores~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux15~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~25_q\);

-- Location: FF_X35_Y1_N56
\port_map_banco_de_registradores|registradores~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux15~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~41_q\);

-- Location: LABCELL_X35_Y1_N48
\port_map_banco_de_registradores|registradores~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~174_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort\(1) & ((!\port_map_pc|outPort\(0) & (\port_map_banco_de_registradores|registradores~25_q\)) # (\port_map_pc|outPort\(0) & 
-- ((\port_map_banco_de_registradores|registradores~41_q\))))) # (\port_map_pc|outPort\(1) & (\port_map_banco_de_registradores|registradores~25_q\)) ) ) # ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000110110011001100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	datad => \port_map_pc|ALT_INV_outPort\(0),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~174_combout\);

-- Location: LABCELL_X35_Y1_N15
\port_map_banco_de_registradores|registradores~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~173_combout\ = ( \port_map_pc|outPort\(0) & ( \port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~41_q\ ) ) ) # ( !\port_map_pc|outPort\(0) & ( 
-- \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~41_q\ & \port_map_pc|outPort\(1)) ) ) ) # ( \port_map_pc|outPort\(0) & ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ 
-- ) ) ) # ( !\port_map_pc|outPort\(0) & ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	datae => \port_map_pc|ALT_INV_outPort\(0),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~173_combout\);

-- Location: LABCELL_X35_Y1_N30
\port_map_mult1_2x1_br_ula|Sout[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ = ( \port_map_banco_de_registradores|registradores~173_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~173_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\);

-- Location: LABCELL_X36_Y1_N21
\port_map_ula|OP2|RESULTADO|C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~2_combout\ = ( \port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~172_combout\ ) ) # ( !\port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~172_combout\ 
-- & !\port_map_banco_de_registradores|registradores~171_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~172_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~171_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~2_combout\);

-- Location: LABCELL_X36_Y1_N42
\port_map_ula|OP2|RESULTADO|C~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~3_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_ula|OP2|RESULTADO|C~0_combout\ & (\port_map_banco_de_registradores|registradores~170_combout\ & 
-- (!\port_map_ula|OP1|C~3_combout\ & \port_map_banco_de_registradores|registradores~168_combout\))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_ula|OP1|C~3_combout\ & 
-- (((!\port_map_ula|OP2|RESULTADO|C~0_combout\ & \port_map_banco_de_registradores|registradores~168_combout\)) # (\port_map_banco_de_registradores|registradores~170_combout\))) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( 
-- !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (\port_map_banco_de_registradores|registradores~170_combout\ & (!\port_map_ula|OP1|C~3_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~0_combout\) # 
-- (\port_map_banco_de_registradores|registradores~168_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_ula|OP1|C~3_combout\ & 
-- ((!\port_map_ula|OP2|RESULTADO|C~0_combout\) # ((\port_map_banco_de_registradores|registradores~168_combout\) # (\port_map_banco_de_registradores|registradores~170_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011110000001000000011000000110000101100000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP2|RESULTADO|ALT_INV_C~0_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~170_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~168_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~3_combout\);

-- Location: LABCELL_X35_Y1_N21
\port_map_ula|OP2|RESULTADO|C~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~4_combout\ = ( !\port_map_ula|OP2|RESULTADO|C~3_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~4_combout\);

-- Location: LABCELL_X36_Y1_N3
\port_map_ula|OP1|C~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~4_combout\ = ( !\port_map_rom|rom_memory~4_combout\ & ( (\port_map_banco_de_registradores|registradores~172_combout\ & \port_map_banco_de_registradores|registradores~171_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~172_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~171_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP1|C~4_combout\);

-- Location: LABCELL_X36_Y2_N42
\port_map_ula|OP1|C~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~5_combout\ = ( \port_map_ula|OP1|C~0_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( \port_map_ula|OP1|C~3_combout\ ) ) ) # ( !\port_map_ula|OP1|C~0_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( 
-- (\port_map_ula|OP1|C~3_combout\ & (((\port_map_banco_de_registradores|registradores~166_combout\ & \port_map_ula|OP1|C~1_combout\)) # (\port_map_banco_de_registradores|registradores~170_combout\))) ) ) ) # ( \port_map_ula|OP1|C~0_combout\ & ( 
-- !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( (\port_map_banco_de_registradores|registradores~170_combout\ & \port_map_ula|OP1|C~3_combout\) ) ) ) # ( !\port_map_ula|OP1|C~0_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[2]~2_combout\ & ( 
-- (\port_map_banco_de_registradores|registradores~166_combout\ & (\port_map_banco_de_registradores|registradores~170_combout\ & (\port_map_ula|OP1|C~1_combout\ & \port_map_ula|OP1|C~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000011001100000000001101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~166_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~170_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~1_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~3_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~0_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~2_combout\,
	combout => \port_map_ula|OP1|C~5_combout\);

-- Location: LABCELL_X35_Y1_N42
\port_map_ula|OP1|C~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~6_combout\ = ( !\port_map_ula|OP1|C~5_combout\ & ( !\port_map_ula|OP1|C~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|OP1|ALT_INV_C~4_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~5_combout\,
	combout => \port_map_ula|OP1|C~6_combout\);

-- Location: LABCELL_X35_Y1_N24
\port_map_ula|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux15~0_combout\ = ( \port_map_ula|OP1|C~6_combout\ & ( !\port_map_banco_de_registradores|registradores~174_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ (((\port_map_ula|OP2|RESULTADO|C~4_combout\ & 
-- \port_map_rom|rom_memory~5_combout\)))) ) ) # ( !\port_map_ula|OP1|C~6_combout\ & ( !\port_map_banco_de_registradores|registradores~174_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ $ (((!\port_map_rom|rom_memory~5_combout\) # 
-- (\port_map_ula|OP2|RESULTADO|C~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~174_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux15~0_combout\);

-- Location: FF_X35_Y1_N38
\port_map_banco_de_registradores|registradores~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux14~1_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~26_q\);

-- Location: FF_X35_Y1_N14
\port_map_banco_de_registradores|registradores~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux14~1_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~42_q\);

-- Location: LABCELL_X35_Y1_N0
\port_map_banco_de_registradores|registradores~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~175_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~42_q\ & ((\port_map_pc|outPort\(1)) # (\port_map_pc|outPort\(0)))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~26_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~175_combout\);

-- Location: LABCELL_X35_Y1_N27
\port_map_mult1_2x1_br_ula|Sout[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ = ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~175_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~175_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\);

-- Location: LABCELL_X35_Y1_N45
\port_map_banco_de_registradores|registradores~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~176_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort\(0) & (\port_map_banco_de_registradores|registradores~26_q\)) # (\port_map_pc|outPort\(0) & ((!\port_map_pc|outPort\(1) & 
-- ((\port_map_banco_de_registradores|registradores~42_q\))) # (\port_map_pc|outPort\(1) & (\port_map_banco_de_registradores|registradores~26_q\)))) ) ) # ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~26_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~176_combout\);

-- Location: LABCELL_X35_Y1_N9
\port_map_ula|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~0_combout\ = ( \port_map_ula|OP1|C~6_combout\ & ( (!\port_map_banco_de_registradores|registradores~174_combout\ & ((!\port_map_rom|rom_memory~5_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & 
-- !\port_map_ula|OP2|RESULTADO|C~4_combout\)))) # (\port_map_banco_de_registradores|registradores~174_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # ((\port_map_rom|rom_memory~5_combout\ & !\port_map_ula|OP2|RESULTADO|C~4_combout\)))) ) ) # 
-- ( !\port_map_ula|OP1|C~6_combout\ & ( (!\port_map_banco_de_registradores|registradores~174_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & ((!\port_map_rom|rom_memory~5_combout\) # (!\port_map_ula|OP2|RESULTADO|C~4_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~174_combout\ & (\port_map_rom|rom_memory~5_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # (!\port_map_ula|OP2|RESULTADO|C~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110000100100011011000010011101101111001001110110111100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~174_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~4_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux14~0_combout\);

-- Location: LABCELL_X35_Y1_N51
\port_map_ula|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux14~1_combout\ = ( \port_map_ula|Mux14~0_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ $ (!\port_map_banco_de_registradores|registradores~176_combout\) ) ) # ( !\port_map_ula|Mux14~0_combout\ & ( 
-- !\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ $ (\port_map_banco_de_registradores|registradores~176_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~176_combout\,
	dataf => \port_map_ula|ALT_INV_Mux14~0_combout\,
	combout => \port_map_ula|Mux14~1_combout\);

-- Location: FF_X37_Y3_N14
\port_map_banco_de_registradores|registradores~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux13~0_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~43_q\);

-- Location: LABCELL_X36_Y3_N48
\port_map_banco_de_registradores|registradores~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~27feeder_combout\ = ( \port_map_ula|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux13~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~27feeder_combout\);

-- Location: FF_X36_Y3_N50
\port_map_banco_de_registradores|registradores~27DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~27feeder_combout\,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~27DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N27
\port_map_banco_de_registradores|registradores~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~178_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~43_q\ ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~27DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~43_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~27DUPLICATE_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_banco_de_registradores|registradores~178_combout\);

-- Location: LABCELL_X36_Y1_N6
\port_map_ula|OP2|RESULTADO|C~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~5_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ( \port_map_ula|OP2|RESULTADO|C~3_combout\ & ( (\port_map_banco_de_registradores|registradores~176_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~174_combout\))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ( \port_map_ula|OP2|RESULTADO|C~3_combout\ & ( ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~174_combout\)) # (\port_map_banco_de_registradores|registradores~176_combout\) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~3_combout\ & ( 
-- (\port_map_banco_de_registradores|registradores~176_combout\ & ((!\port_map_ula|OP2|RESULTADO|C~2_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & \port_map_banco_de_registradores|registradores~174_combout\)) # 
-- (\port_map_ula|OP2|RESULTADO|C~2_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # (\port_map_banco_de_registradores|registradores~174_combout\))))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ( 
-- !\port_map_ula|OP2|RESULTADO|C~3_combout\ & ( ((!\port_map_ula|OP2|RESULTADO|C~2_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & \port_map_banco_de_registradores|registradores~174_combout\)) # (\port_map_ula|OP2|RESULTADO|C~2_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # (\port_map_banco_de_registradores|registradores~174_combout\)))) # (\port_map_banco_de_registradores|registradores~176_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111110111000100000011000111110011111111110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP2|RESULTADO|ALT_INV_C~2_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~176_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~174_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~3_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~5_combout\);

-- Location: LABCELL_X36_Y2_N24
\port_map_ula|OP1|C~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~7_combout\ = ( \port_map_ula|OP1|C~4_combout\ & ( \port_map_ula|OP1|C~5_combout\ & ( (!\port_map_banco_de_registradores|registradores~176_combout\ & (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & 
-- ((\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # (\port_map_banco_de_registradores|registradores~174_combout\)))) # (\port_map_banco_de_registradores|registradores~176_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\)) # (\port_map_banco_de_registradores|registradores~174_combout\))) ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( \port_map_ula|OP1|C~5_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~176_combout\ & (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # (\port_map_banco_de_registradores|registradores~174_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~176_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\) # (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\)) # (\port_map_banco_de_registradores|registradores~174_combout\))) ) ) ) # ( 
-- \port_map_ula|OP1|C~4_combout\ & ( !\port_map_ula|OP1|C~5_combout\ & ( (!\port_map_banco_de_registradores|registradores~176_combout\ & (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\) # 
-- (\port_map_banco_de_registradores|registradores~174_combout\)))) # (\port_map_banco_de_registradores|registradores~176_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\) # (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~174_combout\))) ) ) ) # ( !\port_map_ula|OP1|C~4_combout\ & ( !\port_map_ula|OP1|C~5_combout\ & ( (!\port_map_banco_de_registradores|registradores~176_combout\ & 
-- (\port_map_banco_de_registradores|registradores~174_combout\ & (\port_map_mult1_2x1_br_ula|Sout[4]~3_combout\ & \port_map_mult1_2x1_br_ula|Sout[5]~4_combout\))) # (\port_map_banco_de_registradores|registradores~176_combout\ & 
-- (((\port_map_banco_de_registradores|registradores~174_combout\ & \port_map_mult1_2x1_br_ula|Sout[4]~3_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[5]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000001110111111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~174_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~3_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~176_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~4_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~4_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~5_combout\,
	combout => \port_map_ula|OP1|C~7_combout\);

-- Location: FF_X36_Y3_N49
\port_map_banco_de_registradores|registradores~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~27feeder_combout\,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~27_q\);

-- Location: LABCELL_X36_Y3_N21
\port_map_banco_de_registradores|registradores~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~177_combout\ = ( \port_map_pc|outPort\(1) & ( \port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~43_q\ ) ) ) # ( !\port_map_pc|outPort\(1) & ( 
-- \port_map_rom|rom_memory~0_combout\ & ( (\port_map_pc|outPort\(0) & \port_map_banco_de_registradores|registradores~43_q\) ) ) ) # ( \port_map_pc|outPort\(1) & ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~27_q\ 
-- ) ) ) # ( !\port_map_pc|outPort\(1) & ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~43_q\,
	datae => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~177_combout\);

-- Location: LABCELL_X36_Y3_N9
\port_map_mult1_2x1_br_ula|Sout[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ = ( \port_map_banco_de_registradores|registradores~177_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~177_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\);

-- Location: LABCELL_X37_Y3_N12
\port_map_ula|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ( !\port_map_banco_de_registradores|registradores~178_combout\ $ (((!\port_map_rom|rom_memory~5_combout\ & ((\port_map_ula|OP1|C~7_combout\))) # 
-- (\port_map_rom|rom_memory~5_combout\ & (!\port_map_ula|OP2|RESULTADO|C~5_combout\)))) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ( !\port_map_banco_de_registradores|registradores~178_combout\ $ (((!\port_map_rom|rom_memory~5_combout\ & 
-- ((!\port_map_ula|OP1|C~7_combout\))) # (\port_map_rom|rom_memory~5_combout\ & (\port_map_ula|OP2|RESULTADO|C~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001111001001011000111100100110011100001101101001110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~7_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	combout => \port_map_ula|Mux13~0_combout\);

-- Location: LABCELL_X37_Y2_N48
\port_map_banco_de_registradores|registradores~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~210_combout\ = ( !\port_map_ula|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux12~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~210_combout\);

-- Location: FF_X37_Y2_N49
\port_map_banco_de_registradores|registradores~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~210_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~44_q\);

-- Location: LABCELL_X37_Y2_N30
\port_map_banco_de_registradores|registradores~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~209_combout\ = ( !\port_map_ula|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux12~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~209_combout\);

-- Location: FF_X37_Y2_N31
\port_map_banco_de_registradores|registradores~28DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~209_combout\,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~28DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N0
\port_map_banco_de_registradores|registradores~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~180_combout\ = ( \port_map_banco_de_registradores|registradores~28DUPLICATE_q\ & ( (!\port_map_rom|rom_memory~2_combout\) # (\port_map_banco_de_registradores|registradores~44_q\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~28DUPLICATE_q\ & ( (\port_map_rom|rom_memory~2_combout\ & \port_map_banco_de_registradores|registradores~44_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~44_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~28DUPLICATE_q\,
	combout => \port_map_banco_de_registradores|registradores~180_combout\);

-- Location: FF_X37_Y2_N50
\port_map_banco_de_registradores|registradores~44DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~210_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~44DUPLICATE_q\);

-- Location: FF_X37_Y2_N32
\port_map_banco_de_registradores|registradores~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~209_combout\,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~28_q\);

-- Location: LABCELL_X37_Y2_N24
\port_map_banco_de_registradores|registradores~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~179_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~44DUPLICATE_q\ & ((\port_map_pc|outPort\(1)) # (\port_map_pc|outPort[0]~DUPLICATE_q\))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~28_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~44DUPLICATE_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	datac => \port_map_pc|ALT_INV_outPort[0]~DUPLICATE_q\,
	datad => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~179_combout\);

-- Location: LABCELL_X37_Y2_N39
\port_map_mult1_2x1_br_ula|Sout[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ = ( \port_map_banco_de_registradores|registradores~179_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~179_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\);

-- Location: LABCELL_X37_Y2_N6
\port_map_ula|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~0_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_banco_de_registradores|registradores~180_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ (((!\port_map_ula|OP1|C~7_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~178_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) # (\port_map_ula|OP1|C~7_combout\ & (!\port_map_banco_de_registradores|registradores~178_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))))) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_banco_de_registradores|registradores~180_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ $ 
-- (((!\port_map_ula|OP2|RESULTADO|C~5_combout\ & (\port_map_banco_de_registradores|registradores~178_combout\ & !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)) # (\port_map_ula|OP2|RESULTADO|C~5_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) 
-- # (\port_map_banco_de_registradores|registradores~178_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1001100110010110011010011001100110010110011001100110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~180_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datag => \port_map_ula|OP1|ALT_INV_C~7_combout\,
	combout => \port_map_ula|Mux12~0_combout\);

-- Location: LABCELL_X37_Y2_N51
\port_map_ula|Mux12~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~0_wirecell_combout\ = ( !\port_map_ula|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux12~0_combout\,
	combout => \port_map_ula|Mux12~0_wirecell_combout\);

-- Location: FF_X37_Y3_N26
\port_map_banco_de_registradores|registradores~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux11~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~45_q\);

-- Location: FF_X37_Y3_N47
\port_map_banco_de_registradores|registradores~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux11~0_combout\,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~29_q\);

-- Location: LABCELL_X36_Y3_N42
\port_map_banco_de_registradores|registradores~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~181_combout\ = ( \port_map_rom|rom_memory~0_combout\ & ( (\port_map_banco_de_registradores|registradores~45_q\ & ((\port_map_pc|outPort\(0)) # (\port_map_pc|outPort\(1)))) ) ) # ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~45_q\,
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~181_combout\);

-- Location: LABCELL_X36_Y3_N36
\port_map_banco_de_registradores|registradores~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~182_combout\ = ( \port_map_pc|outPort\(1) & ( \port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) ) ) # ( !\port_map_pc|outPort\(1) & ( 
-- \port_map_rom|rom_memory~0_combout\ & ( (!\port_map_pc|outPort\(0) & (\port_map_banco_de_registradores|registradores~29_q\)) # (\port_map_pc|outPort\(0) & ((\port_map_banco_de_registradores|registradores~45_q\))) ) ) ) # ( \port_map_pc|outPort\(1) & ( 
-- !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) ) ) # ( !\port_map_pc|outPort\(1) & ( !\port_map_rom|rom_memory~0_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010000010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datac => \port_map_pc|ALT_INV_outPort\(0),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~45_q\,
	datae => \port_map_pc|ALT_INV_outPort\(1),
	dataf => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~182_combout\);

-- Location: LABCELL_X36_Y3_N3
\port_map_ula|OP1|C~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~8_combout\ = ( \port_map_banco_de_registradores|registradores~182_combout\ & ( \port_map_rom|rom_memory~4_combout\ ) ) # ( \port_map_banco_de_registradores|registradores~182_combout\ & ( !\port_map_rom|rom_memory~4_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~181_combout\ ) ) ) # ( !\port_map_banco_de_registradores|registradores~182_combout\ & ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~181_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~181_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~182_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP1|C~8_combout\);

-- Location: LABCELL_X37_Y3_N3
\port_map_ula|OP1|C~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~9_combout\ = ( \port_map_ula|OP1|C~7_combout\ & ( (!\port_map_banco_de_registradores|registradores~180_combout\ & (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & ((\port_map_banco_de_registradores|registradores~178_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)))) # (\port_map_banco_de_registradores|registradores~180_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\) # (\port_map_banco_de_registradores|registradores~178_combout\)) # 
-- (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) ) ) # ( !\port_map_ula|OP1|C~7_combout\ & ( (!\port_map_banco_de_registradores|registradores~180_combout\ & (\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & 
-- (\port_map_banco_de_registradores|registradores~178_combout\ & \port_map_mult1_2x1_br_ula|Sout[7]~6_combout\))) # (\port_map_banco_de_registradores|registradores~180_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & 
-- \port_map_banco_de_registradores|registradores~178_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~180_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~7_combout\,
	combout => \port_map_ula|OP1|C~9_combout\);

-- Location: LABCELL_X37_Y2_N33
\port_map_ula|OP2|RESULTADO|C~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~6_combout\ = ( \port_map_ula|OP2|RESULTADO|C~5_combout\ & ( (!\port_map_banco_de_registradores|registradores~180_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # 
-- (\port_map_banco_de_registradores|registradores~178_combout\)))) # (\port_map_banco_de_registradores|registradores~180_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # 
-- (\port_map_banco_de_registradores|registradores~178_combout\)))) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~5_combout\ & ( (!\port_map_banco_de_registradores|registradores~180_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & 
-- (\port_map_banco_de_registradores|registradores~178_combout\ & !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) # (\port_map_banco_de_registradores|registradores~180_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\) # 
-- ((\port_map_banco_de_registradores|registradores~178_combout\ & !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100010011010100010011011101010011011101110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~180_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~6_combout\);

-- Location: LABCELL_X37_Y3_N45
\port_map_ula|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~6_combout\ & ( !\port_map_ula|OP1|C~8_combout\ $ (((!\port_map_ula|OP1|C~9_combout\) # (\port_map_rom|rom_memory~5_combout\))) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~6_combout\ & ( 
-- !\port_map_ula|OP1|C~8_combout\ $ (((!\port_map_rom|rom_memory~5_combout\ & !\port_map_ula|OP1|C~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000000001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~8_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~9_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\,
	combout => \port_map_ula|Mux11~0_combout\);

-- Location: LABCELL_X37_Y2_N15
\port_map_banco_de_registradores|registradores~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~213_combout\ = ( !\port_map_ula|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux10~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~213_combout\);

-- Location: FF_X37_Y2_N16
\port_map_banco_de_registradores|registradores~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~213_combout\,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~30_q\);

-- Location: LABCELL_X37_Y2_N54
\port_map_banco_de_registradores|registradores~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~214_combout\ = ( !\port_map_ula|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux10~0_combout\,
	combout => \port_map_banco_de_registradores|registradores~214_combout\);

-- Location: FF_X37_Y2_N56
\port_map_banco_de_registradores|registradores~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_banco_de_registradores|registradores~214_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~46_q\);

-- Location: LABCELL_X37_Y3_N6
\port_map_banco_de_registradores|registradores~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~183_combout\ = ( !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~0_combout\ & (\port_map_banco_de_registradores|registradores~30_q\)) # (\port_map_rom|rom_memory~0_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~46_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~46_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~183_combout\);

-- Location: LABCELL_X37_Y3_N48
\port_map_banco_de_registradores|registradores~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~184_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~46_q\ ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~30_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~46_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_banco_de_registradores|registradores~184_combout\);

-- Location: LABCELL_X37_Y3_N0
\port_map_ula|OP1|C~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~10_combout\ = ( \port_map_banco_de_registradores|registradores~184_combout\ & ( (!\port_map_banco_de_registradores|registradores~183_combout\) # (\port_map_rom|rom_memory~4_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~184_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & \port_map_banco_de_registradores|registradores~183_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~183_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~184_combout\,
	combout => \port_map_ula|OP1|C~10_combout\);

-- Location: LABCELL_X36_Y2_N48
\port_map_ula|OP1|C~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~12_combout\ = ( \port_map_ula|OP1|C~8_combout\ & ( \port_map_ula|OP1|C~7_combout\ & ( (!\port_map_banco_de_registradores|registradores~180_combout\ & (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & 
-- ((\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # (\port_map_banco_de_registradores|registradores~178_combout\)))) # (\port_map_banco_de_registradores|registradores~180_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\) # 
-- (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\)) # (\port_map_banco_de_registradores|registradores~178_combout\))) ) ) ) # ( \port_map_ula|OP1|C~8_combout\ & ( !\port_map_ula|OP1|C~7_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~180_combout\ & (\port_map_banco_de_registradores|registradores~178_combout\ & (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\))) # 
-- (\port_map_banco_de_registradores|registradores~180_combout\ & (((\port_map_banco_de_registradores|registradores~178_combout\ & \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010001011100000000000000000001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~180_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~8_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~7_combout\,
	combout => \port_map_ula|OP1|C~12_combout\);

-- Location: LABCELL_X37_Y2_N42
\port_map_ula|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~0_combout\ = ( !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|OP1|C~10_combout\ $ ((((\port_map_banco_de_registradores|registradores~182_combout\ & (\port_map_banco_de_registradores|registradores~181_combout\ & 
-- !\port_map_rom|rom_memory~4_combout\))) # (\port_map_ula|OP1|C~12_combout\))) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|OP1|C~10_combout\ $ (((!\port_map_banco_de_registradores|registradores~182_combout\ & 
-- ((!\port_map_ula|OP2|RESULTADO|C~6_combout\) # ((\port_map_banco_de_registradores|registradores~181_combout\ & !\port_map_rom|rom_memory~4_combout\)))) # (\port_map_banco_de_registradores|registradores~182_combout\ & 
-- (\port_map_banco_de_registradores|registradores~181_combout\ & (!\port_map_ula|OP2|RESULTADO|C~6_combout\ & !\port_map_rom|rom_memory~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1110000011110000010011010101111100011111000011111011001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~182_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~181_combout\,
	datac => \port_map_ula|OP2|RESULTADO|ALT_INV_C~6_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~10_combout\,
	datag => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	combout => \port_map_ula|Mux10~0_combout\);

-- Location: LABCELL_X37_Y2_N57
\port_map_ula|Mux10~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~0_wirecell_combout\ = ( !\port_map_ula|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \port_map_ula|ALT_INV_Mux10~0_combout\,
	combout => \port_map_ula|Mux10~0_wirecell_combout\);

-- Location: FF_X37_Y3_N23
\port_map_banco_de_registradores|registradores~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux9~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~47_q\);

-- Location: FF_X37_Y3_N55
\port_map_banco_de_registradores|registradores~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux9~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~31_q\);

-- Location: LABCELL_X37_Y3_N54
\port_map_banco_de_registradores|registradores~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~185_combout\ = ( !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~0_combout\ & ((\port_map_banco_de_registradores|registradores~31_q\))) # (\port_map_rom|rom_memory~0_combout\ & 
-- (\port_map_banco_de_registradores|registradores~47_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~47_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~185_combout\);

-- Location: LABCELL_X37_Y3_N33
\port_map_banco_de_registradores|registradores~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~186_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~47_q\ ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~31_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~47_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_banco_de_registradores|registradores~186_combout\);

-- Location: LABCELL_X37_Y3_N57
\port_map_ula|OP1|C~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~13_combout\ = ( \port_map_banco_de_registradores|registradores~186_combout\ & ( (!\port_map_banco_de_registradores|registradores~185_combout\) # (\port_map_rom|rom_memory~4_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~186_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & \port_map_banco_de_registradores|registradores~185_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~185_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~186_combout\,
	combout => \port_map_ula|OP1|C~13_combout\);

-- Location: LABCELL_X37_Y3_N27
\port_map_ula|OP2|RESULTADO|C~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~8_combout\ = ( \port_map_banco_de_registradores|registradores~181_combout\ & ( \port_map_banco_de_registradores|registradores~184_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & 
-- \port_map_banco_de_registradores|registradores~183_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~181_combout\ & ( \port_map_banco_de_registradores|registradores~184_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & 
-- (\port_map_banco_de_registradores|registradores~183_combout\ & !\port_map_banco_de_registradores|registradores~182_combout\)) ) ) ) # ( \port_map_banco_de_registradores|registradores~181_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~184_combout\ & ( (!\port_map_rom|rom_memory~4_combout\) # (!\port_map_banco_de_registradores|registradores~182_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~181_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~184_combout\ & ( (!\port_map_banco_de_registradores|registradores~182_combout\) # ((!\port_map_rom|rom_memory~4_combout\ & \port_map_banco_de_registradores|registradores~183_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001100111111111100110000001100000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~183_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~182_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~181_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~184_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~8_combout\);

-- Location: LABCELL_X36_Y1_N30
\port_map_ula|OP2|RESULTADO|C~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~7_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~5_combout\ & ( (!\port_map_ula|OP1|C~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~180_combout\) # (\port_map_banco_de_registradores|registradores~178_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_banco_de_registradores|registradores~178_combout\ & 
-- \port_map_banco_de_registradores|registradores~180_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~5_combout\ & ( (!\port_map_ula|OP1|C~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\) 
-- # (\port_map_banco_de_registradores|registradores~180_combout\))) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~5_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (!\port_map_ula|OP1|C~8_combout\ 
-- & \port_map_banco_de_registradores|registradores~180_combout\)) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[6]~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~5_combout\ & ( (!\port_map_ula|OP1|C~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ 
-- & ((\port_map_banco_de_registradores|registradores~180_combout\) # (\port_map_banco_de_registradores|registradores~178_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[7]~6_combout\ & (\port_map_banco_de_registradores|registradores~178_combout\ & 
-- \port_map_banco_de_registradores|registradores~180_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110000000000001010000010100000111100000010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~6_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~178_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~8_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~180_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~5_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~5_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~7_combout\);

-- Location: LABCELL_X37_Y3_N36
\port_map_ula|OP2|RESULTADO|C~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~9_combout\ = ( \port_map_ula|OP2|RESULTADO|C~7_combout\ & ( (\port_map_ula|OP1|C~10_combout\ & \port_map_ula|OP2|RESULTADO|C~8_combout\) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~7_combout\ & ( 
-- \port_map_ula|OP2|RESULTADO|C~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_ula|OP1|ALT_INV_C~10_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~9_combout\);

-- Location: LABCELL_X36_Y3_N33
\port_map_mult1_2x1_br_ula|Sout[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ = ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~183_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~183_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[9]~7_combout\);

-- Location: LABCELL_X36_Y3_N57
\port_map_ula|OP1|C~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~11_combout\ = ( \port_map_banco_de_registradores|registradores~182_combout\ & ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~181_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~181_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~182_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_ula|OP1|C~11_combout\);

-- Location: LABCELL_X37_Y3_N42
\port_map_ula|OP1|C~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~14_combout\ = ( \port_map_ula|OP1|C~12_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & !\port_map_banco_de_registradores|registradores~184_combout\) ) ) # ( !\port_map_ula|OP1|C~12_combout\ & ( 
-- (!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & ((!\port_map_banco_de_registradores|registradores~184_combout\) # (!\port_map_ula|OP1|C~11_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~184_combout\ & !\port_map_ula|OP1|C~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~7_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~184_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~11_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	combout => \port_map_ula|OP1|C~14_combout\);

-- Location: LABCELL_X37_Y3_N30
\port_map_ula|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~0_combout\ = ( \port_map_ula|OP1|C~14_combout\ & ( !\port_map_ula|OP1|C~13_combout\ $ (((!\port_map_rom|rom_memory~5_combout\) # (!\port_map_ula|OP2|RESULTADO|C~9_combout\))) ) ) # ( !\port_map_ula|OP1|C~14_combout\ & ( 
-- !\port_map_ula|OP1|C~13_combout\ $ (((\port_map_rom|rom_memory~5_combout\ & !\port_map_ula|OP2|RESULTADO|C~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111001100110000111100110000110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|OP1|ALT_INV_C~13_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datad => \port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~14_combout\,
	combout => \port_map_ula|Mux9~0_combout\);

-- Location: FF_X37_Y3_N19
\port_map_banco_de_registradores|registradores~48DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux8~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~48DUPLICATE_q\);

-- Location: FF_X37_Y3_N35
\port_map_banco_de_registradores|registradores~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux8~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~32_q\);

-- Location: LABCELL_X37_Y3_N15
\port_map_banco_de_registradores|registradores~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~188_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~48DUPLICATE_q\ ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~32_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~48DUPLICATE_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_banco_de_registradores|registradores~188_combout\);

-- Location: FF_X37_Y3_N20
\port_map_banco_de_registradores|registradores~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux8~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~48_q\);

-- Location: LABCELL_X37_Y3_N39
\port_map_banco_de_registradores|registradores~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~187_combout\ = ( !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~0_combout\ & ((\port_map_banco_de_registradores|registradores~32_q\))) # (\port_map_rom|rom_memory~0_combout\ & 
-- (\port_map_banco_de_registradores|registradores~48_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~48_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~187_combout\);

-- Location: LABCELL_X37_Y3_N9
\port_map_ula|OP1|C~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~15_combout\ = ( \port_map_banco_de_registradores|registradores~187_combout\ & ( !\port_map_rom|rom_memory~4_combout\ $ (\port_map_banco_de_registradores|registradores~188_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~187_combout\ & ( \port_map_banco_de_registradores|registradores~188_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~188_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~187_combout\,
	combout => \port_map_ula|OP1|C~15_combout\);

-- Location: LABCELL_X36_Y2_N33
\port_map_mult1_2x1_br_ula|Sout[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[10]~8_combout\ = ( \port_map_banco_de_registradores|registradores~185_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~185_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[10]~8_combout\);

-- Location: LABCELL_X37_Y3_N21
\port_map_ula|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~9_combout\ & ( \port_map_ula|OP1|C~14_combout\ & ( !\port_map_ula|OP1|C~15_combout\ $ (((!\port_map_banco_de_registradores|registradores~186_combout\ & (!\port_map_rom|rom_memory~5_combout\)) 
-- # (\port_map_banco_de_registradores|registradores~186_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\))))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~9_combout\ & ( \port_map_ula|OP1|C~14_combout\ & ( !\port_map_ula|OP1|C~15_combout\ $ 
-- (((!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\) # (!\port_map_rom|rom_memory~5_combout\ $ (\port_map_banco_de_registradores|registradores~186_combout\)))) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~9_combout\ & ( !\port_map_ula|OP1|C~14_combout\ & ( 
-- !\port_map_ula|OP1|C~15_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\ & (!\port_map_rom|rom_memory~5_combout\ $ (\port_map_banco_de_registradores|registradores~186_combout\))))) ) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~9_combout\ & ( 
-- !\port_map_ula|OP1|C~14_combout\ & ( !\port_map_ula|OP1|C~15_combout\ $ (((!\port_map_banco_de_registradores|registradores~186_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\))) # (\port_map_banco_de_registradores|registradores~186_combout\ & 
-- (\port_map_rom|rom_memory~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010011001011011001001110000110110001110010110011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~15_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~8_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~186_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~9_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~14_combout\,
	combout => \port_map_ula|Mux8~0_combout\);

-- Location: LABCELL_X37_Y2_N36
\port_map_mult1_2x1_br_ula|Sout[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[11]~9_combout\ = ( \port_map_banco_de_registradores|registradores~187_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~187_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[11]~9_combout\);

-- Location: FF_X35_Y2_N56
\port_map_banco_de_registradores|registradores~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux7~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~33_q\);

-- Location: FF_X35_Y2_N38
\port_map_banco_de_registradores|registradores~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux7~0_combout\,
	sload => VCC,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~49_q\);

-- Location: LABCELL_X35_Y2_N42
\port_map_banco_de_registradores|registradores~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~190_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~49_q\ ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~33_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~49_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_banco_de_registradores|registradores~190_combout\);

-- Location: LABCELL_X35_Y2_N30
\port_map_banco_de_registradores|registradores~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~189_combout\ = ( !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~0_combout\ & ((\port_map_banco_de_registradores|registradores~33_q\))) # (\port_map_rom|rom_memory~0_combout\ & 
-- (\port_map_banco_de_registradores|registradores~49_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~49_q\,
	datab => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~189_combout\);

-- Location: LABCELL_X35_Y2_N9
\port_map_mult1_2x1_br_ula|Sout[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ = ( \port_map_banco_de_registradores|registradores~189_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~189_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[12]~10_combout\);

-- Location: LABCELL_X35_Y2_N51
\port_map_ula|OP1|C~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~17_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ & ( !\port_map_banco_de_registradores|registradores~190_combout\ ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~190_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~190_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~10_combout\,
	combout => \port_map_ula|OP1|C~17_combout\);

-- Location: LABCELL_X36_Y2_N6
\port_map_ula|OP1|C~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~16_combout\ = ( \port_map_banco_de_registradores|registradores~184_combout\ & ( \port_map_ula|OP1|C~12_combout\ & ( (!\port_map_banco_de_registradores|registradores~186_combout\ & !\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\) ) ) ) 
-- # ( !\port_map_banco_de_registradores|registradores~184_combout\ & ( \port_map_ula|OP1|C~12_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & ((!\port_map_banco_de_registradores|registradores~186_combout\) # 
-- (!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & (!\port_map_banco_de_registradores|registradores~186_combout\ & !\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\)) ) ) ) # ( 
-- \port_map_banco_de_registradores|registradores~184_combout\ & ( !\port_map_ula|OP1|C~12_combout\ & ( (!\port_map_banco_de_registradores|registradores~186_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\) # 
-- ((!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & !\port_map_ula|OP1|C~11_combout\)))) # (\port_map_banco_de_registradores|registradores~186_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\ & 
-- !\port_map_ula|OP1|C~11_combout\))) ) ) ) # ( !\port_map_banco_de_registradores|registradores~184_combout\ & ( !\port_map_ula|OP1|C~12_combout\ & ( (!\port_map_banco_de_registradores|registradores~186_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\) # ((!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\) # (!\port_map_ula|OP1|C~11_combout\)))) # (\port_map_banco_de_registradores|registradores~186_combout\ & 
-- (!\port_map_mult1_2x1_br_ula|Sout[10]~8_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[9]~7_combout\) # (!\port_map_ula|OP1|C~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111010001100000011101000111010001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[9]~7_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~186_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[10]~8_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~11_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~184_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~12_combout\,
	combout => \port_map_ula|OP1|C~16_combout\);

-- Location: LABCELL_X37_Y3_N51
\port_map_ula|OP2|RESULTADO|C~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~10_combout\ = ( \port_map_banco_de_registradores|registradores~186_combout\ & ( (!\port_map_rom|rom_memory~4_combout\ & ((!\port_map_banco_de_registradores|registradores~187_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~188_combout\ & \port_map_banco_de_registradores|registradores~185_combout\)) # (\port_map_banco_de_registradores|registradores~187_combout\ & ((!\port_map_banco_de_registradores|registradores~188_combout\) 
-- # (\port_map_banco_de_registradores|registradores~185_combout\))))) ) ) # ( !\port_map_banco_de_registradores|registradores~186_combout\ & ( (!\port_map_banco_de_registradores|registradores~188_combout\) # ((!\port_map_rom|rom_memory~4_combout\ & 
-- \port_map_banco_de_registradores|registradores~187_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110010111100101111001000100000101000100010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~187_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~188_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~185_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~186_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~10_combout\);

-- Location: LABCELL_X36_Y1_N24
\port_map_ula|OP2|RESULTADO|C~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~11_combout\ = ( \port_map_ula|OP2|RESULTADO|C~10_combout\ & ( \port_map_ula|OP2|RESULTADO|C~7_combout\ & ( (((\port_map_ula|OP2|RESULTADO|C~8_combout\ & \port_map_ula|OP1|C~10_combout\)) # (\port_map_ula|OP1|C~13_combout\)) # 
-- (\port_map_ula|OP1|C~15_combout\) ) ) ) # ( \port_map_ula|OP2|RESULTADO|C~10_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~7_combout\ & ( ((\port_map_ula|OP1|C~13_combout\) # (\port_map_ula|OP2|RESULTADO|C~8_combout\)) # (\port_map_ula|OP1|C~15_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111111111100000000000000000101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP1|ALT_INV_C~15_combout\,
	datab => \port_map_ula|OP2|RESULTADO|ALT_INV_C~8_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~10_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~13_combout\,
	datae => \port_map_ula|OP2|RESULTADO|ALT_INV_C~10_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~7_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~11_combout\);

-- Location: LABCELL_X35_Y2_N39
\port_map_ula|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~0_combout\ = ( \port_map_ula|OP1|C~16_combout\ & ( \port_map_ula|OP2|RESULTADO|C~11_combout\ & ( !\port_map_ula|OP1|C~17_combout\ $ (((!\port_map_rom|rom_memory~5_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~188_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[11]~9_combout\))))) ) ) ) # ( !\port_map_ula|OP1|C~16_combout\ & ( \port_map_ula|OP2|RESULTADO|C~11_combout\ & ( !\port_map_ula|OP1|C~17_combout\ $ 
-- (((!\port_map_rom|rom_memory~5_combout\ & (!\port_map_banco_de_registradores|registradores~188_combout\ & !\port_map_mult1_2x1_br_ula|Sout[11]~9_combout\)))) ) ) ) # ( \port_map_ula|OP1|C~16_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~11_combout\ & ( 
-- !\port_map_ula|OP1|C~17_combout\ $ ((((!\port_map_banco_de_registradores|registradores~188_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[11]~9_combout\)) # (\port_map_rom|rom_memory~5_combout\))) ) ) ) # ( !\port_map_ula|OP1|C~16_combout\ & ( 
-- !\port_map_ula|OP2|RESULTADO|C~11_combout\ & ( !\port_map_ula|OP1|C~17_combout\ $ ((((!\port_map_banco_de_registradores|registradores~188_combout\ & !\port_map_mult1_2x1_br_ula|Sout[11]~9_combout\)) # (\port_map_rom|rom_memory~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101011010101000000101111110101111111100000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~188_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~9_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~17_combout\,
	datae => \port_map_ula|OP1|ALT_INV_C~16_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\,
	combout => \port_map_ula|Mux7~0_combout\);

-- Location: FF_X35_Y2_N17
\port_map_banco_de_registradores|registradores~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux6~1_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~34_q\);

-- Location: FF_X35_Y2_N29
\port_map_banco_de_registradores|registradores~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux6~1_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~50_q\);

-- Location: LABCELL_X35_Y2_N24
\port_map_banco_de_registradores|registradores~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~192_combout\ = ( \port_map_banco_de_registradores|registradores~50_q\ & ( (\port_map_rom|rom_memory~2_combout\) # (\port_map_banco_de_registradores|registradores~34_q\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~50_q\ & ( (\port_map_banco_de_registradores|registradores~34_q\ & !\port_map_rom|rom_memory~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	datad => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~50_q\,
	combout => \port_map_banco_de_registradores|registradores~192_combout\);

-- Location: LABCELL_X35_Y2_N15
\port_map_banco_de_registradores|registradores~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~191_combout\ = ( \port_map_banco_de_registradores|registradores~50_q\ & ( (!\port_map_rom|rom_memory~1_combout\ & ((\port_map_banco_de_registradores|registradores~34_q\) # 
-- (\port_map_rom|rom_memory~0_combout\))) ) ) # ( !\port_map_banco_de_registradores|registradores~50_q\ & ( (!\port_map_rom|rom_memory~0_combout\ & (!\port_map_rom|rom_memory~1_combout\ & \port_map_banco_de_registradores|registradores~34_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~50_q\,
	combout => \port_map_banco_de_registradores|registradores~191_combout\);

-- Location: LABCELL_X35_Y2_N48
\port_map_mult1_2x1_br_ula|Sout[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ = ( \port_map_banco_de_registradores|registradores~191_combout\ & ( !\port_map_rom|rom_memory~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~191_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[13]~11_combout\);

-- Location: LABCELL_X36_Y2_N12
\port_map_ula|OP1|C~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~18_combout\ = ( \port_map_ula|OP1|C~16_combout\ & ( (!\port_map_banco_de_registradores|registradores~190_combout\ & (\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ & (\port_map_banco_de_registradores|registradores~188_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[11]~9_combout\))) # (\port_map_banco_de_registradores|registradores~190_combout\ & (((\port_map_banco_de_registradores|registradores~188_combout\ & \port_map_mult1_2x1_br_ula|Sout[11]~9_combout\)) # 
-- (\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\))) ) ) # ( !\port_map_ula|OP1|C~16_combout\ & ( (!\port_map_banco_de_registradores|registradores~190_combout\ & (\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ & 
-- ((\port_map_mult1_2x1_br_ula|Sout[11]~9_combout\) # (\port_map_banco_de_registradores|registradores~188_combout\)))) # (\port_map_banco_de_registradores|registradores~190_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[11]~9_combout\) # 
-- (\port_map_banco_de_registradores|registradores~188_combout\)) # (\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000101110111011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~190_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~10_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~188_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[11]~9_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~16_combout\,
	combout => \port_map_ula|OP1|C~18_combout\);

-- Location: LABCELL_X36_Y1_N39
\port_map_ula|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~0_combout\ = ( \port_map_ula|OP2|RESULTADO|C~11_combout\ & ( (\port_map_banco_de_registradores|registradores~190_combout\ & !\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~11_combout\ & ( 
-- (!\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\) # (\port_map_banco_de_registradores|registradores~190_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~190_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~10_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\,
	combout => \port_map_ula|Mux6~0_combout\);

-- Location: LABCELL_X35_Y2_N27
\port_map_ula|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~1_combout\ = ( \port_map_ula|Mux6~0_combout\ & ( !\port_map_banco_de_registradores|registradores~192_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ $ (((\port_map_ula|OP1|C~18_combout\ & 
-- !\port_map_rom|rom_memory~5_combout\)))) ) ) # ( !\port_map_ula|Mux6~0_combout\ & ( !\port_map_banco_de_registradores|registradores~192_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ $ (((\port_map_rom|rom_memory~5_combout\) # 
-- (\port_map_ula|OP1|C~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~192_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~11_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~18_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|ALT_INV_Mux6~0_combout\,
	combout => \port_map_ula|Mux6~1_combout\);

-- Location: FF_X36_Y2_N2
\port_map_banco_de_registradores|registradores~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux5~0_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~51_q\);

-- Location: FF_X36_Y2_N10
\port_map_banco_de_registradores|registradores~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux5~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~35_q\);

-- Location: LABCELL_X35_Y2_N6
\port_map_banco_de_registradores|registradores~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~194_combout\ = ( \port_map_banco_de_registradores|registradores~35_q\ & ( (!\port_map_rom|rom_memory~2_combout\) # (\port_map_banco_de_registradores|registradores~51_q\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~35_q\ & ( (\port_map_rom|rom_memory~2_combout\ & \port_map_banco_de_registradores|registradores~51_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~51_q\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	combout => \port_map_banco_de_registradores|registradores~194_combout\);

-- Location: LABCELL_X35_Y2_N45
\port_map_banco_de_registradores|registradores~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~193_combout\ = ( !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~0_combout\ & (\port_map_banco_de_registradores|registradores~35_q\)) # (\port_map_rom|rom_memory~0_combout\ & 
-- ((\port_map_banco_de_registradores|registradores~51_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~51_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~193_combout\);

-- Location: LABCELL_X35_Y2_N12
\port_map_mult1_2x1_br_ula|Sout[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ = ( !\port_map_rom|rom_memory~4_combout\ & ( \port_map_banco_de_registradores|registradores~193_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~193_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[14]~12_combout\);

-- Location: LABCELL_X35_Y2_N21
\port_map_ula|OP1|C~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~19_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & ( !\port_map_banco_de_registradores|registradores~194_combout\ ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & ( 
-- \port_map_banco_de_registradores|registradores~194_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~194_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~12_combout\,
	combout => \port_map_ula|OP1|C~19_combout\);

-- Location: LABCELL_X36_Y2_N15
\port_map_ula|OP2|RESULTADO|C~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP2|RESULTADO|C~12_combout\ = ( \port_map_ula|OP2|RESULTADO|C~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ & (((\port_map_banco_de_registradores|registradores~190_combout\ & 
-- !\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\)) # (\port_map_banco_de_registradores|registradores~192_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ & (\port_map_banco_de_registradores|registradores~190_combout\ & 
-- (!\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\ & \port_map_banco_de_registradores|registradores~192_combout\))) ) ) # ( !\port_map_ula|OP2|RESULTADO|C~11_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ & 
-- (((!\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\) # (\port_map_banco_de_registradores|registradores~192_combout\)) # (\port_map_banco_de_registradores|registradores~190_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ & 
-- (\port_map_banco_de_registradores|registradores~192_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[12]~10_combout\) # (\port_map_banco_de_registradores|registradores~190_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011111101110100001111110101000000111101000100000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~190_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[12]~10_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~11_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~192_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~11_combout\,
	combout => \port_map_ula|OP2|RESULTADO|C~12_combout\);

-- Location: LABCELL_X36_Y2_N0
\port_map_ula|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~0_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( \port_map_ula|OP1|C~19_combout\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( 
-- !\port_map_ula|OP1|C~19_combout\ $ (((!\port_map_banco_de_registradores|registradores~192_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\) # (!\port_map_ula|OP1|C~18_combout\))) # (\port_map_banco_de_registradores|registradores~192_combout\ 
-- & (!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ & !\port_map_ula|OP1|C~18_combout\)))) ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_ula|OP1|C~19_combout\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_ula|OP1|C~19_combout\ $ (((!\port_map_banco_de_registradores|registradores~192_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\) # 
-- (!\port_map_ula|OP1|C~18_combout\))) # (\port_map_banco_de_registradores|registradores~192_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\ & !\port_map_ula|OP1|C~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111100001111000000011110011110000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~192_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~11_combout\,
	datac => \port_map_ula|OP1|ALT_INV_C~19_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~18_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\,
	combout => \port_map_ula|Mux5~0_combout\);

-- Location: FF_X36_Y2_N38
\port_map_banco_de_registradores|registradores~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \port_map_ula|Mux4~0_combout\,
	ena => \port_map_rom|rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~52_q\);

-- Location: FF_X36_Y2_N52
\port_map_banco_de_registradores|registradores~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \port_map_ula|Mux4~0_combout\,
	sload => VCC,
	ena => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~36_q\);

-- Location: LABCELL_X35_Y2_N18
\port_map_banco_de_registradores|registradores~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~195_combout\ = ( !\port_map_rom|rom_memory~1_combout\ & ( (!\port_map_rom|rom_memory~0_combout\ & ((\port_map_banco_de_registradores|registradores~36_q\))) # (\port_map_rom|rom_memory~0_combout\ & 
-- (\port_map_banco_de_registradores|registradores~52_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~52_q\,
	datac => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	dataf => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	combout => \port_map_banco_de_registradores|registradores~195_combout\);

-- Location: LABCELL_X35_Y2_N33
\port_map_banco_de_registradores|registradores~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~196_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( \port_map_banco_de_registradores|registradores~52_q\ ) ) # ( !\port_map_rom|rom_memory~2_combout\ & ( 
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
	dataf => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_banco_de_registradores|registradores~196_combout\);

-- Location: LABCELL_X35_Y2_N0
\port_map_ula|OP1|C~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~20_combout\ = ( \port_map_banco_de_registradores|registradores~196_combout\ & ( (!\port_map_banco_de_registradores|registradores~195_combout\) # (\port_map_rom|rom_memory~4_combout\) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~196_combout\ & ( (\port_map_banco_de_registradores|registradores~195_combout\ & !\port_map_rom|rom_memory~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~195_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~196_combout\,
	combout => \port_map_ula|OP1|C~20_combout\);

-- Location: LABCELL_X36_Y2_N30
\port_map_ula|OP1|C~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|OP1|C~21_combout\ = ( \port_map_ula|OP1|C~18_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & (\port_map_banco_de_registradores|registradores~194_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\) # 
-- (\port_map_banco_de_registradores|registradores~192_combout\)))) # (\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[13]~11_combout\) # (\port_map_banco_de_registradores|registradores~192_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~194_combout\))) ) ) # ( !\port_map_ula|OP1|C~18_combout\ & ( (!\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & (\port_map_banco_de_registradores|registradores~194_combout\ & 
-- (\port_map_banco_de_registradores|registradores~192_combout\ & \port_map_mult1_2x1_br_ula|Sout[13]~11_combout\))) # (\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & (((\port_map_banco_de_registradores|registradores~192_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[13]~11_combout\)) # (\port_map_banco_de_registradores|registradores~194_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~12_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~194_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~192_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[13]~11_combout\,
	dataf => \port_map_ula|OP1|ALT_INV_C~18_combout\,
	combout => \port_map_ula|OP1|C~21_combout\);

-- Location: LABCELL_X36_Y2_N36
\port_map_ula|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~0_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_ula|OP1|C~20_combout\ $ (((!\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\) # 
-- (\port_map_banco_de_registradores|registradores~194_combout\))) ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_ula|OP1|C~20_combout\ $ (!\port_map_ula|OP1|C~21_combout\) ) ) ) # ( 
-- \port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_ula|OP1|C~20_combout\ $ (((\port_map_banco_de_registradores|registradores~194_combout\ & !\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\))) ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_ula|OP2|RESULTADO|C~12_combout\ & ( !\port_map_ula|OP1|C~20_combout\ $ (!\port_map_ula|OP1|C~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100100111001001110000110011110011000011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~194_combout\,
	datab => \port_map_ula|OP1|ALT_INV_C~20_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~12_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~21_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\,
	combout => \port_map_ula|Mux4~0_combout\);

-- Location: M10K_X38_Y2_N0
\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor_16bits.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_25v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => GND,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X35_Y2_N3
\port_map_ula|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux20~0_combout\ = ( \port_map_banco_de_registradores|registradores~194_combout\ & ( (!\port_map_ula|OP1|C~20_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\) # (\port_map_ula|OP2|RESULTADO|C~12_combout\))) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~194_combout\ & ( (\port_map_ula|OP2|RESULTADO|C~12_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[14]~12_combout\ & !\port_map_ula|OP1|C~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|OP2|RESULTADO|ALT_INV_C~12_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[14]~12_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~20_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~194_combout\,
	combout => \port_map_ula|Mux20~0_combout\);

-- Location: LABCELL_X35_Y2_N54
\port_map_ula|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux20~1_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_banco_de_registradores|registradores~195_combout\ & ( ((\port_map_banco_de_registradores|registradores~196_combout\ & \port_map_rom|rom_memory~4_combout\)) # 
-- (\port_map_ula|Mux20~0_combout\) ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( \port_map_banco_de_registradores|registradores~195_combout\ & ( (!\port_map_banco_de_registradores|registradores~196_combout\ & (!\port_map_rom|rom_memory~4_combout\ & 
-- \port_map_ula|OP1|C~21_combout\)) # (\port_map_banco_de_registradores|registradores~196_combout\ & ((!\port_map_rom|rom_memory~4_combout\) # (\port_map_ula|OP1|C~21_combout\))) ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~195_combout\ & ( (\port_map_ula|Mux20~0_combout\) # (\port_map_banco_de_registradores|registradores~196_combout\) ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- !\port_map_banco_de_registradores|registradores~195_combout\ & ( (\port_map_banco_de_registradores|registradores~196_combout\ & \port_map_ula|OP1|C~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010111110101111101000100110111010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~196_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	datac => \port_map_ula|ALT_INV_Mux20~0_combout\,
	datad => \port_map_ula|OP1|ALT_INV_C~21_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~195_combout\,
	combout => \port_map_ula|Mux20~1_combout\);

-- Location: MLABCELL_X47_Y76_N3
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


