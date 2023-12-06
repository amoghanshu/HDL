//synchronous reset
module counter (
  input clk,
  input reset,
  input up_down,
  output [3:0] count
);

  always @(posedge clk) begin
    if (reset) begin
      count <= 4'b0;
    end else if (up_down) begin
      count <= count + 1;
    end else begin
      count <= count - 1;
    end
  end

endmodule 


//Asynchronous Reset
module counter (
  input clk,
  input reset,
  input up_down,
  output [3:0] count
);

  reg [3:0] count_reg;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count_reg <= 4'b0;
    end else if (up_down) begin
      count_reg <= count_reg + 1;
    end else begin
      count_reg <= count_reg - 1;
    end
  end

  assign count = count_reg;

endmodule 
