module ComputeCompareLet3(L0,L1,L2,L3,K3,clk,NEW_WORD);
input L0,L1,L2,L3,clk,NEW_WORD;
output K3;

//module wordReg3(Reset,clk,C0,C1,C2,C3);
wordReg3(NEW_WORD,clk,P0,P1,P2,P3);
//module wordLet3Reg(P0,P1,P2,P3,Reset,clk,Q0,Q1,Q2,Q3);
wordLet3Reg(P0,P1,P2,P3,NEW_WORD,y,S0,S1,S2,S3);
//module comparator(A0,A1,A2,A3,B0,B1,B2,B3,K);
comparator(L0,L1,L2,L3,S0,S1,S2,S3,K3);

assign y=~NEW_WORD;

endmodule
