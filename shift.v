module shift(
  input clk,
  input [1:0] mode,
  input left,
  input right,
  input [3:0] d,
  output reg [3:0] q
);
  always @(posedge clk) begin
    case (mode)
      2'b00: q <= q;   
      2'b01: q <= {right, q[3:1]};   
      2'b10: q <= {q[2:0], left};    
      2'b11: q <= d;  
    endcase
  end
endmodule