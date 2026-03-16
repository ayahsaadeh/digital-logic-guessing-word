module  Letterckt(sw0,sw1,sw2,sw3,Reset,clk,a,b,c,d,e,f,g);
input sw0,sw1,sw2,sw3,Reset,clk;
output a,b,c,d,e,f,g;
//clk=enter;
//EN=enable in truth table=enter;

//module LetterReg(sw0,sw1,sw2,sw3,Reset,clk,Q0,Q1,Q2,Q3);
LetterReg(sw0,sw1,sw2,sw3,Reset,clk,Q0,Q1,Q2,Q3);

//module letter_segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
letter_segdriver(Q0,Q1,Q2,Q3,clk,a,b,c,d,e,f,g);

endmodule

