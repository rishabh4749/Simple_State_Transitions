`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 22:58:31
// Design Name: 
// Module Name: des
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module des(
    input in,
    input [1:0] state,
    output reg [1:0] next_state,
    output reg out 
    );
    parameter A=0,B=1,C=2,D=3;
    always @ (*) begin
    
    if(state==A) begin
    if(in==0) begin
    out<=0;
    next_state<=A;
    end
    else begin
    out<=0;
    next_state<=B;
    end
    end
    
    else if(state==B) begin
    if(in==0) begin
    out<=0;
    next_state<=C;
    end
    else begin
    out<=0;
    next_state<=B;
    end
    end
    
    else if(state==C) begin
    if(in==0) begin
    out<=0;
    next_state<=A;
    end
    else begin
    out<=0;
    next_state<=D;
    end
    end
    
    else if(state==D) begin
    if(in==0) begin
    out<=1;
    next_state<=C;
    end
    else begin
    out<=1;
    next_state<=B;
    end
    end
    
    end
endmodule
