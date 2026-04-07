module tb;

  reg clk = 0;
  reg [7:0] duty;
  wire pwmout;

  pwmlong uut(clk, duty, pwmout);

  // proper clock
  always #1 clk = ~clk;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0);

    duty = 8'd128;   // 50%
    #90;

    duty = 8'd64;    // 25%
    #90;

    $finish;
  end

endmodule