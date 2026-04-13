module tb;
  reg clk;
  reg [1:0] mode;
  reg left, right;
  reg [3:0] d;
  wire [3:0] q;
  shift uut(clk, mode, left, right, d, q);
  always #5 clk = ~clk;
  initial begin
    clk = 0;
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);
    mode = 2'b11;
    d = 4'b1010;
    #10;
    mode = 2'b01;
    right = 1;
    #20;
    $finish;
  end
endmodule