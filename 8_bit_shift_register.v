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



//SISO 
module SISO_shift_register(clk, rst_n, si, so);

  input clk, rst_n, si;
  output reg so;

  reg [7:0] data;

  always @(posedge clk) begin
    if (!rst_n) begin
      data <= 8'b0;  // Reset to all zeros
    end else begin
      data <= {si, data[7:1]};  // Shift in new bit, shift existing bits
      so <= data[7];          // Output the most significant bit
    end
  end

endmodule


//PISO
module PISO_shift_register(clk, rst_n, di, load, so);

  input clk, rst_n, load;
  input [7:0] di;
  output reg so;

  reg [7:0] data;

  always @(posedge clk) begin
    if (!rst_n) begin
      data <= 8'b0;  // Reset to all zeros
      so <= 1'b0;    // Reset output
    end else begin
      if (load) begin
        data <= di;  // Load parallel data
      end else begin
        so <= data[7];  // Output MSB
        data <= {1'b0, data[7:1]};  // Shift bits
      end
    end
  end

endmodule


//PIPO
module PIPO_shift_register(clk, rst_n, di, do);

  input clk, rst_n;
  input [7:0] di;
  output reg [7:0] do;

  always @(posedge clk) begin
    if (!rst_n) begin
      do <= 8'b0;  // Reset to all zeros
    end else begin
      do <= di;  // Load parallel data directly to output
    end
  end

endmodule

        
 //SIPO
module SIPO_shift_register(clk, rst_n, si, do);

  input clk, rst_n, si;
  output reg [7:0] do;

  reg [7:0] data;

  always @(posedge clk) begin
    if (!rst_n) begin
      data <= 8'b0;  // Reset to all zeros
    end else begin
      data <= {si, data[7:1]};  // Shift in new bit, shift existing bits
      do <= data;          // Output all bits in parallel
    end
  end

endmodule
