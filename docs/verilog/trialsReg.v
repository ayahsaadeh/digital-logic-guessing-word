module trialsReg(P0,P1,P2,Reset,clk,Q0,Q1,Q2);
input P0,P1,P2,clk,Reset;
output Q0,Q1,Q2;
//clk is comparotor's output & reset is new word signal

//module dff1(D,Reset,clk,Q,Qnot);
dff1(P0,Reset,clk,Q0,Qnot0);
dff1(P1,Reset,clk,Q1,Qnot1);
dff1(P2,Reset,clk,Q2,Qnot2);


endmodule
