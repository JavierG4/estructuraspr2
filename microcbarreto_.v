module unidad_control(output wire s_inc , s_inm, we3, output wire [2:0] Op, output wire wez, input wire[5 : 0]opcode, input wire reloj, reset, 1);
  always @(*)
  begin
    if (reloj == 1'b1 && reset == 1'b0) {
      casex (opcode)
          6'b0000??:
          assign s_inc = 1
          assign s_inm = 1
          assign Op = 000
          assign we3 = 1
          assign wez = 1
          6'b0001??:
          assign s_inc = 1
          assign s_inm = 1
          assign Op = 010
          assign we3 = 1
          assign wez = 1
          6'b0010??:
          assign s_inc = 1
          assign s_inm = 1
          assign Op = 011
          assign we3 = 0
          assign wez = 1
          6'b0011??:
          assign s_inc = 1
          assign s_inm = 1
          assign Op = 110
          assign we3 = 1
          assign wez = 1
          6'b0100??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 000
          assign we3 = 1
          assign wez = 1
          6'b0101??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 001
          assign we3 = 1
          assign wez = 1
          6'b0110??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 010
          assign we3 = 1
          assign wez = 1
          6'b0111??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 011
          assign we3 = 1
          assign wez = 1
          6'b1000??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 100
          assign we3 = 1
          assign wez = 1
          6'b1001??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 101
          assign we3 = 1
          assign wez = 1
          6'b1010??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 110
          assign we3 = 1
          assign wez = 1
          6'b1011??:
          assign s_inc = 1
          assign s_inm = 0
          assign Op = 111
          assign we3 = 1
          assign wez = 1
          6'b1111??:
          assign s_inc = 0
          assign s_inm = 0
          assign Op = 000
          assign we3 = 0
          assign wez = 0
      endcase      
    }
    if (reloj == 1'b0 && reset == 1'b1) {
      
    }
  end
endmodule
