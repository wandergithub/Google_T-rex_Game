`timescale 1ns / 1ps
module clock_2(input clk_in, output clk_out
    );
reg [28:0] count = 28'd0;
parameter frecuencia = 10 ; 
parameter div = 28'd100000000/frecuencia;

always @(posedge clk_in)
begin
count <= count + 28'd1;
		
		if (count >= (div -1))
			count <= 28'd0;
end

assign clk_out = (count < div/2) ? 1'b1 : 1'b0;

endmodule
