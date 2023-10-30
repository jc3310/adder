
//dataflow /*
module fullAdder(
    input A, B, Cin,
    output S, Cout
);
    
    assign S = A ^ B ^ Cin;
    assign Cout = A&B | (A^B) & Cin; 
endmodule
//*/
//Behavioral 
//always /*
`timescale 1ns / 1ps 
module fullAdder( 
 input wire A, B, Cin,
 output reg S, Cout
);
 always @(*)
  begin 
   S = A ^ B ^ Cin; 
   Cout = A&B | (A^B) & Cin; 
  end
endmodule
//*/
//case /*
`timescale 1ns / 1ps 
module fullAdder(
input wire A, B, Cin, 
output reg S, 
output reg Cout
);

 always @(*)
  begin 

   case ({A, B, Cin}) 
     3'b000: begin S = 0; Cout = 0; end 
     3'b001: begin S = 1; Cout = 0; end 
     3'b010: begin S = 1; Cout = 0; end 
     3'b011: begin S = 0; Cout = 1; end 
     3'b100: begin S = 1; Cout = 0; end 
     3'b101: begin S = 0; Cout = 1; end 
     3'b110: begin S = 0; Cout = 1; end 
     3'b111: begin S = 1; Cout = 1; end 
	  default: begin S = 0; Cout = 0; end 
   endcase 

  end
 
endmodule

//*/
//if else /*
`timescale 1ns / 1ps
module fullAdder(
input wire A, B, Cin,
output reg S, Cout
);
always @(*)
begin
 if(A==0 && B==0 && Cin==0)
  begin
   S=0;
   Cout=0;
  end
 else if(A==0 && B==0 && Cin==1)
  begin
   S=1;
   Cout=0;
  end
 else if(A==0 && B==1 && Cin==0)
  begin
   S=1;
   Cout=0;
  end
 else if(A==0 && B==1 && Cin==1)
  begin
   S=0;
   Cout=1;
  end
 else if(A==1 && B==0 && Cin==0)
  begin
   S=1;
   Cout=0;
  end
 else if(A==1 && B==0 && Cin==1)
  begin
   S=0;
   Cout=1;
  end
 else if(A==1 && B==1 && Cin==0)
  begin
   S=0;
   Cout=1;
  end
 else if(A==1 && B==1 && Cin==1)
  begin
   S=1;
   Cout=1;
  end
 else
  begin
   S=0;
   Cout=0;
  end
end

endmodule
//*/