`timescale 1ns/10ps
module testbench;

reg clk;
reg reset;
// generación de reloj clk
always //siempre activo, no hay condición de activación
begin
  clk = 1;
  #20;
  clk = 0;
  #60;
end

wire [5:0] Opcode;
wire zero;
wire s_inc, s_inm, we, wez; 
wire [2:0] ALUOp
microc microchip(Opcode, zero, clk, reset, s_inc, we, wez);
unidad_control UC(s_inc, s_inm, we, ALUOp, wez, Opcode, clk, reset, zero)


endmodule
