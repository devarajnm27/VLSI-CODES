module tb_mux8to1;
reg [7:0] in;       
reg [2:0] sel;          
wire y;             

mux8to1 uut (in,sel,y);
initial begin
in = 8'b10101010; 
for (sel = 0; sel < 8; sel = sel + 1) 
begin
#10; 
$display("sel=%b,in=%b,y=%b",sel, in, y);
end
end
initial
#100 $finish;
endmodule
