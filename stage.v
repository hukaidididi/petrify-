module stage(rst,Ain,Aout,Rin,Rout,data_in,data_out);
    input rst;
    input Ain;
    input Rin;
    output Rout;
    output Aout;
    input [2:0] data_in;
    output [2:0] data_out;
    wire c,p;
    stage_c sc(
        .rst(rst),
        .Ain(Ain),
        .Aout(Aout),
        .Rin(Rin),
        .Rout(Rout),
        .c(c),
        .p(p)
    );
    
    stage_d sd(
        .rst(rst),
        .data_in(data_in),
        .data_out(data_out),
        .c(c),
        .p(p)
        );
endmodule
