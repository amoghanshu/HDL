/* SR Flipflop*/
module sr_ff(sr, clk, rst, q, qb);
input [1:0]sr;
input rst, clk;
output q,qb;
reg q,qb;
always @ (posedge clk)
begin
if (rst==1)
begin
q=0;
qb=1;
end
else
case (sr)
2'b00: begin q=q; qb=qb; end
2'b01: begin q=0; qb=1; end
2'b10: begin q=1; qb=0; end
2'b11: begin q=1'bx; qb=1'bx; end
default:begin end
endcase
end
endmodule


/* JK Flipflop*/
module jk_ff(j, k, clk, reset, q, qb);
input [1:0]jk;
input clk,rst;
output q, qb;
reg q, qb;
reg [22:0] div;
reg clkdiv;
always @ (posedge clk)
begin
div = div+1'b1;
clkdiv = div[22];
end
always @ (posedge clkdiv)
begin
if(rst==1)
begin
q=0;
qb=1;
end
else
case (jk)
2'b00: begin q=q; qb=qb; end
2'b01: begin q=0; qb=1; end
2'b10: begin q=1; qb=0; end
2'b11: begin q=~(q); qb=~(qb); end
default: begin end
endcase
end
endmodule


/* D Flipflop*/
module sr_ff(sr, clk, rst, q, qb);
input [1:0]sr;
input rst, clk;
output q,qb;
reg q,qb;
always @ (posedge clk)
begin
if (rst==1)
begin
q=0;
qb=1;
end
else
case (sr)
2'b00: begin q=q; qb=qb; end
2'b01: begin q=0; qb=1; end
2'b10: begin q=1; qb=0; end
2'b11: begin q=1'bx; qb=1'bx; end
default:begin end
endcase
end
endmodule


/* T Flipflop */
module t_ff (t, clk, rst, q, qb);
input t, clk, rst;
output q, qb;
reg q,qb;
always @ (posedge clk)
begin
div = div+1'b1;
clkdiv = div[22];
end
always @ (posedge clkdiv)
begin
if (rst==1)
begin
q=0;
qb=1;
end
else
case ( t)
1’b0:begin q=q; qb=qb; end
1’b1:begin q=~(q); qb=~(qb); end
default: begin end
endcase
end
endmodule

