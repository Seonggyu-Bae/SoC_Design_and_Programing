module clag (g,p,c_in,c,g_dot,p_dot); // Carry-Look-Ahead Generator

	input wire [3:0] g, p; // generated carry, propagated carry
	input wire c_in; // input carry

	output wire [3:0] c; // carry-look-ahead
	output wire g_dot, p_dot; // generated carry, propagated carry
    
    assign c[0]= c_in;
	assign c[1]= g[0] | (p[0]&c_in);
    assign c[2]= g[1] | (p[1]&g[0]) | (p[1]&p[0]&c_in);
    assign c[3]= g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c_in);
   
    
    assign g_dot = g[3] | (g[2]&p[3]) | (g[1]&p[2]&p[3]) | (g[0]&p[1]&p[2]&p[3]);
    assign p_dot = p[0]&p[1]&p[2]&p[3];
    
	

endmodule

