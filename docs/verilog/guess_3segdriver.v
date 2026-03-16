module guess_3segdriver(A,B,C,D,EN,a,b,c,d,e,f,g);
input EN,A,B,C,D ;
output a,b,c,d,e,f,g;

assign a= ((~(A&~B&C&D)) &EN )| ~EN;
assign b= ((~(A&~B&C&D)) &EN )| ~EN;
assign c= ((~((A&~B&C&D)|(A&~B&~C&D))) &EN )| ~EN;
assign d= ((~(A&~B&~C&D)) &EN )| ~EN;
assign e= 1;
assign f= 1;
assign g= (A&~B&C&D)&EN;

endmodule

