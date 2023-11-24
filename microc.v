module microc(output wire [5:0] Opcode, output wire zero, input wire clk, reset, s_inc, s_inm, we, wez, input wire [2:0] ALUOp);
  wire [7:0] RD1, RD2; //datos leidos
  input  wire [7:0]  WD3; //dato a escribir

  wire [3:0] muxsalida2;
  mux2 #(4) bancoreg(muxsalida2,Datum[11:8],Datum[3:0],s_inm);

  regfile regmem(RD1, RD2,clk,we,muxsalida2, Datum[7:4], Datum[3:0],WD3);

  wire [7:0] muxsalida;
  mux2 muxalu(muxsalida,RD2,Datum[11:4],s_inm);

  output reg Zero; // Indica si ha sido cero
  alu aluop(WD3,Zero,RD1,muxsalida,ALUOp);

  assign Zero1 = Zero;
  output reg zero2;
  ffd biestable(clk,reset,Zero1,wez,zero2);
  assign zero = zero2;

// Parte de instruccion para atras
  wire [9:0] PC_actual;
  wire [9:0] PC_nuevo;
  sum sumpc(PC_nuevo,10'b0000000001,PC_actual);

  mux2 #(10) muxpc(PC_nuevo,Datum[9:0],PC_nuevo,s_inc);
  registro #(10) pc(PC_actual,clk,reset,PC_nuevo);

  wire Datum [15:0];
  memprog memoria(Datum,clk,PC_actual);
  assign Opcode = Datum[15:10];
endmodule
