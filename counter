//4 bit binary counter 
module counter (
  input clk,
  input rst_n,
  output reg [3:0] q
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    q <= 4'b0000;
  end else begin
    q <= q + 1'b1;
  end
end

endmodule

//4bit bcd counter
module BCD_counter (
  input clk,
  input rst_n,
  output reg [3:0] q
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    q <= 4'b0000;
  end else begin
    if (q <= 4'b1001) begin
      q <= q + 1'b1;
    end else begin
      q <= 4'b0000;
    end
  end
end

endmodule

//up-down counter -synchronous 
module up_down_counter (
  input clk,
  input rst_n,
  input load,
  input up_down,
  input [3:0] load_data,
  output reg [3:0] count
);

  // Synchronous reset
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      count <= 4'b0000;
    end
  end

  // Loadable count
  always @(posedge clk) begin
    if (load) begin
      count <= load_data;
    end
  end

  // Up-down counter
  always @(posedge clk) begin
    if (up_down) begin
      count <= count + 1'b1;
    end else begin
      count <= count - 1'b1;
    end
  end
endmodule

//up-down counter - aynchronous reset
module up_down_counter (
  input clk,
  input rst_n,
  input load,
  input up_down,
  input [3:0] load_data,
  output reg [3:0] count
);

  // Asynchronous reset
  always @(negedge rst_n) begin
    count <= 4'b0000;
  end

  // Loadable count
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      count <= load_data;
    end else if (load) begin
      count <= load_data;
    end
  end

  // Up-down counter
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      count <= count;
    end else if (up_down) begin
      count <= count + 1'b1;
    end else begin
      count <= count - 1'b1;
    end
  end

endmodule


