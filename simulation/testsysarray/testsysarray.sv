`timescale 1ns/1ns


module tb;

parameter WL = 32;
parameter NUM = 16;

reg clk, ena, rst;


reg [WL- 1:0] weightvaluereg[NUM - 1:0], featurevaluereg[NUM - 1:0];
reg weigthvalidreg[NUM - 1:0], weigthendreg[NUM - 1:0], featurevalidreg[NUM - 1:0], featureendreg[NUM - 1:0];


wire [WL*NUM - 1:0] weightvalue, featurevalue;
wire [NUM -1 :0] weigthvalid, weigthend, featurevalid, featureend;


wire [WL*NUM*NUM - 1:0]  resultvalue;
wire [NUM*NUM - 1:0] resultvalid;


wire [WL-1:0] resultvalueit[NUM -1 :0][NUM - 1:0];
wire resultvalidit[NUM -1 :0][NUM - 1:0];

genvar i,j;
generate 
for (i = 0; i< NUM; i = i+1) begin:assign1
  assign weightvalue[(i+1)*WL - 1: i*WL] = weightvaluereg[i];
  assign featurevalue[(i+1)*WL - 1: i*WL] = featurevaluereg[i];
  assign weigthvalid[i] = weigthvalidreg[i];
  assign weigthend[i] = weigthendreg[i];
  assign featurevalid[i] = featurevalidreg[i];
  assign featureend[i] = featureendreg[i];
end
endgenerate

generate 
for (i = 0; i < NUM; i= i+1) begin:outer_loop
  for (j = 0; j < NUM; j = j+1) begin:inner_loop
    assign resultvalueit[i][j] = resultvalue[i*NUM*WL + (j + 1)*WL - 1 : i*NUM*WL + j*WL];
    assign resultvalidit[i][j] = resultvalid[i*NUM + j];
  end
end
endgenerate


sysarray ins(
	.clk(clk),
	.ena(ena),
	.rst(rst),
	// weight input 
	.weightvalue(weightvalue),
	.weigthvalid(weigthvalid),
	.weigthend(weigthend),

	//feature  input
	.featurevalue(featurevalue),
	.featurevalid(featurevalid),
	.featureend(featureend),

	// result out
	.resultvalid(resultvalid),
	.resultvalue(resultvalue)
);



always
begin
	clk = 1'b0;
	#10;
	clk = 1'b1;
	#10;

end

initial begin
  rst = 1'b1;
  ena = 1'b0;
  
  #25;
  rst = 1'b0;
  ena = 1'b1;
end


integer k;


generate
for (i =0; i< NUM; i= i+1)
begin
  initial begin
    weightvaluereg[i] = 32'd0;
    featurevaluereg[i] = 32'd0;
    weigthvalidreg[i] = 1'b0;
    weigthendreg[i] = 1'b0;
    featurevalidreg[i] = 1'b0;
    featureendreg[i] = 1'b0;
    #25;
    
    repeat(i) begin
      weightvaluereg[i] = 32'd0;
      featurevaluereg[i] = 32'd0;
      weigthvalidreg[i] = 1'b0;
      weigthendreg[i] = 1'b0;
      featurevalidreg[i] = 1'b0;
      featureendreg[i] = 1'b0;
      #20;
    end
    
    repeat(32) begin
      weightvaluereg[i] = 32'b00111111100000000000000000000000;
      featurevaluereg[i] = 32'b00111111100000000000000000000000;
      weigthvalidreg[i] = 1'b1;
      weigthendreg[i] = 1'b1;
      featurevalidreg[i] = 1'b1;
      featureendreg[i] = 1'b1;
      #20;    
    end
    
    weightvaluereg[i] = 32'd0;
    featurevaluereg[i] = 32'd0;
    weigthvalidreg[i] = 1'b0;
    weigthendreg[i] = 1'b0;
    featurevalidreg[i] = 1'b0;
    featureendreg[i] = 1'b0;

  end
end
endgenerate


initial begin
  #2000;
  $stop;
end


endmodule