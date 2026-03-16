module ComputeCompareLet1(L0,L1,L2,L3,K1,clk,NEW_WORD);
input L0,L1,L2,L3,clk,NEW_WORD;
output K1;

//reset=newword=1
//clk of counter is master
//clk of wordLet1Reg is y=newword=0
//module wordReg1(Reset,clk,C0,C1,C2,C3);
wordReg1(NEW_WORD,clk,P0,P1,P2,P3);
//module wordLet1Reg(P0,P1,P2,P3,Reset,clk,Q0,Q1,Q2,Q3);
wordLet1Reg(P0,P1,P2,P3,NEW_WORD,y,S0,S1,S2,S3);
//module comparator(A0,A1,A2,A3,B0,B1,B2,B3,K);
comparator(L0,L1,L2,L3,S0,S1,S2,S3,K1);

assign y=~NEW_WORD;


endmodule
