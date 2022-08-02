# 2022 Summer Vacation Bootcamp in Sangmyung University
## RISC-V Section


## FPGA SIMULATION Env. (Xilinx Version)

- below in run.f 

```bash
//////////////////////////    Xilinx Library Model     ////////////////////////
$XILINX_VIVADO/data/verilog/src/glbl.v
-y $XILINX_VIVADO/data/verilog/src/unisims        +libext+.v
-y $XILINX_VIVADO/data/verilog/src/retarget       +libext+.v

// -f $XILINX_VIVADO/data/secureip/gtxe2_channel/gtxe2_channel_cell.list.f
// -f $XILINX_VIVADO/data/secureip/gtxe2_common/gtxe2_common_cell.list.f
```

## FPGA SIMULATION Env. (Quartus Version)

