module stage_d(data_in,data_out,c,p,rst);
    input [2:0] data_in;
    input c;
    input p;
    input rst;
    output reg [2:0] data_out;
    always@(*)
    begin
        if(!rst)
        begin
            data_out <= 3'b0;
        end
        else
        begin
            data_out <= (c^p)?data_out:data_in;
        end
    end
endmodule
