module LoadLetter(L1,L2,L3,L4,K,Reset,clk,out1,out2,out3,out4);
input L1,L2,L3,L4,K,Reset,clk;
output out1,out2,out3,out4;


//module mux2To1 (D0,D1,S,out);
mux2To1 (Q0,L1,K,out1);
mux2To1 (Q1,L2,K,out2);
mux2To1 (Q2,L3,K,out3);
mux2To1 (Q3,L4,K,out4);


//module dff1(D,Reset,clk,Q,Qnot);
dff1(out1,Reset,clk,Q0,Qnot1);
dff1(out2,Reset,clk,Q1,Qnot2);
dff1(out3,Reset,clk,Q2,Qnot3);
dff1(out4,Reset,clk,Q3,Qnot4);



endmodule
