//SR flipflop
module SR_flipflop (
  input clk,
  input rst_n,
  input s,
  input r,
  output reg q,
  output q_bar
);

  always @(posedge clk) begin
    if (!rst_n) begin
      q <= 0; // Asynchronous reset (active low)
    end else begin
      case ({s, r})
        2'b00: q <= q; // No change
        2'b01: q <= 1'b0; // Reset
        2'b10: q <= 1'b1; // Set
        2'b11: q <= 1'bx; // Invalid inputs
      endcase
    end
  end

  assign q_bar = ~q; // Inverted output

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

  always @(posedge clk) begin
    if (!rst_n) begin
      q <= 0; // Asynchronous reset (active low)
    end else begin
      case ({j, k})
        2'b00: q <= q;  // No change
        2'b01: q <= 1'b0; // Reset
        2'b10: q <= 1'b1; // Set
        2'b11: q <= ~q; // Toggle
      endcase
    end
  end

  assign q_bar = ~q; // Inverted output

endmodule


//D flip-flop
module dff(clk, reset, rstn, d, q);
  input clk, reset, rstn, d;
  output reg q;

  always @(posedge clk or negedge rstn) // Asynchronous reset
    begin
      if (!rstn)
        q <= 0;
      else
        begin
          if (reset) // Synchronous reset
            q <= 0;
          else
            q <= d;
        end
    end
endmodule

//T flip-flop
module T_flipflop (
  input clk,
  input rst_n,
  input t,
  output reg q,
  output q_bar
);

  always @(posedge clk) begin
    if (!rst_n) begin
      q <= 0; // Asynchronous reset (active low)
    end else begin
      q <= t ? ~q : q; // Toggle if t is 1, else hold current value
    end
  end

  assign q_bar = ~q; // Inverted output

endmodule
