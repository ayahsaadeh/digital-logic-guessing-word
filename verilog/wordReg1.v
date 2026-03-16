module wordReg1(Reset,clk,C0,C1,C2,C3);
input Reset,clk;
output C0,C1,C2,C3;
//module of counter for reg1
//newword=0;

//module dff1(D,Reset,clk,Q,Qnot);
dff1(D0,Reset,clk,C0,Q0not);
dff1(D1,Reset,clk,C1,Q1not);
dff1(D2,Reset,clk,C2,Q2not);
dff1(D3,Reset,clk,C3,Q3not);

assign D3=~C0&C1&~C2&~C3;
assign D2=(C0&~C1&C2&~C3)|(C0&C1&C2&~C3)|(~C0&C1&~C2&C3);
assign D1=(~C0&C1&~C2&~C3)|(C0&C1&~C2&~C3)|(~C0&~C1&C2&~C3)|(~C0&C1&~C2&C3);
assign D0=(~C0&~C1&C2&~C3)|(C0&C1&C2&~C3)|(~C0&C1&~C2&C3);

endmodule
