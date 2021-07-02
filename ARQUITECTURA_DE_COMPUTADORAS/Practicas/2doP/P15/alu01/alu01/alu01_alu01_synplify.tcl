#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -4

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency auto
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false
set_option -frequency 1
set_option -default_enum_encoding default

#simulation options


#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0



#-- add_file options
add_file -vhdl {C:/lscc/diamond/3.11_x64/cae_library/synthesis/vhdl/machxo2.vhd}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/topdiv00VHDL/div00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/topdiv00VHDL/osc00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/topdiv00VHDL/packagediv00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/topdiv00VHDL/topdiv00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/xor00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/and00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/packageha00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/topha00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/or00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/packagefa00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/topfa00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/xnor00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/packageadder8bit00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/adder8bit00VHDL/topadder8bit00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/mult8bit00VHDL/packagemult8bit00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/mult8bit00VHDL/topmult8bit00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/anda00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/ora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/nanda00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/nora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/xora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/xnora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/nota00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/add00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/sub00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/mult00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/ac00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/packagealu00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/topalu00.vhdl}

#-- top module name
set_option -top_module topalu00

#-- set result format/file last
project -result_file {C:/Users/ameri/Documentos/ESCOM/Arquitectura/ARQUITECTURA_DE_COMPUTADORAS/Practicas/2doP/P15/alu01/alu01/alu01_alu01.edi}

#-- error message log file
project -log_file {alu01_alu01.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run hdl_info_gen -fileorder
project -run
