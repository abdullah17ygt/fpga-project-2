module full_adder(
input wire [31:0]a,
input wire[31:0]b,
input wire cin,
output wire cout,
output wire sum
    );
wire cout2,cout3,sum1;

 assign #20 sum1 = (a^b);
 
 
 assign #15 cout2 = ((a&b));
 assign #15 cout3 = (sum1&(cin));
 
 assign #15 cout = (cout2 | cout3);
 assign #20 sum = (sum1^cin);
    
endmodule
