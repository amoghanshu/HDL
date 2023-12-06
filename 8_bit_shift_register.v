module shift_register (
  input clk,
  input data_in,
  input load,
  output [7:0] data_out
);

  reg [7:0] data;

  always @(posedge clk) begin
    if (load) begin
      data <= data_in;
    end else begin
      data[7:1] <= data[6:0];
      data[0] <= data_in;
    end
  end

  assign data_out = data;

endmodule
