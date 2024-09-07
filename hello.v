module sync_RAM(dataIn, dataout, addr, CS, WE, RD, clk);
// parameter for width//
parameter ADR = 8;
parameter DAT = 8;
parameter DPTH = 8;
//ports//
input[DAT-1:0] dataIn;
output reg [DAT -1:0] dataout;
input[adr -1:0]addr;
input CS, WE,RD,clk;
//internal variable
reg[DAT -1:0] SRAM[DPTH-1:0];
always @(posedge clk)
begin
    if(CS ==1'b1)begin
        if(WE ==1'b1 && RD ==1'b0)begin
SRAM[Addr] = dataIn;
        end
        else if(RD ==1'b1 && WE == 1'b0)begin
            dataOut = SRAM[Addr];
        end
        else;
    end
    else;
end
endmodule

