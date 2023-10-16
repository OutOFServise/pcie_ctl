module DWC pcie clkrst clk div #(// Propagation delayparameter TP =TP
(
// Input: clockinput wire// Input: resetinput wire
in clk.
rst n,
// Input: division factorinput wire [6:0] div factor,
// Output: sync
input wiresync，// Output: enable for clock division
output reg
out en
// Clock counter - supports division up to 16reg [5:0] r clk cnt;
// Logic for clock counter// - Counter r clk cnt starts at 4'boool after a change//in rate or after reset, ensuring that out en is phase
aligned with pclk. The reset goes through a synchronizerto align with pclk before entering this module.1ialways @(posedge in clk or negedge rst n) begin
if (l'bo == rst n) begin
r clk cnt <= #TP 6'b:
end else if (1'bl == sync) beginr clk cnt <= #TP 6'b00000;
end else begin
r clk cnt <= #TP r clk cnt +I'bl:
end
end
// Clock divider enable signals
wire w clk divl en;wire w clk div2 en;wire w clk div4 en;wire w clk div8 en;wire w clk divl6 en;
wire w clk div32 en;wire w clk div64 en;
// Loqic for clock divider enable signals
I'bl1'boassign w clk divl en = div factor ==1?-43.assign w clk div2 en= div factor ==1'b11'be;2'b11'bo;assignw clk div4 en= div factor ==assignw clk div8 en"div factor ==8I'bl1'bo;iw clk div16 en = div factor == 162l'bli'bo;assign
assign w clk div32 en =div factor ==321'bl: i'bo;assign w clk div64 en =div factor == 641'bl :1'bo;7
// Logic for output enable for clock divisionalways @(posedge in clk or negedge rst n) begin
if (l'bo ==rst n) begin
out en <= #TP I'bo;
end else beginout en = #TP( w clk divl en (w clk div2 en & (1'be ==  clk cntl0 ))  w clk div4 en  (2'b0 == r clk cntl1:0)(w clk div8 en & (3'b000 == r clk cnt2:0]))  (w clk div16 en & (4'b0000 == r clk cnt13:01))(w clk div32 en & (5'b00000 == r clk cnt[4:0]))   (w clk div64 en && (6'b000000 == r clk cnt15:01)));
end
end
endmodule : DWC pcie clkrst clk div