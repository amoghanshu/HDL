//data flow structure 
module fulladder (a ,b, c , sum ,carry) ;
input a ,b, c;
outsut sum, carry ;
assign sum = a^b^c;
assign carry=(a&b)|(b&c)|(a&c); 
endmodule

//behavioural description 
module fulladder(abc,sum,carry);
input [2:0] abc;
output sum,carry;
reg sum,carry;
always @ (abc)
begin
case(abc)
3'b000: begin sum=1'b0 ; carry = 1'b0 ; end
3'b001: begin sum=1'b1 ; carry = 1'b0 ; end
3'b010: begin sum=1'b1 ; carry = 1'b0 ; end
3'b011: begin sum=1'b0 ; carry = 1'b1 ; end
3'b100: begin sum=1'b1 ; carry = 1'b0 ; end
3'b101: begin sum=1'b0 ; carry = 1'b1 ; end
3'b110: begin sum=1'b0 ; carry = 1'b1 ; end
3'b111: begin sum=1'b1 ; carry = 1'b1 ; end
endcase
end
endmodule


// Structural Desciption
module fa(a,b,c,sum,car);
input a,b,c;
output sum,car;
wire s1,s2,s3;
xor x1(s1,a,b); and a1(s2,a,b);
xor x2(sum,s1,c); and a2(s3,s1,c);
or o1(car,s2,s3);
endmodule
