module DR(
	input CLK,
	input [31:0] Datain,
	output reg [31:0] Dataout
);
	reg [31:0] DataRegisterMem;
	initial DataRegisterMem<=0;
	
	always@(negedge CLK) begin
		DataRegisterMem<=Datain;
	end
	
	always@(posedge CLK) begin
		Dataout<=DataRegisterMem;
	end
	
endmodule