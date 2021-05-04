`timescale 1ns / 1ps
module arbol (
input enable,
input clock,
input [9:0] posx, posy,
input [9:0] hcount,
input [9:0] vcount,
output reg[2:0] red,
output reg[2:0] green,
output reg[1:0] blue,
output reg data);

always @(posedge clock)
begin
	if(enable)
	begin
		if(hcount >= posx & hcount < posx + RESOLUCION_X & vcount >= posy & vcount < posy + RESOLUCION_Y)
		begin
			if (arbol[vcount - posy][hcount - posx][8] == 1'b1)
			begin
				red   <= arbol[vcount- posy][hcount- posx][7:5];
				green <= arbol[vcount- posy][hcount- posx][4:2];
            blue 	<= arbol[vcount- posy][hcount- posx][1:0];
				data  <= 1'b1;
			end
			else
				data <= 0;
			end
		else
		data <= 0;
	end
end

parameter RESOLUCION_X = 20;
parameter RESOLUCION_Y = 20;
wire [8:0] arbol[RESOLUCION_Y - 1'b1 : 0][RESOLUCION_X - 1'b1 : 0];
assign arbol[1][11] = 9'b101001000;
assign arbol[1][12] = 9'b101101000;
assign arbol[2][9] = 9'b101001000;
assign arbol[2][10] = 9'b101000100;
assign arbol[2][11] = 9'b101001000;
assign arbol[3][9] = 9'b101000100;
assign arbol[3][10] = 9'b101001000;
assign arbol[3][11] = 9'b101001000;
assign arbol[3][12] = 9'b101101000;
assign arbol[3][13] = 9'b101001000;
assign arbol[4][8] = 9'b101001000;
assign arbol[4][9] = 9'b101000100;
assign arbol[4][10] = 9'b101001000;
assign arbol[4][11] = 9'b101101000;
assign arbol[4][12] = 9'b101101000;
assign arbol[4][13] = 9'b101001000;
assign arbol[5][8] = 9'b101000100;
assign arbol[5][9] = 9'b101000100;
assign arbol[5][10] = 9'b101001000;
assign arbol[5][11] = 9'b101101000;
assign arbol[6][6] = 9'b101001000;
assign arbol[6][7] = 9'b101001000;
assign arbol[6][9] = 9'b100100100;
assign arbol[6][10] = 9'b101001000;
assign arbol[6][11] = 9'b101101000;
assign arbol[6][12] = 9'b101001000;
assign arbol[7][7] = 9'b101000100;
assign arbol[7][8] = 9'b101000100;
assign arbol[7][9] = 9'b101000100;
assign arbol[7][10] = 9'b101101000;
assign arbol[7][11] = 9'b101101000;
assign arbol[8][8] = 9'b101000100;
assign arbol[8][9] = 9'b101101000;
assign arbol[8][10] = 9'b101101000;
assign arbol[9][8] = 9'b101000100;
assign arbol[9][9] = 9'b101101000;
assign arbol[9][10] = 9'b101101000;
assign arbol[9][11] = 9'b101001000;
assign arbol[10][8] = 9'b101000100;
assign arbol[10][9] = 9'b101101000;
assign arbol[10][10] = 9'b101101000;
assign arbol[10][11] = 9'b101101000;
assign arbol[10][12] = 9'b101101000;
assign arbol[11][8] = 9'b101001000;
assign arbol[11][9] = 9'b101101000;
assign arbol[11][10] = 9'b101101000;
assign arbol[12][7] = 9'b101000100;
assign arbol[12][8] = 9'b101001000;
assign arbol[12][9] = 9'b101101000;
assign arbol[12][10] = 9'b101101000;
assign arbol[13][7] = 9'b101000100;
assign arbol[13][8] = 9'b101001000;
assign arbol[13][9] = 9'b101101000;
assign arbol[14][7] = 9'b101000100;
assign arbol[14][8] = 9'b101101000;
assign arbol[14][9] = 9'b101101000;
assign arbol[15][6] = 9'b101000100;
assign arbol[15][7] = 9'b101001000;
assign arbol[15][8] = 9'b101101000;
assign arbol[15][9] = 9'b101001000;
assign arbol[16][5] = 9'b101000100;
assign arbol[16][6] = 9'b101000100;
assign arbol[16][7] = 9'b101001000;
assign arbol[16][8] = 9'b101101000;
assign arbol[16][9] = 9'b101001000;
assign arbol[17][5] = 9'b101000100;
assign arbol[17][6] = 9'b101000100;
assign arbol[17][7] = 9'b101001000;
assign arbol[17][8] = 9'b101101000;
assign arbol[17][9] = 9'b101101000;
assign arbol[18][4] = 9'b101000100;
assign arbol[18][5] = 9'b101000100;
assign arbol[18][6] = 9'b101000100;
assign arbol[18][7] = 9'b101000100;
assign arbol[18][8] = 9'b101000100;
assign arbol[18][9] = 9'b101101000;
assign arbol[18][10] = 9'b101001000;
//Total de Lineas = 77
endmodule

