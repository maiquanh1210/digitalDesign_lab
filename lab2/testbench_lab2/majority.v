/* 
 * Do not change Module name 
*/
module MAJORITY(
    input [31:0] in,
    output out
    );
    
    parameter number_bit=32;
    integer i;
    integer count_0, count_1;
    
    wire [31:0] in;
    reg out;
    initial 
    begin
        //in1 = 8'b00001111;
        count_0=0;
        count_1=0;
        for(i=0;i<number_bit;i=i+1) begin
            if(in[i] == 0)
            begin
                count_0++;
            end
            else
            begin
                count_1++;
            end
        end
        if (count_0>count_1) begin
            out = 0;
        end
        else
        begin
            out = 1;    
        end
    end
endmodule
`timescale 10ps/1ps
module testbench();
    reg [31:0] cur_in;
        wire cur_out;
    
        MAJORITY major(
            .in(cur_in),
            .out(cur_out)
            );
    parameter NUMBER_32bit = 32'h1111;

    //test full case
    integer i;
    initial
    begin
        for (i=0;i<NUMBER_32bit;i=i+1)
        #10;
        end
    
    //golden output
    wire golden_out;
    integer golden_count_0;
    integer golden_count_1;
    always @(cur_in)begin
        
    end
endmodule