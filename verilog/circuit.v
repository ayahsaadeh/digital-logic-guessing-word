module circuit(Start,NEW_WORD,ENTER ,Clk,L0,L1,L2,L3,a0,b0,c0,d0,e0,f0,g0,
a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,
a3,b3,c3,d3,e3,f3,g3,a4,b4,c4,d4,e4,f4,g4,LED1,LED2,LED3);

input Start,NEW_WORD,ENTER ,Clk,L0,L1,L2,L3;

output a0,b0,c0,d0,e0,f0,g0,a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,a3,b3,c3,d3,e3,f3,g3,a4,b4,c4,d4,e4,f4,g4,LED1,LED2,LED3;

assign LED1=Start;


//module Letterckt(sw0,sw1,sw2,sw3,Reset,clk,a,b,c,d,e,f,g);
Letterckt(L0,L1,L2,L3,NEW_WORD,ENTER,a3,b3,c3,d3,e3,f3,g3);

//module trialsCounter(Reset,clk,C0,C1,C2,ZeroCount);
trialsCounter(NEW_WORD,compSignal,C0,C1,C2,LED3);
//module trialsReg(P0,P1,P2,Reset,clk,Q0,Q1,Q2);
trialsReg(C0,C1,C2,NEW_WORD,compSignal,Q0,Q1,Q2);
//module trials_seg(A,B,C,D,a,b,c,d,e,f,g);
trials_seg(0,Q0,Q1,Q2,a4,b4,c4,d4,e4,f4,g4);


//wins when trials are not zero and all words are guessed
assign LED2=(~Q0&~Q1&~Q2)&Start&~NEW_WORD&~f2&~b1&~f0;



//module ComputeCompareLet1(L0,L1,L2,L3,K1,clk,NEW_WORD);
ComputeCompareLet1(L0,L1,L2,L3,K1,Clk,NEW_WORD); //clk is master for counter
//module ComputeCompareLet2(L0,L1,L2,L3,K2,Reset,clk);
ComputeCompareLet2(L0,L1,L2,L3,K2,Clk,NEW_WORD);
//module ComputeCompareLet3(L0,L1,L2,L3,K3,Reset,clk);
ComputeCompareLet3(L0,L1,L2,L3,K3,Clk,NEW_WORD);

assign compSignal=(~(K1|K2|K3)|NEW_WORD)&Start;



//module LoadLetter(L1,L2,L3,L4,K,Reset,clk,out1,out2,out3,out4);
LoadLetter(L1,L2,L3,L4,K1,Reset,K1,O1,O2,O3,O4);
//module guess_1segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
guess_1segdriver(O1,O2,O3,O4,Start,a2,b2,c2,d2,e2,f2,g2);

//module LoadLetter(L1,L2,L3,L4,K,Reset,clk,out1,out2,out3,out4);
LoadLetter(L1,L2,L3,L4,K2,Reset,K2,O5,O6,O7,O8);
//module guess_2segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
guess_2segdriver(O5,O6,O7,O8,Start,a1,b1,c1,d1,e1,f1,g1);

//module LoadLetter(L1,L2,L3,L4,K,Reset,clk,out1,out2,out3,out4);
LoadLetter(L1,L2,L3,L4,K3,Reset,K3,O9,O10,O11,O12);
//module guess_3segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
guess_3segdriver(O9,O10,O11,O12,Start,a0,b0,c0,d0,e0,f0,g0);


endmodule




