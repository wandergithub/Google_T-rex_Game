`timescale 1ns / 1ps
module compas_velocidad(
input clock_in,
output clock_out
);
reg [28:0] counter = 28'd0;
parameter frecuencia = 3;
parameter DIVISOR = 28'd100000000/frecuencia;  
always @(posedge clock_in)
begin 
counter <= counter + 28'd1;

		if (counter >= (DIVISOR - 1))
				counter <= 28'd0;
end
assign clock_out = (counter < DIVISOR/2)? 1'b1:1'b0;
endmodule
