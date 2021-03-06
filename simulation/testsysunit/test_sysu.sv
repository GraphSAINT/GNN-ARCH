`timescale 1ns/1ns


module tb;

reg clk;
reg ena;
reg rst;

parameter WL = 32;

reg [WL - 1:0] weightvalue;
reg weigthvalid, weigthend;

reg [WL - 1:0] featurevalue;
reg featurevalid, featureend;


wire [WL - 1:0] weightoutvalue;
wire weigthoutvalid, weigthoutend;

wire [WL - 1:0] featureoutvalue;
wire featureoutvalid, featureoutvend;

wire [WL - 1:0] resultvalue;
wire resultvalid;

sysunit ins(
	.clk(clk),
	.ena(ena),
	.rst(rst),
	// weight input 
	.weightvalue(weightvalue),
	.weigthvalid(weigthvalid),
	.weigthend(weigthend),

	// weight shift 
	.weightoutvalue(weightoutvalue),
	.weigthoutvalid(weigthoutvalid),
	.weigthoutend(weigthoutend),

	//feature  input
	.featurevalue(featurevalue),
	.featurevalid(featurevalid),
	.featureend(featureend),

	//feature  shift
	.featureoutvalue(featureoutvalue),
	.featureoutvalid(featureoutvalid),
	.featureoutvend(featureoutvend),


	// result out
	.resultvalid(resultvalid),
	.resultvalue(resultvalue)
);


integer k;


initial begin
    ena = 1'b0;
    rst = 1'b1;
    
    #25
    ena = 1'b1;
    rst = 1'b0;
    
    for (k = 1; k < 32; k=k+1)
    begin
      weightvalue = 32'b00111111100000000000000000000000;
      featurevalue = 32'b01000000010000000000000000000000;
      weigthvalid = 1'b1;
      weigthend = 1'b1;
      featurevalid = 1'b1;
      featureend = 1'b1;
      #20;
    end
    
    weightvalue = 32'b00111111100000000000000000000000;
      featurevalue = 32'b01000000010000000000000000000000;
      weigthvalid = 1'b0;
      weigthend = 1'b0;
      featurevalid = 1'b0;
      featureend = 1'b0;
      #20;
      
    #200;
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