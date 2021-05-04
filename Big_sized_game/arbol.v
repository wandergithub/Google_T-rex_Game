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

parameter RESOLUCION_X = 15;
parameter RESOLUCION_Y = 8;
wire [8:0] arbol[RESOLUCION_Y - 1'b1 : 0][RESOLUCION_X - 1'b1 : 0];
assign arbol[0][7] = 9'b100100100;
assign arbol[1][2] = 9'b100100100;
assign arbol[1][3] = 9'b100100100;
assign arbol[1][7] = 9'b101001000;
assign arbol[1][11] = 9'b100100100;
assign arbol[1][12] = 9'b100100100;
assign arbol[2][2] = 9'b101001001;
assign arbol[2][3] = 9'b101001001;
assign arbol[2][6] = 9'b100100100;
assign arbol[2][7] = 9'b101101101;
assign arbol[2][8] = 9'b101001000;
assign arbol[2][11] = 9'b101001001;
assign arbol[2][12] = 9'b101001001;
assign arbol[3][1] = 9'b100100100;
assign arbol[3][2] = 9'b101101101;
assign arbol[3][3] = 9'b101101101;
assign arbol[3][4] = 9'b100100100;
assign arbol[3][6] = 9'b101001001;
assign arbol[3][7] = 9'b110010001;
assign arbol[3][8] = 9'b101001001;
assign arbol[3][10] = 9'b100100100;
assign arbol[3][11] = 9'b101101101;
assign arbol[3][12] = 9'b110010001;
assign arbol[3][13] = 9'b100100100;
assign arbol[4][1] = 9'b101001000;
assign arbol[4][2] = 9'b110010001;
assign arbol[4][3] = 9'b110010001;
assign arbol[4][4] = 9'b101001000;
assign arbol[4][6] = 9'b101101101;
assign arbol[4][7] = 9'b110010010;
assign arbol[4][8] = 9'b101101101;
assign arbol[4][10] = 9'b101001000;
assign arbol[4][11] = 9'b110010001;
assign arbol[4][12] = 9'b110010001;
assign arbol[4][13] = 9'b101001000;
assign arbol[5][1] = 9'b101101101;
assign arbol[5][2] = 9'b110010010;
assign arbol[5][3] = 9'b110010010;
assign arbol[5][4] = 9'b101101101;
assign arbol[5][5] = 9'b100100100;
assign arbol[5][6] = 9'b110010001;
assign arbol[5][7] = 9'b110110110;
assign arbol[5][8] = 9'b110010001;
assign arbol[5][9] = 9'b101001000;
assign arbol[5][10] = 9'b101001001;
assign arbol[5][11] = 9'b110010001;
assign arbol[5][12] = 9'b110010001;
assign arbol[5][13] = 9'b101101101;
assign arbol[6][0] = 9'b100100100;
assign arbol[6][1] = 9'b110010001;
assign arbol[6][2] = 9'b110110110;
assign arbol[6][3] = 9'b110110110;
assign arbol[6][4] = 9'b101101101;
assign arbol[6][5] = 9'b101001001;
assign arbol[6][6] = 9'b110010010;
assign arbol[6][7] = 9'b110110110;
assign arbol[6][8] = 9'b110010010;
assign arbol[6][9] = 9'b101001001;
assign arbol[6][10] = 9'b101101101;
assign arbol[6][11] = 9'b110010010;
assign arbol[6][12] = 9'b110110110;
assign arbol[6][13] = 9'b110010001;
assign arbol[6][14] = 9'b100100100;
assign arbol[7][0] = 9'b101001001;
assign arbol[7][1] = 9'b110010001;
assign arbol[7][2] = 9'b110010001;
assign arbol[7][3] = 9'b110010001;
assign arbol[7][4] = 9'b110010001;
assign arbol[7][5] = 9'b101001001;
assign arbol[7][6] = 9'b110010001;
assign arbol[7][7] = 9'b110010001;
assign arbol[7][8] = 9'b110010001;
assign arbol[7][9] = 9'b101101101;
assign arbol[7][10] = 9'b110010001;
assign arbol[7][11] = 9'b110010001;
assign arbol[7][12] = 9'b110010001;
assign arbol[7][13] = 9'b110010001;
assign arbol[7][14] = 9'b101001001;
//Total de Lineas = 78
endmodule

