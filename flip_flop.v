//SR flipflop
odule SR_flipflop (
  input clk,
  input rst_n,
  input s,
  input r,
  output reg q,
  output q_bar
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    q <= 1'b0;
  end else begin
    case ({s, r})
      2'b00: q <= q; // No change
      2'b01: q <= 1'b0; // Reset
      2'b10: q <= 1'b1; // Set
      2'b11: q <= 1'bx; // Invalid inputs
    endcase
  end
end

assign q_bar = ~q;

endmodule


//JK flipflop
module JK_flipflop (
  input clk,
  input rst_n,
  input j,
  input k,
  output reg q,
  output q_bar
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    q <= 1'b0;
  end else begin
    case ({j, k})
      2'b00: q <= q; // No change
      2'b01: q <= 1'b0; // Reset
      2'b10: q <= 1'b1; // Set
      2'b11: q <= ~q; // Toggle
    endcase
  end
end

assign q_bar = ~q;

endmodule


//D flip-flop
module D_flipflop (
  input clk,
  input rst_n,
  input d,
  output reg q,
  output q_bar
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    q <= 1'b0;
  end else begin
    q <= d;
  end
end

assign q_bar = ~q;

endmodule

//T flip-flop
module T_flipflop (
  input clk,
  input rst_n,
  input t,
  output reg q,
  output q_bar
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    q <= 1'b0;
  end else begin
    q <= ~q ^ t;
  end
end

assign q_bar = ~q;

endmodule
