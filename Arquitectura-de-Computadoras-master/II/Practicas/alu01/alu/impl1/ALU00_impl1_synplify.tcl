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
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/osc00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/div00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packagefa00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packageha00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packagediv00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/topdiv00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packagecomp.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packagemul00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/topadder0.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packageadder.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/topadder01.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/ora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/anda00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/nota00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/nanda00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/nora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/xora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/xnora00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/and0.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/and00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/fa00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/ha00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/or.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/or00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/xnor00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/xor.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/xor00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packageadder8bit00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/addera00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/subsa00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/adder8bits.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/mult8bits.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/topmult00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/ac00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/packagealu00.vhdl}
add_file -vhdl -lib "work" {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/topalu00.vhdl}

#-- top module name
set_option -top_module topalu00

#-- set result format/file last
project -result_file {C:/Users/ameri/Documentos/ESCOM/Arquitectura/Arquitectura-de-Computadoras-master/II/Practicas/alu01/alu/impl1/ALU00_impl1.edi}

#-- error message log file
project -log_file {ALU00_impl1.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run hdl_info_gen -fileorder
project -run
