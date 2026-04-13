module tb;
    reg [7:0] a;
    reg [2:0] sel;
    wire y;
    muxlong uut(a,sel,y);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,tb);
        //testcases
        a=8'b10101110;sel=3'b101;
        #1 $finish;
    end
endmodule