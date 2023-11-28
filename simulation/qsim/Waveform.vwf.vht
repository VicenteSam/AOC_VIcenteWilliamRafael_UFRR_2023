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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2023 01:12:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Qualcom_LI
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Qualcom_LI_vhd_vec_tst IS
END Qualcom_LI_vhd_vec_tst;
ARCHITECTURE Qualcom_LI_arch OF Qualcom_LI_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL out_br_regA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_br_regB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_endereco : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_out_mult4_2X1_ram_ula : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_rs : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_rt : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outPc : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL outRam : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL outRom : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL outUla : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
COMPONENT Qualcom_LI
	PORT (
	clock : IN STD_LOGIC;
	out_br_regA : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_br_regB : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_endereco : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_opcode : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_out_mult4_2X1_ram_ula : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_rs : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_rt : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	outPc : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	outRam : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	outRom : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	outUla : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	overflow : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Qualcom_LI
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	out_br_regA => out_br_regA,
	out_br_regB => out_br_regB,
	out_endereco => out_endereco,
	out_opcode => out_opcode,
	out_out_mult4_2X1_ram_ula => out_out_mult4_2X1_ram_ula,
	out_rs => out_rs,
	out_rt => out_rt,
	outPc => outPc,
	outRam => outRam,
	outRom => outRom,
	outUla => outUla,
	overflow => overflow
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END Qualcom_LI_arch;
