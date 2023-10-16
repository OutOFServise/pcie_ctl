reg
apb reset;
reg
clk 200Mhz;
//wire
pcie phy_txn;
//wire
pcie_phy_txp;
//reg
pcie phy_rxp;//
//reg
pcie phy rxn;
reg [3:0]device type;
PCIe rc pcie rc inst(
// Outputs
.pcie phy txnpcie phy txpapb reset.clk 200Mhz
// Inputs
device type
pcie phy rxp.pcie phy rxn
// From pcie rc inst of PCIe rc.v
// From pcie rc inst of PCIe rc.v
// From pcie rc inst of PCIe rc.v
// From pcie rc inst of PCIe rc.v
(pcie phy txn)
(pcie phy txp)
(apb reset),
(clk 200Mhz)
(device type[3:0]),
(pcie phy_rxp)，(pcie phy rxn));
PCIe rc #(ifdef DOWNSTREAM PORT
.DEVICE INDEX()
else
.DEVICE INDEX(1)
endif
VTB DUT INST(board if (u board),// board interface.chip if(dut chip),// chip interface.link if(dut wire)// serial linesifdef CX ADM ADAPTOR ENABLE
.link parallel if (dut parallel bus)endif // CX ADM ADAPTOR ENABLE粪