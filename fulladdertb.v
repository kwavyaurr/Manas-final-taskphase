module tb;
    reg a,b,cin;
    wire cout,sum;
    fulladder uut(a,b,cin,sum,cout);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,tb);
         a=0; b=0; cin=0;
        #10 cin=1;
        #10 b=1; cin=0;
        #10 cin=1;
        #10 a=1; b=0; cin=0;
        #10 cin=1;
        #10 b=1; cin=0;
        #10 cin=1;
        #10 $finish;
    end
endmodule