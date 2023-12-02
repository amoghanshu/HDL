module parity_generator (
    input wire [7:0] data_in,
    output reg parity_out
);

always @(data_in) begin
    parity_out = ^data_in; // XOR all bits of data_in
end

endmodule
