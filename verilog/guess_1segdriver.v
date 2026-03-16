module guess_1segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
input EN,A,B,C,D;
output a,b,c,d,e,f,g;

assign a= (((~B&~C)|(B&C)|(A&~C)|(A&D)) &EN )| ~EN;
assign b= ((~C|D|B|A) &EN )| ~EN;
assign c= ((~C|D|B) &EN )| ~EN;
assign d= (((~B&~C)|(B&~D)|(A&D)) &EN )| ~EN;
assign e= ((A|(~B&~C)|(~C&D)|(B&C&~D)) &EN )| ~EN;
assign f= (((~B&~C)|(~C&D)|(A&~C)|(A&D)|(B&C&~D)) &EN )| ~EN;
assign g= (~A&C&D)& EN;

endmodule
