include "include/DWC pcie ctl all defs.svh"include "Axi/DWC pcie axi slv pkg.svh"
module DWC pcie axi sisbimport DWC pcie axi slv_pkg::*;
非
parameter type slave aw = pkg axi slv aw stype slave ar = pkg axi slv ar sparameter
parametertype slave w= pkg axi slv w s
parametertype slave r= pkg axi slvr s
parametertype slave b= pkq axi slv b s
parameter DBI SLV
1'bo"
parameter BUS ADDR WIDTH
SLAVE BUS ADDR WIDTH"
parameter BUS ADDR P WIDTH
1CC SLV BUS ADDR WIDTH
parameterBUS DATA WIDTH
1SLAVE BUS DATA WIDTH
parameterBUS DATA P WIDTH
4CC SLV BUS DATA WIDTH
ADDR PARITY WIDTHparameter
CC SLV BUS ADDRP WIDTH"
0
DATA PARITY WIDTHarameter
ccSLV BUS DATAP WIDTH
arameterID WIDTH
V
CC SLV BUS ID WIDTH
WSTRB WIDTHarameter
0CC SLV BUS WSTRB WIDTHVCC SLV INT BURST LEN PW
BURST LEN WIDTHarameter
arameterDATA PROT WIDTH
VCC SLV BUS DATA PROT WIDTH
arameter ADDR PROT WIDTH
CC SLV BUS ADDR PROT WIDTH
"CC SLV AW USER WIDTH
parameter AW USER WIDTH
y
parameter W USER WIDTH
CC SLV W USER WIDTH
parameter AR USER WIDTH
CC SLV AR USER WIDTH
parameter R USER WIDTH
4*ccSLV R USER WIDTH
4
parameter B USER WIDTH
*ccSLV B USER WIDTH
parameter AW EXTRA PYLD WIDTHparameter W EXTRA PYLD WIDTHparameter AR EXTRA PYLD WIDTH
4
CC SLV AW EXTRA PYLD WIDTH
0
"
CC SLV W EXTRA PYLD WIDTH
CC SLV AR EXTRA PYLD WIDTH
parameter R EXTRA PYLD WIDTHparameter B EXTRA PYLD WIDTH
"CC SLV R EXTRA PYLD WIDTH
CC SLV B EXTRA PYLD WIDTH
parameter AW EXTRA PYLD PAR WIDTH =parameter W EXTRA PYLD PAR WIDTHparameterAR EXTRA PYLD PAR WIDTH parameterR EXTRA PYLD PAR WIDTH1B EXTRA PYLD PAR WIDTH"parameterparameter PRFX PAR WD"
CC SLV AW EXTRA PYLD PAR WIDTH，
CC SLV W EXTRA PYLD PAR WIDTHCC SLV AR EXTRA PYLD PAR WIDTH，cCSLV R EXTRA PYLD PAR WIDTHCC SLV B EXTRA PYLD PAR WIDTH ，CX PRFX PAR WD
// Clock and Reset
input
logic
input
logic
Aw Channel
1/
input slave aw
inputlogic [BUS ADDR WIDTH-1:0]
inputlogic
output slave aw
output logic [BUS ADDR P WIDTH-1:1
output
AR Channel
input slave ar
inputlogic [BUS ADDR WIDTH-1:0]
inputlogic
output slave ar
output logic [BUS ADDR P WIDTH-1:]
output
w Channel
inputslave w
inputlogic [BUS DATA WIDTH-1:0]
input
logic
slv aclkslv arstn
in aw
in awaddrin awreadyout aw
out awaddrout awready
in ar
in araddrin arreadyout ar
out araddrout arready
in win wdatain wready
OACOUCCO0OWIUTM-_。C
output
AR Channel
inputslave ar
logic [BUS ADDR WIDTH-1:0]input
inputlogic
output slave ar
outputlogic [BUS ADDR P WIDTH-1:]
output
w Channel
slave winput
inputlogic [BUS DATA WIDTH-1:0]
logicinput
output slave w
output logic[BUS DATA P WIDTH-1:]
output
R Channel
inputslave r
logic [BUS DATA P WIDTH-1:0]input
inputlogic
output slave
output logic [BUS DATA WIDTH-1:]
output logic
B Channel
slave binput
inputlogic
output slave b
outputlogic
NE
out awready
in ar
in araddr
in arready
out ar
out araddr
out arready
in w
in wdata
in wready
out w
out wdata
out wready
in r
in rdata
in rready
out r
out rdata
out rready
in b
in bready
out b
out bready
Parity Signals
assignout aw = in aw;
assign out ar =in ar;
in w ;assignout w"
assign out r= in r
assign out bin b1
assignout awready = in awready;
assign out arready =in arready;
assign out wreadyin wready ;1
assign out rready/in rready
assign out bready1in bready
assign out awaddrin awaddr2
assignout araddrin araddr"
assign out wdata"in wdata
assign out rdatain rdata..
endmodule
1