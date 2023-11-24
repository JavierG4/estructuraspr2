module unidad_control(output reg s_inc , s_inm, we3, output reg [2:0] Op, output reg wez, input wire[5 : 0]opcode, input wire clk, reset, zero);
  always @(*)
  begin
    if (clk == 1'b1 && reset == 1'b0) begin
      casex (opcode)
          6'b0000??: begin //LI
          s_inc <= 1'b1;
          s_inm <= 1'b1;
          Op <= 3'b000;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0001??: begin //ADI
          s_inc <= 1'b1;
          s_inm <= 1'b1;
          Op <= 3'b010;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0010??: begin//SBI
          s_inc <= 1'b1;
          s_inm <= 1'b1;
          Op <= 3'b011;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0011??:  begin //NAI
          s_inc <= 1'b1;
          s_inm <= 1'b1;
          Op <= 3'b110;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0100??: begin //B
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b000;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0101??: begin //Not A
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b001;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0110??: begin//a + b
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b010;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b0111??: begin// a - b
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b011;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b1000??: begin//a and b
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b100;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b1001??: begin// a or b
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b101;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b1010??: begin  // a NAND b
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b110;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b1011??: begin// A en c1
          s_inc <= 1'b1;
          s_inm <= 1'b0;
          Op <= 3'b111;
          we3 <= 1'b1;
          wez <= 1'b0;
          end
          6'b1111??: begin // saltos
          s_inc <= 1'b0;
          s_inm <= 1'b0;
          Op <= 3'b000;
          we3 <= 1'b0;
          wez <= 1'b1;
          end
      endcase      
    end
    if (reset == 1'b1) begin 
      s_inc <= 1'b0;
      s_inm <= 1'b0;
      Op <= 3'b000;
      we3 <= 1'b0;
      wez <= 1'b0;
    end
  end
endmodule
