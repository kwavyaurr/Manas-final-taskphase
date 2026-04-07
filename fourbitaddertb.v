module tb;

  reg [3:0] A, B;
  reg Cin;
  wire [3:0] SUM;
  wire Cout;

  four_bit_adder uut(A, B, Cin, SUM, Cout);

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10 A = 4'b0101; B = 4'b0011;  // 5 + 3 = 8
    #10 A = 4'b1111; B = 4'b0001;  // overflow
    #10 A = 4'b1010; B = 4'b0101;  // 10 + 5 = 15

    #10 $finish;
  end

endmodule