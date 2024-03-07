

module addition(
input  [31:0]a,[31:0]b,
output  [31:0]sum_ab);

wire [31:0]c_ab;


genvar i;
generate
    for (i=0; i<32; i=i+1) begin
        if (i==0)begin
        full_adder dut (.a(a[i]), .b(b[i]), .cin(0), .cout(c_ab[i+1]), .sum(sum_ab[i]));
        end    
    
        else begin
        full_adder dut (.a(a[i]), .b(b[i]), .cin(c_ab[i]), .cout(c_ab[i+1]), .sum(sum_ab[i]));
        end
    end
endgenerate


endmodule