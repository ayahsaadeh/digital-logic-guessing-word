module trialsCounter(Reset,clk,C0,C1,C2,ZeroCount);

input Reset, clk;
output C0,C1,C2, ZeroCount;

//reset and clock are connected with trialsReg

wire D0, D1, D2;

assign D0 = (C0&~C1&C2)|(~C0&~C1&~C2);
assign D1 = (~C0&~C1&C2) | (~C2&C1&C0) ;
assign D2 = (~C0&~C1&C2) | (~C2&C1&~C0)| (~C0&~C1&~C2);

assign ZeroCount = (~C0&~C1&~C2);

endmodule
