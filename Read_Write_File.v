`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2020 08:21:04 AM
// Design Name: 
// Module Name: Read_Write_File
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


module Read_Write_File();
reg [7:0] mem [15:0];
integer i;
integer file_id,out;
initial
begin
#10
file_id=$fopen("C:\\Users\\sakth\\Downloads\\bin.txt","rb"); 
out=$fopen("C:\\Users\\sakth\\Downloads\\bin_test.txt","wb");

#10
for(i=0;i<16;i=i+1)
begin
mem[i]=0;
$fscanf(file_id,"%b\n",mem[i]);
$fwrite(out,"%b\n",mem[i]);
$display("%b\n",mem[i]);
end

$fclose(file_id);
$fclose(out);

#10
$finish;
end
endmodule
