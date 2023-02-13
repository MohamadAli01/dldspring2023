module silly (input  logic A, B, Cin , output logic S, logic Cout);
  
  assign S = A^B^Cin ;

  assign Cout = A&B | A&Cin | B&Cin ;
   
endmodule
