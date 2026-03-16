module andgate(in1,in2,out);
input in1,in2;
output out;
assign out=in1&in2;
endmodule

module andgate3(in1,in2,in3,out);
input in1,in2,in3;
output out;
assign out=in1&in2&in3;
endmodule

module andgate4(in1,in2,in3,in4,out);
input in1,in2,in3,in4;
output out;
assign out=in1&in2&in3&in4;
endmodule

module nandgate(in1,in2,out);
input in1,in2;
output out;
assign out=~(in1&in2);
endmodule

module nandgate3(in1,in2,in3,out);
input in1,in2,in3;
output out;
assign out=~(in1&in2&in3);
endmodule


module orgate(in1,in2,out);
input in1,in2;
output out;
assign out=in1|in2;
endmodule

module orgate3(in1,in2,in3,out);
input in1,in2,in3;
output out;
assign out=in1|in2|in3;
endmodule

module norgate(in1,in2,out);
input in1,in2;
output out;
assign out=~(in1|in2);
endmodule

module norgate3(in1,in2,in3,out);
input in1,in2,in3;
output out;
assign out=~(in1|in2|in3);
endmodule

module xorgate(in1,in2,out);
input in1,in2;
output out;
assign out=in1^in2;
endmodule

module xnorgate(in1,in2,out);
input in1,in2;
output out;
assign out=~(in1^in2);
endmodule

module invgate(in1,out);
input in1;
output out;
assign out=~in1;
endmodule
