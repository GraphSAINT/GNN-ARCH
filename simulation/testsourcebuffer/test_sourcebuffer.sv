`timescale 1ns/1ns


module tb;


parameter WL = 32;
parameter NUM = 128;

reg clk;

reg [WL*NUM - 1 : 0] data_a, data_b;
reg [9:0] wradd_a, wradd_b;

reg [9:0] radd_a, radd_b;

reg wren_a, wren_b;

wire [WL*NUM - 1 : 0] q_a, q_b;


sourcebuffer ins (
    .data_a          (data_a),          //   input,  width = 4096,          data_a.datain_a
    .q_a             (q_a),             //  output,  width = 4096,             q_a.dataout_a
    .data_b          (data_b),          //   input,  width = 4096,          data_b.datain_b
    .q_b             (q_b),             //  output,  width = 4096,             q_b.dataout_b
    .write_address_a (wradd_a), //   input,    width = 10, write_address_a.write_address_a
    .write_address_b (wradd_b), //   input,    width = 10, write_address_b.write_address_b
    .read_address_a  (radd_a),  //   input,    width = 10,  read_address_a.read_address_a
    .read_address_b  (radd_b),  //   input,    width = 10,  read_address_b.read_address_b
    .wren_a          (wren_a),          //   input,     width = 1,          wren_a.wren_a
    .wren_b          (wren_b),          //   input,     width = 1,          wren_b.wren_b
    .clock           (clk)            //   input,     width = 1,           clock.clk
);

always
begin
	clk = 1'b0;
	#10;
	clk = 1'b1;
	#10;

end

initial begin;
  data_a = 4096'd111;
  data_b = 4096'd123;
  
  wradd_a = 10'd1;
  wradd_b = 10'd2;
  
  radd_a = 10'd3;
  radd_b = 10'd4;
  
  wren_a = 1'b0;
  wren_b = 1'b0;
  
  
  #25;
  wren_a = 1'b1;
  wren_b = 1'b1;
  
  #20;
  wren_a = 1'b0;
  wren_b = 1'b0;
  radd_a = 10'd1;
  radd_b = 10'd2;
  
  
  #100;
  $stop;



end


endmodule