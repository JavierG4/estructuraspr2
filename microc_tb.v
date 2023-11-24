//iverilog microc_tb.v alu.v componentes.v memprog.v microc.v uc.v
`timescale 1ns/10ps
module testbench;

reg clk;
reg reset;

wire [5:0] Opcode;
wire zero;
wire s_inc, s_inm, we, wez; 
wire [2:0] ALUOp;
microc microchip(Opcode, zero, clk, reset, s_inc, s_inm, we, wez,ALUOp);
unidad_control UC(s_inc, s_inm, we, ALUOp, wez, Opcode, clk, reset, zero);

// generación de reloj clk
always @(*)
begin
  clk = 1;
  #20;
  clk = 0;
  #60;
end

initial
begin
	$dumpfile("microc_tb.vcd");
	$dumpvars;
  // Señal de reset
  reset = 1; #5; reset = 0;
end

initial 
begin
  #2000   // 80 x 25
  $finish;
end

endmodule
