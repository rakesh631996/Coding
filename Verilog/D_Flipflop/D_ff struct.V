module nand_gate(O1,I1,I2); 
input I1,I2; 
output O1; 
assign O1 = ~(I1&I2); 
endmodule

module not_gate(O,I); 
input I; 
output O; 
assign O= ~I; 
endmodule

module d_ff_struct(q,qbar,d,clk);
input d,clk; 
output q, qbar; 
not_gate not1(dbar,d); 
nand_gate nand1(x,clk,d); 
nand_gate nand2(y,clk,dbar); 
nand_gate nand3(q,qbar,y); 
nand_gate nand4(qbar,q,x); 
endmodule