`timescale 1ns/1ns


module tb;

parameter PL=16;
parameter WL=32;

reg clk;




integer iter;

// define length FIFO 1

reg [PL-1:0] length1;
reg length1_wrreq, length1_rdreq;

wire [7:0] length1_usedw;
wire length1_full, length1_empty;
wire [PL-1:0] length1_q;


reg [PL-1:0] length1_array [0:255];

fifoPL ins_length1 (
    .data  (length1),  //   input,  width = 16,  fifo_input.datain
    .wrreq (length1_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (length1_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (length1_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (length1_usedw), //  output,   width = 8,            .usedw
    .full  (length1_full),  //  output,   width = 1,            .full
    .empty (length1_empty)  //  output,   width = 1,            .empty
);


// define length FIFO 2

reg [PL-1:0] length2;
reg length2_wrreq, length2_rdreq;

wire [7:0] length2_usedw;
wire length2_full, length2_empty;
wire [PL-1:0] length2_q;


reg [PL-1:0] length2_array [0:255];

fifoPL ins_length2 (
    .data  (length2),  //   input,  width = 16,  fifo_input.datain
    .wrreq (length2_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (length2_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (length2_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (length2_usedw), //  output,   width = 8,            .usedw
    .full  (length2_full),  //  output,   width = 1,            .full
    .empty (length2_empty)  //  output,   width = 1,            .empty
);


// define index FIFO 1

reg [PL-1:0] index1;
reg index1_wrreq, index1_rdreq;

wire [7:0] index1_usedw;
wire index1_full, index1_empty;
wire [PL-1:0] index1_q;


reg [PL-1:0] index1_array [0:255];

fifoPL ins_index1 (
    .data  (index1),  //   input,  width = 16,  fifo_input.datain
    .wrreq (index1_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (index1_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (index1_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (index1_usedw), //  output,   width = 8,            .usedw
    .full  (index1_full),  //  output,   width = 1,            .full
    .empty (index1_empty)  //  output,   width = 1,            .empty
);


// define index FIFO 2

reg [PL-1:0] index2;
reg index2_wrreq, index2_rdreq;

wire [7:0] index2_usedw;
wire index2_full, index2_empty;
wire [PL-1:0] index2_q;


reg [PL-1:0] index2_array [0:255];

fifoPL ins_index2 (
    .data  (index2),  //   input,  width = 16,  fifo_input.datain
    .wrreq (index2_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (index2_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (index2_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (index2_usedw), //  output,   width = 8,            .usedw
    .full  (index2_full),  //  output,   width = 1,            .full
    .empty (index2_empty)  //  output,   width = 1,            .empty
);





// define dst FIFO 1 *****************************************************************************************

reg [PL-1:0] dst1;
reg dst1_wrreq, dst1_rdreq;

wire [7:0] dst1_usedw;
wire dst1_full, dst1_empty;
wire [PL-1:0] dst1_q;


reg [PL-1:0] dst1_array [0:255];

fifoPL ins_dst1 (
    .data  (dst1),  //   input,  width = 16,  fifo_input.datain
    .wrreq (dst1_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (dst1_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (dst1_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (dst1_usedw), //  output,   width = 8,            .usedw
    .full  (dst1_full),  //  output,   width = 1,            .full
    .empty (dst1_empty)  //  output,   width = 1,            .empty
);


// define dst FIFO 2 *****************************************************************************************

reg [PL-1:0] dst2;
reg dst2_wrreq, dst2_rdreq;

wire [7:0] dst2_usedw;
wire dst2_full, dst2_empty;
wire [PL-1:0] dst2_q;


reg [PL-1:0] dst2_array [0:255];

fifoPL ins_dst2 (
    .data  (dst2),  //   input,  width = 16,  fifo_input.datain
    .wrreq (dst2_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (dst2_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (dst2_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (dst2_usedw), //  output,   width = 8,            .usedw
    .full  (dst2_full),  //  output,   width = 1,            .full
    .empty (dst2_empty)  //  output,   width = 1,            .empty
);






// define value FIFO 1 *****************************************************************************************

reg [WL-1:0] value1;
reg value1_wrreq, value1_rdreq;

wire [7:0] value1_usedw;
wire value1_full, value1_empty;
wire [WL-1:0] value1_q;


reg [WL-1:0] value1_array [0:255];

fifoWL ins_value1 (
    .data  (value1),  //   input,  width = 16,  fifo_input.datain
    .wrreq (value1_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (value1_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (value1_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (value1_usedw), //  output,   width = 8,            .usedw
    .full  (value1_full),  //  output,   width = 1,            .full
    .empty (value1_empty)  //  output,   width = 1,            .empty
);

// define value FIFO 2 *****************************************************************************************


reg [WL-1:0] value2;
reg value2_wrreq, value2_rdreq;

wire [7:0] value2_usedw;
wire value2_full, dvalue2_empty;
wire [WL-1:0] value2_q;


reg [WL-1:0] value2_array [0:255];

fifoWL ins_value2 (
    .data  (value2),  //   input,  width = 16,  fifo_input.datain
    .wrreq (value2_wrreq), //   input,   width = 1,            .wrreq
    .rdreq (value2_rdreq), //   input,   width = 1,            .rdreq
    .clock (clk), //   input,   width = 1,            .clk
    .q     (value2_q),     //  output,  width = 16, fifo_output.dataout
    .usedw (value2_usedw), //  output,   width = 8,            .usedw
    .full  (value2_full),  //  output,   width = 1,            .full
    .empty (value2_empty)  //  output,   width = 1,            .empty
);



// define aggregate module


reg ena;
reg rst;
reg start;
reg idle;
reg wea;
reg [4095:0] datain;
reg [15:0] addressin;

reg [4095:0] dataout;
reg [15:0] addressout;

reg stallforreaddst;

reg [4095:0] denseFeatures [127:0];


reg dst_wea, dst_in;
reg [4095:0]  dst_datain;
reg [15:0] dst_addressin;

aggregate aggregate_ins(
	.clk(clk),
	.ena(ena),
	.rst(rst),
	.doubleselect(1'b0),  // control signal for double buffering
	.start(start),
	.idle(idle),


	.nump1(16'd32), // number of vertex
	.length1(length1_q),
	.length1_rdreq(length1_rdreq),
	.length1_empty(length1_empty), 
	.index1(index1_q),
	.index1_rdreq(index1_rdreq),
	.index1_empty(index1_empty),
	.value1(value1_q),
	.value1_rdreq(value1_rdreq),
	.value1_empty(value1_empty),
	.dst1(dst1_q),
	.dst1_rdreq(dst1_rdreq),
	.dst1_empty(dst1_empty),

	.nump2(16'd32),  // number of vertex
	.length2(length2_q),
	.length2_rdreq(length2_rdreq),
	.length2_empty(length2_empty),
	.index2(index2_q),
	.index2_rdreq(index2_rdreq),
	.index2_empty(index2_empty),
	.value2(value2_q),
	.value2_rdreq(value2_rdreq),
	.value2_empty(value2_empty),
	.dst2(dst2_q),
	.dst2_rdreq(dst2_rdreq),
	.dst2_empty(dst2_empty),

	.wea(wea),
	.datain(datain),
	.addressin(addressin),

    .dst_wea(dst_wea),
	.dst_datain(dst_datain),
	.dst_addressin(dst_addressin),
	.dst_in(dst_in),


	.dataout(dataout),
	.addressout(addressout),
	.stallforreaddst(stallforreaddst)
);



initial begin
    
    // initialize signal for FIFO
    stallforreaddst = 1'b0;
    length1=16'd0;
    length1_wrreq = 1'b0;
    length2=16'd0;
    index1=16'd0;
    index1_wrreq= 1'b0;
    index2=16'd0;
    index2_wrreq= 1'b0;
    dst1=16'd0;
    dst1_wrreq= 1'b0;
    dst2=16'd0;
    dst2_wrreq= 1'b0;
    value1=32'd0;
    value1_wrreq= 1'b0;
    value2 =32'd0;
    value2_wrreq= 1'b0;

    wea = 1'b0;
    dst_in = 1'b1;
    dst_wea = 1'b0;

    dst_datain = 4096'd0;
    dst_addressin = 16'd0;

    // signals for control the hardware module
    rst = 1'b1; // reset the module
    ena = 1'b1;
    // doubleselect = 1'b0;  // double select is not defined currently
    start = 1'b0;

    #35;
    //  Read input vector
    rst = 1'b0;
    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/length1.mem", length1_array, 0 , 31);
    #20
    for(iter = 0; iter < 32; iter=iter+1) begin
        length1 = length1_array[iter];
        length1_wrreq = 1'b1;
        #20;
    end
    length1_wrreq =0;
    #20;


    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/length2.mem", length2_array, 0 , 31);
    #20;
    for(iter = 0; iter < 32; iter=iter+1) begin
        length2 = length2_array[iter];
        length2_wrreq = 1'b1;
        #20;
    end
    length2_wrreq =0;
    #20;

    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/index1.mem", index1_array, 0 , 104);
    #20;
    for(iter = 0; iter < 105; iter=iter+1) begin
        index1 = index1_array[iter];
        index1_wrreq = 1'b1;
        #20;
    end
    index1_wrreq =0;
    #20;

    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/index2.mem", index2_array, 0 , 150);
    #20;
    for(iter = 0; iter < 151; iter=iter+1) begin
        index2 = index2_array[iter];
        index2_wrreq = 1'b1;
        #20;
    end
    index2_wrreq =0;
    #20;


    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/dst1.mem", dst1_array, 0 , 31);
    #20;
    for(iter = 0; iter < 32; iter=iter+1) begin
        dst1 = dst1_array[iter];
        dst1_wrreq = 1'b1;
        #20;
    end
    dst1_wrreq =0;
    #20;

    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/dst2.mem", dst2_array, 0 , 31);
    #20;
    for(iter = 0; iter < 32; iter=iter+1) begin
        dst2 = dst2_array[iter];
        dst2_wrreq = 1'b1;
        #20;
    end
    dst2_wrreq =0;
    #20;


    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/value1.mem", value1_array, 0 , 104);
    #20;
    for(iter = 0; iter < 105; iter=iter+1) begin
        value1 = value1_array[iter];
        value1_wrreq = 1'b1;
        #20;
    end
    value1_wrreq =0;
    #20;

    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/value2.mem", value2_array, 0 , 150);
    #20;
    for(iter = 0; iter < 151; iter=iter+1) begin
        value2 = value2_array[iter];
        value2_wrreq = 1'b1;
        #20;
    end
    value2_wrreq =0;
    #20;

    // initialize the source buffer
    for(iter = 0; iter < 128; iter=iter+1) begin
        denseFeatures[iter] = 4096'd0;
    end
    $readmemh("/home/zjjzby/project/GCN-arch-intel/simulation/testaggregate/dense.mem", denseFeatures, 0 , 64);
    #20
    for(iter = 0; iter < 64; iter=iter+1) begin
        datain = denseFeatures[iter];
        addressin = iter;
        wea = 1'b1;
        #20;
    end
    wea = 1'b0;

    #20;
    dst_in = 1'b1;
    for(iter = 0; iter < 64; iter=iter+1) begin
        dst_datain = 4096'd0;;
        dst_addressin = iter;
        dst_wea = 1'b1;
        #20;
    end
    dst_wea = 1'b0;
    dst_in = 1'b0;
    #20;
    start = 1'b1;
    #20;
    start = 1'b0;

    #20000;

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