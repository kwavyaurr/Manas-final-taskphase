module tb;

  reg clk = 0;
  reg [7:0] duty = 128;   // 50% duty
  wire pwm_out;

  // connect to pwm module
  pwm uut(clk, duty, pwm_out);

  // clock generation
  always #1 clk = ~clk;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    #300;
    $finish;
  end

endmodule