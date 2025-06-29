transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/DAVIS/Research/Demo/DACmachine/DACmachine.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_14
vlib activehdl/processing_system7_vip_v1_0_16
vlib activehdl/xil_defaultlib
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_28
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/axi_data_fifo_v2_1_27
vlib activehdl/axi_crossbar_v2_1_29
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_bram_ctrl_v4_1_8
vlib activehdl/blk_mem_gen_v8_4_6
vlib activehdl/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -sv2k12 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../bd/dac_bd_1/ip/dac_bd_1_processing_system7_0_1/sim/dac_bd_1_processing_system7_0_1.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../bd/dac_bd_1/ip/dac_bd_1_xbar_0/sim/dac_bd_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/dac_bd_1/ip/dac_bd_1_rst_ps7_0_100M_0/sim/dac_bd_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../bd/dac_bd_1/ip/dac_bd_1_spi_interface_0_0/sim/dac_bd_1_spi_interface_0_0.v" \
"../../../bd/dac_bd_1/ipshared/dabc/hdl/AXI_Configuration_Registers_v1_0_S00_AXI.v" \
"../../../bd/dac_bd_1/ipshared/dabc/hdl/AXI_Configuration_Registers_v1_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_AXI_Configuration_Re_0_0/sim/dac_bd_1_AXI_Configuration_Re_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_8 -93  \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/85f5/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/dac_bd_1/ip/dac_bd_1_axi_bram_ctrl_0_0/sim/dac_bd_1_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../bd/dac_bd_1/ip/dac_bd_1_axi_bram_ctrl_0_bram_0/sim/dac_bd_1_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_bram_dr_multiplexer_0_0/sim/dac_bd_1_bram_dr_multiplexer_0_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_system_ila_0_4/bd_0/ip/ip_0/sim/bd_d378_ila_lib_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_system_ila_0_4/bd_0/sim/bd_d378.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_system_ila_0_4/sim/dac_bd_1_system_ila_0_4.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_BRAM_reader_0_0/sim/dac_bd_1_BRAM_reader_0_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_led_driver_0_0/sim/dac_bd_1_led_driver_0_0.v" \
"../../../bd/dac_bd_1/ipshared/6c1d/hdl/AXI_Control_Registers_v1_0_S00_AXI.v" \
"../../../bd/dac_bd_1/ipshared/6c1d/hdl/AXI_Control_Registers_v1_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_AXI_Control_Registers_0_0/sim/dac_bd_1_AXI_Control_Registers_0_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_LDAC_trigger_v2_0_0/sim/dac_bd_1_LDAC_trigger_v2_0_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_chip_sel_mux_0_0/sim/dac_bd_1_chip_sel_mux_0_0.v" \

vlog -work axi_protocol_converter_v2_1_28  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/ec67/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/aed8/hdl" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/affe/hdl/verilog" "+incdir+../../../../DACmachine.gen/sources_1/bd/dac_bd_1/ipshared/20d0/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l axi_bram_ctrl_v4_1_8 -l blk_mem_gen_v8_4_6 -l axi_protocol_converter_v2_1_28 \
"../../../bd/dac_bd_1/ip/dac_bd_1_auto_pc_2/sim/dac_bd_1_auto_pc_2.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_auto_pc_0/sim/dac_bd_1_auto_pc_0.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_auto_pc_1/sim/dac_bd_1_auto_pc_1.v" \
"../../../bd/dac_bd_1/ip/dac_bd_1_reset_clr_trigger_0_0/sim/dac_bd_1_reset_clr_trigger_0_0.v" \
"../../../bd/dac_bd_1/sim/dac_bd_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

