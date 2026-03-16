module LetterReg(sw0,sw1,sw2,sw3,Reset,clk,Q0,Q1,Q2,Q3);
input sw0,sw1,sw2,sw3,Reset,clk;
output Q0,Q1,Q2,Q3;

//CLOCK IS ENTER SIGNAL 
//reset is also connected to enter to show - on 7-segment display (done on letter seg file)

//module dff1(D,Reset,clk,Q,Qnot);
dff1(sw0,Reset,clk,Q0,Qnot1);
dff1(sw1,Reset,clk,Q1,Qnot2);
dff1(sw2,Reset,clk,Q2,Qnot3);
dff1(sw3,Reset,clk,Q3,Qnot4);

//module invgate(in1,out);



endmodule

