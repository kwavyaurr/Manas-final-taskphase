module fulladder(
    input a,
    input b,
    input cin,
    output sum,
    output counter
);
    assign sum=a^b^cin;
    assign cout=a&b|b&cin|cin&a;
endmodule