module letter_segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
input A,B,C,D,EN;
output a,b,c,d,e,f,g;
// ENABLE IS EXCLUDED HERE = ENTER SWITCH

assign a = (((~A&C&~D) | (~A&B&D) | (A&~B&C&D) | (A&B&~C&~D)) &EN )| ~EN;
assign b = (( C | (~A&~D) | (A&B&D)) &EN)| ~EN;
assign c = (((B&C) | (A&D) | (~A&~C&~D)) &EN)| ~EN;
assign d = (((~A&~C&D) | (~B&~C&D) | (~A&B&~D)) &EN)| ~EN;
assign e = (((A&C&~D) | (A&B&D) | (~A&~B&~C&~D)| (~A&~B&C&D)) &EN)| ~EN;
assign f=  (((A&B&D) |(A&B&C) | (~A&~B&~C&~D)) &EN)| ~EN;
assign g = ((~A&C&D) | (~A&B&C) | (A&~C&~D))& EN;

endmodule
