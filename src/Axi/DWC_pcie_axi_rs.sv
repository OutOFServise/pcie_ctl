include"include/DWC pcie ctl all defs.svh?
module DWCpcie axi rs
一
parameter P FEED READY =
parameter CHAN WD = 3
,parameter TP = TP
0
input,input
,input
,input,inputinput
clk
rstn
clrn
vld from src //Valid from source[CHAN WD-1:0] chanl from src //AXI channel from sourcerdy from dest //Ready from destination
vld to dest //Valid to destination,output logicoutput logic [CHAN WD-l:0] chanl to dest //AXI channel to destinationoutput logicrdy to src//Ready to source
头
Internal structure to concatenate the data with valid signaltypedef struct packed {
logic
valid;
Logic [CHAN WD-1:] data;
internalPipe s;
Internal signals
internalPipe s s head;
internalPipe s r head;
logic
s headUpdate;
*
Connections with external ports from destination
always comb begin : c externalPortsConnections PROC
vld to dest= r head.valid;
chanl to dest = r head.data;
end : c externalPortsConnections PROC
*
Defining if final register should be updated
*
always comb begin : c headUpdate PROC
s headUpdate = rdy from dest (!r head.valid);
end : c headUpdate PROC
Final register stage
always ff @(posedge clk, negedge rstn) begin : s finalRegisterStage PRoCif (!rstn) beginr head <=#TP;
end else begin
if(!clrn) beginr head <= #TP0:end else if(s headUpdate) begin
head#TP s head;
endend
end :s finalRegisterStage PROC
generate
if(P FEED READY) begin : FEEDTHROUGH FROM VALID TO READY*
Indicating when module is ready to receive data
always comb begin : c readyToReceived PROCrdy to src = s headUpdate;end : c readyToReceived PROC
Connecting with external ports from source
always comb begin : c s head PROCs head.valid = vld from src;= chanl from src;s head.dataend : c s head PROC
end else begin : NO FEEDTHROUGH FROM VALID TO READY
internalPipe s s tail;internalPipe s r tail;
logic
s tailUpdate;s tailwrite;s tailRead;
logic
logic
[*
Selecting the correct source for final register
always comb begin : c muxingSourceFinalRegister PROCif (r tail.valid) begin
s head = r tail;
end else begin
s head.valid = vld from src;s head.data = chanl from src;
end
end : c muxingSourceFinalRegister PROC
Defining when the initial register is read
always comb begin : c initialRegisterRead PROCs tailRead = r tail.valid & s headUpdate;end : c initialRegisterRead PROC
Defining when the initial register is writealways comb begin : c initialRegisterWrite PROCs tailwrite = !r tail.valid &e r head.valid &6 !s headUpdate;end : c initialRegisterWrite PROC
Defining when the initial register should be updatedalways_comb begin : c initialRegisterUpdate PROCs tailUpdate = s tailwrite  s tailRead;
end : c initialRegisterUpdate PROC
Initial register stage
always ff @(posedge clk, negedge rstn) begin : s initialRegisterStage PROCif (!rstn) beginr tail <=#TP;end else begin
if(!clrn) begin
r tail <= #TP0;
end else if (s tailUpdate) begin
r tail <= #TP s tail;
end
end
end : s initialRegisterStage PROC
Selecting the data to be written into the initial register
always_comb begin : c muxingSourceInitialRegister PROCif (s tailRead) begin
s tail ='0;
end else begin
s tail.valid = vld from src;s tail.data= chanl from src;endend : c muxingSourceInitialRegister PROC
Indicating when module is ready to receive data
always comb begin : c readyToReceived PROCrdy to src = !r tail.valid;end : c readyToReceived PROC
end
endgenerate
endmodule // DWC pcie axi rs