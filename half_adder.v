//dataflow model of half adder in verilog 
module half_adder(
    input A,  // First input
    input B,  // Second input
    output S, // Sum output
    output C  // Carry output
);

assign S = A ^ B; // XOR operation for sum
assign C = A & B; // AND operation for carry

endmodule



//structural desciption of a half adder in verilog
module half_adder(
  input a,
  input b,
  output sum,
  output carry
);

  // Instantiate a XOR gate for the sum output
  xor gate_xor (sum, a, b);

  // Instantiate an AND gate for the carry output
  and gate_and (carry, a, b);

endmodule
