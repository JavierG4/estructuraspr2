module unidad_control(output reg s_inc , s_inm, we3, output reg [2:0] Op, output reg wez, input wire[5 : 0]opcode, input wire reloj, reset, 1);
  always @(*)
  begin
    if (reloj == 1'b1 && reset == 1'b0) begin  //poner todo en notacion binaria
      casex (opcode)
          6'b0000??:
          s_inc <= 1
          s_inm <= 1
          Op <= 000
          we3 <= 1
          wez <= 1
          6'b0001??:
          s_inc <= 1
          s_inm <= 1
          Op <= 3'b010
          we3 <= 1
          wez <= 1
          6'b0010??:
          s_inc <= 1
          s_inm <= 1
          Op <= 3'b011
          we3 <= 0
          wez <= 1
          6'b0011??:
          s_inc <= 1
          s_inm <= 1
          Op <= 110
          we3 <= 1
          wez <= 1
          6'b0100??:
          s_inc <= 1
          s_inm <= 0
          Op <= 000
          we3 <= 1
          wez <= 1
          6'b0101??:
          s_inc <= 1
          s_inm <= 0
          Op <= 001
          we3 <= 1
          wez <= 1
          6'b0110??:
          s_inc <= 1
          s_inm <= 0
          Op <= 010
          we3 <= 1
          wez <= 1
          6'b0111??:
          s_inc <= 1
          s_inm <= 0
          Op <= 011
          we3 <= 1
          wez <= 1
          6'b1000??:
          s_inc <= 1
          s_inm <= 0
          Op <= 100
          we3 <= 1
          wez <= 1
          6'b1001??:
          s_inc <= 1
          s_inm <= 0
          Op <= 101
          we3 <= 1
          wez <= 1
          6'b1010??:
          s_inc <= 1
          s_inm <= 0
          Op <= 110
          we3 <= 1
          wez <= 1
          6'b1011??:
          s_inc <= 1
          s_inm <= 0
          Op <= 111
          we3 <= 1
          wez <= 1
          6'b1111??: // mas casos dependiendo de si el flag esta a 0 o a 1
          s_inc <= 0
          s_inm <= 0
          Op <= 000
          we3 <= 0
          wez <= 0
      endcase      
    end
    if (reloj == 1'b0 && reset == 1'b1) begin //reset asincrono
      s_inc <= 0
      s_inm <= 0
      Op <= 000
      we3 <= 0
      wez <= 0
    end
  end
endmodule
