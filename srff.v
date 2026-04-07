module srff(
    input clk,
    input s,
    input r,
    output reg q
);
    always @ (posedge clk) begin
        if (s&& !r):
            q<=0;
        if else (!s &&r):
            q<=1;
        else:
            q<=b'x;//invalid
    end
endmodule