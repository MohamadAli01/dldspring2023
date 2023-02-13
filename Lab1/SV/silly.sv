module silly (input  logic A, B, Cin , output logic S, logic Cout);
  
  assign S = A^B^Cin ;

  assign Cout = A&B | A&Cin | B&Cin ;
   
endmodule

module rc1 (input logic [3:0] a,b input logic Cin , output logic [4:0] S );
logic [3:0]cout ;
silly fulladder0 (a[0], b[0], Cin, S[0],cout[0]);
silly fulladder1( a[1], b[1], cout[0], S[1],cout[1]);
silly fulladder2(a[2], b[2], cout[1], S[2],cout[2]);
silly fulladder3(a[3], b[3], cout[2], S[3],S[4]);
endmodule 

