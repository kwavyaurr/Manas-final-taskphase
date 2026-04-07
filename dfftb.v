module tb;
reg clk=0;
reg d;
wire q;
    dff uut(d,clk,q);
    always #5 clk=~clk;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,tb);
    //testcases
        d=0;
        #10 d=1;
        #10 d=0;
        #10 d=1;
        #10 d=0;
        #20 $finish;
    end
endmodule