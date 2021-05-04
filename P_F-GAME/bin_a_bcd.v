module bin_a_bcd (Bin, BCD);

input [8:0] Bin;

output reg [11:0] BCD;

reg [3:0] i;

always @(Bin)
begin

	BCD = 12'b0;

	for (i=0; i<9; i=i+1'b1)
		begin

			BCD = {BCD [11:0], Bin [8-i] };

			if(i<8 && BCD [3:0] > 4) 
				BCD [3:0] = BCD [3:0] + 2'b11;

			if(i<8 && BCD [7:4] > 4) 
				BCD [7:4] = BCD [7:4] + 2'b11;

			if(i<8 && BCD [11:8] > 4) 
				BCD [11:8] = BCD [11:8] + 2'b11;

		end

end

endmodule
