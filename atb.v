module tb;
    reg x,y,z;
    wire q;
    a uut(x,y,z,q);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,tb);
        x=1;y=0;z=1;
        #1 $finish;
    end
endmodule