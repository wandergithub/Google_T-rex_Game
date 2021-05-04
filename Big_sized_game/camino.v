`timescale 1ns / 1ps
module camino (
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
			if (camino[vcount - posy][hcount - posx][8] == 1'b1)
			begin
				red   <= camino[vcount- posy][hcount- posx][7:5];
				green <= camino[vcount- posy][hcount- posx][4:2];
            blue 	<= camino[vcount- posy][hcount- posx][1:0];
				data  <= 1'b1;
			end
			else
				data <= 0;
			end
		else
		data <= 0;
	end
end

parameter RESOLUCION_X = 100;
parameter RESOLUCION_Y = 32;
wire [8:0] camino[RESOLUCION_Y - 1'b1 : 0][RESOLUCION_X - 1'b1 : 0];
assign camino[14][1] = 9'b111101001;
assign camino[14][2] = 9'b110101000;
assign camino[14][3] = 9'b110100100;
assign camino[14][4] = 9'b110100100;
assign camino[14][5] = 9'b110001001;
assign camino[14][6] = 9'b110101000;
assign camino[14][7] = 9'b110100100;
assign camino[14][8] = 9'b110100100;
assign camino[14][9] = 9'b110101000;
assign camino[14][10] = 9'b110101000;
assign camino[14][11] = 9'b110100100;
assign camino[14][12] = 9'b110100100;
assign camino[14][13] = 9'b110100100;
assign camino[14][14] = 9'b110001000;
assign camino[14][15] = 9'b110100100;
assign camino[14][16] = 9'b110101000;
assign camino[14][17] = 9'b110100100;
assign camino[14][18] = 9'b110100100;
assign camino[14][19] = 9'b110100100;
assign camino[14][20] = 9'b110101000;
assign camino[14][21] = 9'b110101000;
assign camino[14][22] = 9'b110101000;
assign camino[14][23] = 9'b111101000;
assign camino[14][24] = 9'b110101001;
assign camino[14][25] = 9'b110100100;
assign camino[14][26] = 9'b110101000;
assign camino[14][27] = 9'b110101000;
assign camino[14][28] = 9'b110100100;
assign camino[14][29] = 9'b110100100;
assign camino[14][30] = 9'b110001001;
assign camino[14][31] = 9'b110101000;
assign camino[14][32] = 9'b110100100;
assign camino[14][33] = 9'b110100100;
assign camino[14][34] = 9'b110100100;
assign camino[14][35] = 9'b110100100;
assign camino[14][36] = 9'b110100100;
assign camino[14][37] = 9'b110100100;
assign camino[14][38] = 9'b110100100;
assign camino[14][39] = 9'b110001000;
assign camino[14][40] = 9'b110100100;
assign camino[14][41] = 9'b110001000;
assign camino[14][42] = 9'b110101000;
assign camino[14][43] = 9'b110100100;
assign camino[14][44] = 9'b110101000;
assign camino[14][45] = 9'b110101000;
assign camino[14][46] = 9'b110101000;
assign camino[14][47] = 9'b110101001;
assign camino[14][48] = 9'b111101001;
assign camino[14][49] = 9'b111101001;
assign camino[14][50] = 9'b111101001;
assign camino[14][51] = 9'b110101001;
assign camino[14][52] = 9'b110100100;
assign camino[14][53] = 9'b110100100;
assign camino[14][54] = 9'b110001001;
assign camino[14][55] = 9'b110000100;
assign camino[14][56] = 9'b110100100;
assign camino[14][57] = 9'b110100100;
assign camino[14][58] = 9'b110101000;
assign camino[14][59] = 9'b110101001;
assign camino[14][60] = 9'b110100100;
assign camino[14][61] = 9'b110100100;
assign camino[14][62] = 9'b110100100;
assign camino[14][63] = 9'b110001000;
assign camino[14][64] = 9'b110100100;
assign camino[14][65] = 9'b110101000;
assign camino[14][66] = 9'b110100100;
assign camino[14][67] = 9'b110100100;
assign camino[14][68] = 9'b110100100;
assign camino[14][69] = 9'b110101000;
assign camino[14][70] = 9'b110101000;
assign camino[14][71] = 9'b110101000;
assign camino[14][72] = 9'b111101000;
assign camino[14][73] = 9'b110101001;
assign camino[14][74] = 9'b110100100;
assign camino[14][75] = 9'b110101000;
assign camino[14][76] = 9'b110101000;
assign camino[14][77] = 9'b110100100;
assign camino[14][78] = 9'b110100100;
assign camino[14][79] = 9'b110001001;
assign camino[14][80] = 9'b110101000;
assign camino[14][81] = 9'b110100100;
assign camino[14][82] = 9'b110101000;
assign camino[14][83] = 9'b110100100;
assign camino[14][84] = 9'b110100100;
assign camino[14][85] = 9'b110100100;
assign camino[14][86] = 9'b110100100;
assign camino[14][87] = 9'b110100100;
assign camino[14][88] = 9'b110001001;
assign camino[14][89] = 9'b110100100;
assign camino[14][90] = 9'b110000100;
assign camino[14][91] = 9'b110001001;
assign camino[14][92] = 9'b110100100;
assign camino[14][93] = 9'b110101000;
assign camino[14][94] = 9'b110101000;
assign camino[14][95] = 9'b110100100;
assign camino[14][96] = 9'b110101001;
assign camino[14][97] = 9'b111101001;
assign camino[15][1] = 9'b111100000;
assign camino[15][2] = 9'b111100000;
assign camino[15][3] = 9'b111100000;
assign camino[15][4] = 9'b111100000;
assign camino[15][5] = 9'b111100100;
assign camino[15][6] = 9'b111100000;
assign camino[15][7] = 9'b111100000;
assign camino[15][8] = 9'b111100000;
assign camino[15][9] = 9'b111100000;
assign camino[15][10] = 9'b111100000;
assign camino[15][11] = 9'b111100000;
assign camino[15][12] = 9'b111100000;
assign camino[15][13] = 9'b111100000;
assign camino[15][14] = 9'b111100000;
assign camino[15][15] = 9'b111100000;
assign camino[15][16] = 9'b111100000;
assign camino[15][17] = 9'b111100000;
assign camino[15][18] = 9'b111100000;
assign camino[15][19] = 9'b111100000;
assign camino[15][20] = 9'b111100000;
assign camino[15][21] = 9'b111100100;
assign camino[15][22] = 9'b111100100;
assign camino[15][23] = 9'b111100000;
assign camino[15][24] = 9'b111100100;
assign camino[15][25] = 9'b111100000;
assign camino[15][26] = 9'b111100000;
assign camino[15][27] = 9'b111100000;
assign camino[15][28] = 9'b111100000;
assign camino[15][29] = 9'b111100000;
assign camino[15][30] = 9'b111100100;
assign camino[15][31] = 9'b111100100;
assign camino[15][32] = 9'b111100000;
assign camino[15][33] = 9'b111100000;
assign camino[15][34] = 9'b111100000;
assign camino[15][35] = 9'b111100000;
assign camino[15][36] = 9'b111100000;
assign camino[15][37] = 9'b111100000;
assign camino[15][38] = 9'b111100000;
assign camino[15][39] = 9'b111100100;
assign camino[15][40] = 9'b111100000;
assign camino[15][41] = 9'b111100000;
assign camino[15][42] = 9'b111100100;
assign camino[15][43] = 9'b111100000;
assign camino[15][44] = 9'b111100000;
assign camino[15][45] = 9'b111100000;
assign camino[15][46] = 9'b111100000;
assign camino[15][47] = 9'b111100100;
assign camino[15][48] = 9'b111100000;
assign camino[15][49] = 9'b111100100;
assign camino[15][50] = 9'b111100000;
assign camino[15][51] = 9'b111100000;
assign camino[15][52] = 9'b111100000;
assign camino[15][53] = 9'b111100000;
assign camino[15][54] = 9'b111100000;
assign camino[15][55] = 9'b111100000;
assign camino[15][56] = 9'b111100000;
assign camino[15][57] = 9'b111100000;
assign camino[15][58] = 9'b111100000;
assign camino[15][59] = 9'b111100000;
assign camino[15][60] = 9'b111100000;
assign camino[15][61] = 9'b111100000;
assign camino[15][62] = 9'b111100000;
assign camino[15][63] = 9'b111100000;
assign camino[15][64] = 9'b111100000;
assign camino[15][65] = 9'b111100000;
assign camino[15][66] = 9'b111100000;
assign camino[15][67] = 9'b111100000;
assign camino[15][68] = 9'b111100000;
assign camino[15][69] = 9'b111100000;
assign camino[15][70] = 9'b111100100;
assign camino[15][71] = 9'b111100100;
assign camino[15][72] = 9'b111100000;
assign camino[15][73] = 9'b111100100;
assign camino[15][74] = 9'b111100000;
assign camino[15][75] = 9'b111100000;
assign camino[15][76] = 9'b111100000;
assign camino[15][77] = 9'b111100000;
assign camino[15][78] = 9'b111100000;
assign camino[15][79] = 9'b111100100;
assign camino[15][80] = 9'b111100100;
assign camino[15][81] = 9'b111100000;
assign camino[15][82] = 9'b111100000;
assign camino[15][83] = 9'b111100000;
assign camino[15][84] = 9'b111100000;
assign camino[15][85] = 9'b111100000;
assign camino[15][86] = 9'b111100000;
assign camino[15][87] = 9'b111100000;
assign camino[15][88] = 9'b111100100;
assign camino[15][89] = 9'b111100000;
assign camino[15][90] = 9'b111100000;
assign camino[15][91] = 9'b111100100;
assign camino[15][92] = 9'b111100000;
assign camino[15][93] = 9'b111100000;
assign camino[15][94] = 9'b111100000;
assign camino[15][95] = 9'b111100000;
assign camino[15][96] = 9'b111100100;
assign camino[15][97] = 9'b111100100;
//Total de Lineas = 194
endmodule

