module pwmlong(
  input clk,
  input [7:0] duty,
  output pwmout
);

  reg [7:0] counter = 0;

  always @(posedge clk)
    counter <= counter + 1;

  assign pwmout = (counter < duty);

endmodule