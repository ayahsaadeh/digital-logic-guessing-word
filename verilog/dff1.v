module dff1(D,Reset,clk,Q,Qnot);
input D,Reset,clk;
output Q, Qnot;
reg Q, Qnot;

always @ (posedge clk, posedge Reset)
begin
	if (Reset == 1'b1)
	begin
		Q <= 1'b0;
		Qnot <= 1'b1;
	end
	else
	begin
		Q <= D;
		Qnot <= ~D;
	end
end

endmodule
