`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:50:58 04/23/2017 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "pcpu.v"
  
module top(
    input CLK, reset, enable, start,
    input [5:0]sw,
    output reg[6:0] led,
    output reg[3:0] an
    );

    reg [20:0] count;
    reg cpu_clk;
	
    always @(posedge CLK) begin
        {cpu_clk, count} = count + 1;
    end

    wire [15:0] i_datain, d_datain, d_dataout, y, ram_out;
    wire [7:0] i_addr, d_addr;

    pcpu pcpu(reset, cpu_clk, enable, start, i_addr, i_datain, d_addr,
             d_datain, d_dataout, d_we, {1'b0, sw[2:0]}, y);
    ROM rom(.a(i_addr), .spo(i_datain));
    RAM ram(.clk(cpu_clk), .we(d_we), .a(d_addr), .d(d_dataout),
        .spo(d_datain), .dpra(sw), .dpo(ram_out) );

    reg [3:0] temp;
    wire [15:0] t;
    assign t = ram_out;

    always @ (*) begin
        case (count[16:15])
            2'b00: begin
                temp <= t[15:12];
                an <= 4'b0111;
            end
            2'b01: begin
                temp <= t[11:8];
                an <= 4'b1011;
            end
            2'b10: begin
                temp <= t[7:4];
                an <= 4'b1101;
            end
            2'b11: begin
                temp <= t[3:0];
                an <= 4'b1110;
            end
        endcase

        case (temp)
            4'h0: led <= 7'b0000001;
            4'h1: led <= 7'b1001111;
            4'h2: led <= 7'b0010010;
            4'h3: led <= 7'b0000110;
            4'h4: led <= 7'b1001100;
            4'h5: led <= 7'b0100100;
            4'h6: led <= 7'b0100000;
            4'h7: led <= 7'b0001111;
            4'h8: led <= 7'b0000000;
            4'h9: led <= 7'b0000100;
            4'ha: led <= 7'b0001000;
            4'hb: led <= 7'b1100000;
            4'hc: led <= 7'b0110001;
            4'hd: led <= 7'b1000010;
            4'he: led <= 7'b0110000;
            4'hf: led <= 7'b0111000;
        endcase
    end
endmodule
