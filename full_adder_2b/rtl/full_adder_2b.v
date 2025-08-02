module full_adder_2b(
 input wire [1:0] a,
 input wire [1:0] b,
 input wire [1:0] cin,
 output wire [1:0] sum,
 output wire carry
);
wire cout0;

full_adder fa0 (
 .a(a[0]),
 .b(b[0]),
 .c(1'b0),
 .sum(sum[0]),
 .carry(cout0)
);

full_adder fa1 (
 .a(a[1]),
 .b(b[1]),
 .c(cout0),
 .sum(sum[1]),
 .carry(carry)
);S
endmodule

