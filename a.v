module a(
    input x,
    input y,
    input z,
    output q
);
    assign q=(x&!y)|(!y &z);
endmodule