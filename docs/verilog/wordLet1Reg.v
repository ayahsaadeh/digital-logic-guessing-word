module wordLet1Reg(P0,P1,P2,P3,Reset,clk,Q0,Q1,Q2,Q3);
input P0,P1,P2,P3,clk,Reset;
output Q0,Q1,Q2,Q3;

dff1(P0,Reset,clk,Q0,Qnot0);
dff1(P1,Reset,clk,Q1,Qnot1);
dff1(P2,Reset,clk,Q2,Qnot2);
dff1(P3,Reset,clk,Q3,Qnot3);


endmodule

