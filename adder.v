module adder (x,y,c_in,g,p,s); // 1bit adder
	
	input wire x, y, c_in; // input operand : x, y  // input carry

	output wire g, p, s; // generated carry, propagated carry

	assign s =(x ^ y ^ c_in);
	assign g = x & y;
	assign p = x ^ y;

endmodule
