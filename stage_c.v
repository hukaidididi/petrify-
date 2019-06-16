module stage_c(rst,Rin,Ain,Rout,Aout,c,p);
  input Rin,Ain,rst;
  output c,p;
  output reg Rout,Aout;
  
  reg csc0;
  
  assign p = rst?Ain:1'b0;
  assign c = rst?Aout:1'b0;
  
  always@(*)
  begin
    if(!rst)
    begin
      csc0 <= 1'b0;
      Rout <= 1'b0;
      Aout <= 1'b0;
    end
  
    else
    begin
      csc0 <= (Ain*(~Rin))+csc0*((~Rin)+Ain);
      Aout <= ~csc0;
      Rout <= ~csc0;
    end
  end
endmodule