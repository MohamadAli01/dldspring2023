`timescale 1ns / 1ps
module tb ();

	logic    [3:0]a;
   logic 	[3:0]b;
   logic 		c;
   logic 	[4:0]S;
   logic   		   clk;   
   
  // instantiate device under test
   rc1 dut (.a(a), .b(b), .Cin(c), .S(Sum));
   assign Sum_corr=a+b+c;

   // 2 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     end

integer handle3;
integer desc3;
integer i;


initial
begin
handle3 = $fopen("rca.out");
desc3 = handle3;
#4000 $finish;
end
initial
begin
for (i=0; i < 150; i=i+1)
begin
// Put vectors before beginning of clk
@(posedge clk)
begin
a = $random;
b = $random;
c = $random;
end
@(negedge clk)
begin
$fdisplay(desc3, "%h %h || %h | %h | %b", a, b, Sum, Sum_corr, (Sum == Sum_corr));
end
end // @(negedge clk)
end
   
endmodule
