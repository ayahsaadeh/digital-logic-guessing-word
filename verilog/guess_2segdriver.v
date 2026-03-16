module guess_2segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
input EN,A,B,C,D ;
output a,b,c,d,e,f,g;

assign a= ((C|B|(~A&~D)|(A&D)) &EN )| ~EN;
assign b = (((~B&C)|(B&D)|(A&D)|(A&C)|(~A&~C&~D)) &EN )| ~EN;
assign c = (((~B&C)|(B&D)|(A&D)|(A&C)|(~A&~C&~D)) &EN )| ~EN;
assign d= ((~A | D | C) &EN )| ~EN;
assign e= (((~B&C)|(B&D)|(A&D)|(A&C)|(~A&~C&~D)) &EN )| ~EN;
assign f= (((~B&C)|(B&D)|(A&D)|(A&C)|(~A&~C&~D)) &EN )| ~EN;
assign g= (A&~C&~D | ~A&B&C&~D) &EN;

endmodule

