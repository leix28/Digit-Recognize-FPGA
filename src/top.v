module top(
	input wire ext_rst,
	input wire clk
);

wire clk50m;
wire pll_locked;
wire sys_rst;

assign sys_rst = ext_rst && pll_locked;

PLL PLL_inst (
	.areset(!ext_rst),
	.inclk0(clk),
	.c0(clk50m),
	.locked(pll_locked)
);

endmodule
