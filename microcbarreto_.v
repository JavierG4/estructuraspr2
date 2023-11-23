module unidad_control(output reg s_inc , s_inm, we3, output reg [2:0] Op, output reg wez, input wire[5 : 0]opcode, input wire reloj, reset, zero);
  always @(*)
  begin
    if (reloj == 1'b1 && reset == 1'b0) begin
      casex (opcode)
          6'b0000??:  //LI
          s_inc <= 1'b1
          s_inm <= 1'b1
          Op <= 3'b000
          we3 <= 1'b1
          wez <= 1'b0
          6'b0001??:   //ADI
          s_inc <= 1'b1
          s_inm <= 1'b1
          Op <= 3'b010
          we3 <= 1'b1
          wez <= 1'b0
          6'b0010??: //SBI
          s_inc <= 1'b1
          s_inm <= 1'b1
          Op <= 3'b011
          we3 <= 1'b1
          wez <= 1'b0
          6'b0011??:   //NAI
          s_inc <= 1'b1
          s_inm <= 1'b1
          Op <= 3'b110
          we3 <= 1'b1
          wez <= 1'b0
          6'b0100??: //B
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b000
          we3 <= 1'b1
          wez <= 1'b0
          6'b0101??: //Not A
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b001
          we3 <= 1'b1
          wez <= 1'b0
          6'b0110??: //a + b
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b010
          we3 <= 1'b1
          wez <= 1'b0
          6'b0111??: // a - b
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b011
          we3 <= 1'b1
          wez <= 1'b0
          6'b1000??: //a and b
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b100
          we3 <= 1'b1
          wez <= 1'b0
          6'b1001??: // a or b
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b101
          we3 <= 1'b1
          wez <= 1'b0
          6'b1010??:   // a NAND b
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b110
          we3 <= 1'b1
          wez <= 1'b0
          6'b1011??: // A en c1
          s_inc <= 1'b1
          s_inm <= 1'b0
          Op <= 3'b111
          we3 <= 1'b1
          wez <= 1'b0
          6'b1111??:  // saltos
          s_inc <= 1'b0
          s_inm <= 1'b0
          Op <= 3'b000
          we3 <= 1'b0
          wez <= zero
      endcase      
    end
    if (reset == 1'b1) begin 
      s_inc <= 1'b0
      s_inm <= 1'b0
      Op <= 3'b000
      we3 <= 1'b0
      wez <= 1'b0
    end
  end
endmodule
