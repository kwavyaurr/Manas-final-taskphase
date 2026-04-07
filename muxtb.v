module tb;
reg a,b,sel;
wire y;
mux uut(a,b,sel,y);
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    //testcases
    a=0;b=1;sel=0;
    #10 sel=1;
    #10 a=1;b=0;sel=0;
    #10 sel=1;
    #10 $finish;
end
endmodule