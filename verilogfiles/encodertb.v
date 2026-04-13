module tb;
  reg [15:0] in;
  wire [3:0] out;
  encoder uut(in, out);
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);
    in = 16'b0000000000001000; #10; // 3
    $finish;
  end
endmodule