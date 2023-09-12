module tb;
parameter M=20;
reg [M-1:0] A,B;
wire [2*M-1 : 0] Y;

mulN #(.N(M)) JAILER (Y,A,B);

initial
	begin
		repeat(10)
		begin
		{A,B}=$random;
		#10;
		$display(A,"x",B,"=",Y);
		end
	A={M{1'b1}};
	B= {M{1'b1}};
#1;
$display(A,"x",B,"=",Y);

end
endmodule