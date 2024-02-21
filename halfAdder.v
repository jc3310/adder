module halfAdder (
    input a1, b1,
    output sum, carry
);   
   
    assign sum = a1 ^ b1;
    assign carry = a1 & b1;
endmodule
