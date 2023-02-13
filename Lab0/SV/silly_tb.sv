`timescale 1ns / 1ps
module tb ();

   logic    a;
   logic 	b;
   logic 	c;
   logic 	y;
   logic 	cout;
   logic   		   clk;   
   
  // instantiate device under test
   silly dut (.A(a), .B(b), .Cin(c), .S(y), cout);

   // 2 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     end


   initial
     begin
    
	#0   a = 1'b0;	
	#0   b = 1'b0;	
	#0   c = 1'b0;

	#20  a = 1'b0;	
	#0   b = 1'b1;	
	#0   c = 1'b0;

	#20  a = 1'b1;	
	#0   b = 1'b0;	
	#0   c = 1'b0;	

	#20  a = 1'b1;	
	#0   b = 1'b1;	
	#0   c = 1'b0;	

	#20  a = 1'b0;	
	#0   b = 1'b0;	
	#0   c = 1'b1;	

	#20  a = 1'b0;	
	#0   b = 1'b1;	
	#0   c = 1'b1;	

	#20  a = 1'b1;	
	#0   b = 1'b0;	
	#0   c = 1'b1;	

	#20  a = 1'b1;	
	#0   b = 1'b1;	
	#0   c = 1'b1;
		
	
     end

   
endmodule
