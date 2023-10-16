moduleDWC pcie clkrst bcmo mx
a0,
al
5,
2
ifdef DWC MX SRC
// Embedded fc/dc shell script for a combinational cell// is just setting size only
spyglass disable block UnrecSynthDir-MLSMD: Synthesis directive 'dc tcl script end' is not recognized for pragma 'synopsys sJ: Temporarily suppressed due to Spyglass's limitatin.ifndef DWC EMB SCR IS FOR FC
// synopsys dc tcl script begin// set size only [get cell "*U mx*"] "true";#
// synopsys dc tcl script endelse// synopsys fc tcl script begin// set size only [get cell "*U mx*"] "true";#// synopsys fc tcl script endendif
/ spyglass enable block UnrecSynthDir-MLendif
inputa0;
al;input
input
s;
output z;
// input a0
// input al
// clock select
// output clock
ifdef DWC MX SRC
DWC MX SRC
else
assign z = s ? al : a0;
endif
endmodule