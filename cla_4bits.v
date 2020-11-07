module cla_4bits (x,y,c_in,g_dot,p_dot,s); // 4bits Carry-Look-Ahead Adder

	input wire [3:0] x, y; // input operand : x, y
	input wire c_in; // input carry

	output wire g_dot, p_dot; // Group-generated carry, Group-propagated carry
	output wire [3:0] s; // output sum

	wire [3:0] g, p; // generated carry, propagated carry
	wire [3:0] c; // carry-look-ahead

	clag clag0(.g(g[3:0]), .p(p[3:0]), .c_in(c_in), .c(c[3:0]), .g_dot(g_dot), .p_dot(p_dot));
	
    adder add0(.x(x[0]), .y(y[0]), .c_in(c[0]), .g(g[0]), .p(p[0]), .s(s[0]));
    adder add1(.x(x[1]), .y(y[1]), .c_in(c[1]), .g(g[1]), .p(p[1]), .s(s[1]));
    adder add2(.x(x[2]), .y(y[2]), .c_in(c[2]), .g(g[2]), .p(p[2]), .s(s[2]));
    adder add3(.x(x[3]), .y(y[3]), .c_in(c[3]), .g(g[3]), .p(p[3]), .s(s[3]));
endmodule
