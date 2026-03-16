module wordRegCkt(Reset,clk,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,newword);
input Reset,clk;
output Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,newword;

//both modules have same reset=new_word=1 and register's clock are trigered by new_word=0 and so is signal newword of counter; 

//module wordReg1(Reset,clk,C0,C1,C2,C3);
wordReg1(Reset,clk,C0,C1,C2,C3);
//module wordReg2(Reset,clk,C0,C1,C2,C3);
wordReg2(Reset,clk,C4,C5,C6,C7);
//module wordReg3(Reset,clk,C0,C1,C2,C3);
wordReg3(Reset,clk,C8,C9,C10,C11);

//module wordLet1Reg(C0,C1,C2,C3,Reset,clk,Q0,Q1,Q2,Q3);
wordLet1Reg(C0,C1,C2,C3,Reset,newword,Q0,Q1,Q2,Q3);
//module wordLet2Reg(C0,C1,C2,C3,Reset,clk,Q0,Q1,Q2,Q3);
wordLet2Reg(C4,C5,C6,C7,Reset,newword,Q4,Q5,Q6,Q7);
//module wordLet3Reg(C0,C1,C2,C3,Reset,clk,Q0,Q1,Q2,Q3);
wordLet3Reg(C8,C9,C10,C11,Reset,newword,Q8,Q9,Q10,Q11);

endmodule

