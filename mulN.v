module mulN (Y,A,B);
parameter N=8;
input [N-1:0] A,B;
output [2*N-1 : 0] Y; // This is * which means power of
genvar j;
wire [N-1:0] p[N-1:0];
wire [2*N-1:0]Y, Row[0:N-1], S[0:N-1];

for(j=0;j<=N-1;j=j+1)
	begin
		and G[N-1:0] (p[j],A[j],B);
		assign Row[j] = p[j] << j;
		if (j==0) assign S[0] = Row [0];
		else assign S[j] = S[j-1] + Row[j];
	end
assign Y = S[N-1];
endmodule
