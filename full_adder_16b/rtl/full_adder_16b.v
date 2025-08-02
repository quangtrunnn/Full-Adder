module full_adder_16b(
 input wire [15:0] a,
 input wire [15:0] b,
 output wire [15:0] sum,
 output wire carry
);
wire [15:0] c;

genvar i;
generate
	for(i=0; i<16; i=i+1) begin : fa_chain
	    if (i==0) begin
		full_adder fa (
		    .a(a[i]),
 		    .b(b[i]),
 	            .c(1'b0),
 		    .sum(sum[i]),
 		    .carry(c[i])
		);
end else begin 
		full_adder fa (
		    .a(a[i]),
 		    .b(b[i]),
 	            .c(c[i-1]),
 		    .sum(sum[i]),
 		    .carry(c[i])
		);
end
end
endgenerate

assign carry =c[15];
endmodule







