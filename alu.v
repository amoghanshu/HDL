module alu(a, b, opcode, y);
input [31:0] a,b;
input [3:0] opcode;
output [31:0] y;
reg [31:0] y;
always @ (a or b or opcode)
begin
case (opcode )
4'b0000: y=a+b;
4'b0001: y=a-b;
4'b0010: y=~a;
4'b0011: y=a &b;
4'b0100: y=a | b;
4'b0101: y=~(a & b);
4'b0110: y=~(a | b);
4'b0111: y=a ^ b;
4'b1000: y=~(a ^ b);
4'b1001: y=a;
4'b1010: y=32'b00000000000000000000000000000000;
4'b1011: y=32'b11111111111111111111111111111111;
4'b1100: y=a+1;
4'b1101: y=a-1;
4'b1110: y=b+1;
4'b1111: y=b-1;
default: y=32'bX;
endcase
end
endmodule
