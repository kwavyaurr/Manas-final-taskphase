module pwm(
  input clk,
  input [7:0] duty,
  output pwm_out
);

  reg [7:0] counter = 0;

  always @(posedge clk) begin
    counter <= counter + 1;
  end

  assign pwm_out = (counter < duty);

endmodule