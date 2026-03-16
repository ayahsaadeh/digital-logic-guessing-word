module comparator(A0,A1,A2,A3,B0,B1,B2,B3,K);
input A0,A1,A2,A3,B0,B1,B2,B3;
output K;
//COMPARES BITS IN ONE LETTER BETWEEN THE WORD GENERATED AND WORD ENTERED

//module xnorgate(in1,in2,out);
xnorgate(A0,B0,D0);
xnorgate(A1,B1,D1);
xnorgate(A2,B2,D2);
xnorgate(A3,B3,D3);

//module andgate4(in1,in2,in3,in4,out);
andgate4(D0,D1,D2,D3,K);
endmodule
