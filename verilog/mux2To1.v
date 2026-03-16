module mux2To1 (D0,D1,S,out);
input D0,D1,S;
output out;

// 2-to-1 mux
assign  out = (~S&D0) | (S&D1);

endmodule


