module tb;
    reg clk=0;
    wire [3:0] count;
    counter uut(clk,count);
    //clock gen
    always #5 clk=~clk;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,tb);
        #100 $finish;
    end
endmodule
   
