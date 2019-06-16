module stage_3combind(req_in,ack_in,data_in,rst,req_out,ack_out,data_out);
  input req_in;
  input ack_in;
  input [2:0] data_in;
  input rst;
  output req_out;
  output ack_out;
  output [2:0] data_out;
  wire ack1_in,req1_out,req2_in,ack2_in,req2_out,ack2_out,req3_in,ack3_out;
  wire [2:0] data1_out,data2_in,data2_out,data3_in;
  
  
  stage s11(
    .Rin(req_in),
    .Ain(ack1_in),
    .data_in(data_in),
    .rst(rst),
    .Rout(req1_out),
    .Aout(ack_out),
    .data_out(data1_out)
  );
  
  stall_3_1 s31(
    .temp_req_in(req1_out),
    .temp_ack_in(ack2_out),
    .temp_data_in(data1_out),
    .temp_req_out(req2_in),
    .temp_ack_out(ack1_in),
    .temp_data_out(data2_in)
  );
  
  stage s22(
    .Rin(req2_in),
    .Ain(ack2_in),
    .data_in(data2_in),
    .rst(rst),
    .Rout(req2_out),
    .Aout(ack2_out),
    .data_out(data2_out)
  );
  
  stall_3_1 s32(
    .temp_req_in(req2_out),
    .temp_ack_in(ack3_out),
    .temp_data_in(data2_out),
    .temp_req_out(req3_in),
    .temp_ack_out(ack2_in),
    .temp_data_out(data3_in)
  );
  
  stage s33(
    .Rin(req3_in),
    .Ain(ack_in),
    .data_in(data3_in),
    .rst(rst),
    .Rout(req_out),
    .Aout(ack3_out),
    .data_out(data_out)
  );
endmodule