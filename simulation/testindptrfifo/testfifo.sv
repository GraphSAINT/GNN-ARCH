`timescale 1ns/1ns


module tb;


reg [9:0] data;
reg wrreq, rdreq;
reg clk;

wire full,empty;

wire [9:0] q;

wire [7:0] usedw;



fifoindptr u0(
      .data  (data),  //   input,  width = 10,  fifo_input.datain
      .wrreq (wrreq), //   input,   width = 1,            .wrreq
      .rdreq (rdreq), //   input,   width = 1,            .rdreq
      .clock (clk), //   input,   width = 1,            .clk
      .q     (q),     //  output,  width = 10, fifo_output.dataout
      .usedw (usedw), //  output,   width = 8,            .usedw
      .full  (full),  //  output,   width = 1,            .full
      .empty (empty)  //  output,   width = 1,            .empty
  );



initial begin
  data = 10'd12;
  wrreq = 1'b0;
  rdreq = 1'b0;
  
  #25;
  data = 10'd12;
  wrreq = 1'b1;
  
  #20;
  data = 10'd13;
  wrreq = 1'b1;
  
  #20;
  data = 10'd14;
  wrreq = 1'b1;
  
  #20;
  data = 10'd15;
  wrreq = 1'b1;
  
  #20；
  wrreq = 1'b0;
  rdreq = 1'b1;
  
  #60;
  rdreq = 1'b0;
  
  #100;
  $stop;  



end



always
begin
	clk = 1'b0;
	#10;
	clk = 1'b1;
	#10;

end


endmodule