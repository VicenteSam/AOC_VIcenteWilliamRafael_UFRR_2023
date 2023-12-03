# Processador Trinity
![Logo do Processador](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/logo/logo%20trinity.png)
>

## Processador Trinity

**Processador 16 Bits baseado em MIPS, codificado em VHDL, capaz de realizar instruções aritméticas como soma e subtração, operações com valores imediatos, saltos condicionais, entre outros.**

## Instruções Suportadas

| **Opcode** | **Nome** | **Formato** | **Breve Descrição**                           | **Exemplo**                                         |
| ---------- | -------- | ----------- | --------------------------------------------- | --------------------------------------------------- |
| 0000       | Add      | R           | Soma de dois operandos                        | **add** $s0, $s1, $s2, ou seja $s0 <= $s1 + $s2 |
| 0001       | Addi     | R           | Soma Imediata                                 | **Addi** $s0, 1, ou seja, $s0 <= $s0 + 1            |
| 0010       | Sub      | R           | Subtração de dois operandos                   | **Sub** $s0, $s1, $s2, ou seja, $s0 <= $s1 - $s2 |
| 0011       | Addi     | R           | Subtração Imediata                            | **Subi** $s0, 1, ou seja, $s0 <= $s0 – 1            |
| 0100       | Lw       | I           | Carrega valor da memória                      | **Lw** $s0, 0($s1)                                  |
| 0101       | Sw       | I           | Armazena valor na memória                     | **Sw** $s0, 0($s1)                                  |
| 0110       | Li       | I           | Carregar valor imediato                       | **Li** $s0, 2                                       |
| 0111       | BEQ      | J           | Desvio condicional se operandos iguais        | **BEQ** $s3, $s4, L                                 |
| 1000       | IF       | J           | Flag de condição se operandos iguais          | **IF** $s3, $s4                                     |
| 1001       | J        | J           | Desvio condicional para endereço especificado | **j** 0100 (endereço)                                          |


##  Componentes

- [Processador Trinity](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/Componentes/Trinity.vhd)
 - [ULA](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/ula.vhd)
 - [Unidade de Controle](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/unidade_controle.vhd)
- [Banco de Registradores](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/bancoRegistradores.vhd)
- [Memória Ram](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/Componentes/ram_memory.vhd)
- [Memória Rom](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/Componentes/rom_memory.vhd)
- [Program Counter](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/Componentes/PC.vhd)
- [Diretório dos Componentes](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/tree/main/Componentes)

## Datapath

![Datapath Processador Trinity](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/datapath/datapath.png)

[PNG](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/datapath/datapath.png)
 

##  RTL View
![RTL View Processador Trinity](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/RTL%20View/rtl%20view.png)
 
 [PNG](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/RTL%20View/rtl%20view.png)
 

## Relatório

[PDF](https://github.com/VicenteSam/AOC_VIcenteWilliamRafael_UFRR_2023/blob/main/Relatorio/Relatorio_Processador_Trinity.pdf)
