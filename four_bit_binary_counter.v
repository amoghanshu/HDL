//Synchronous Reset
module syncnt(clk, rst, bin_out)
input clk, rst;
output [3:0] bin_out;
reg  [3:0] bin_out;
always @ (posedge clk)
begin
if(rst) begin
bin_out<=4‘b0;
end
else
bin_out<=bin_out +1;
end
endmodule


//Asynchronous Reset
module asyncnt(clk, rst, bin_out);
input clk, rst;
output [3:0] bin_out;
reg  [3:0] bin_out;
always @ (posedge clk or posedge  rst)
begin
if(rst) begin
bin_out<=4'b0;
end
else
bin_out<=bin_out+1;
end
endmodule
