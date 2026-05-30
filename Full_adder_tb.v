`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 22:00:54
// Design Name: 
// Module Name: Full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_adder_tb;

reg a;
reg b;
reg c;
wire sum;
wire carry;
integer i;
Full_adder dut(a,b,c,sum,carry);
initial begin
for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
       #10;
              $display("%b %b %b| %b %b", a, b,c,sum,carry);
end
$finish;
end 
endmodule
