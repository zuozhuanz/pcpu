// Operation code (please add operaions)
`define NOP    5'b00000
`define HALT   5'b00001
`define LOAD   5'b00010
`define STORE  5'b00011
`define LDIH   5'b10000
`define ADD    5'b01000
`define ADDC   5'b01001
`define ADDI   5'b10001
`define SUB    5'b01010
`define SUBC   5'b01011
`define SUBI   5'b10010
`define CMP    5'b01100
`define AND    5'b01101
`define OR     5'b01110
`define XOR    5'b01111
`define SLL    5'b00100
`define SRL    5'b00101
`define SLA    5'b00110
`define SRA    5'b00111
`define JUMP   5'b11000
`define JMPR   5'b11001
`define BC     5'b11010
`define BNC    5'b11011
`define BZ     5'b11100
`define BNZ    5'b11101
`define BN     5'b11110
`define BNN    5'b11111

// General register
`define gr0 3'b000
`define gr1 3'b001
`define gr2 3'b010
`define gr3 3'b011
`define gr4 3'b100
`define gr5 3'b101
`define gr6 3'b110
`define gr7 3'b111


module inst_mem(addr, dataout);

input [7:0] addr;
output [15:0] dataout;
reg [15:0] dataout;

always@(addr) begin
    case (addr)
     8'h00: dataout <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0001};  //GCM
     8'h01: dataout <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0010};
     8'h02: dataout <= {`ADD, `gr3, 1'b0, `gr0, 1'b0, `gr1};
     8'h03: dataout <= {`SUB, `gr1, 1'b0, `gr1, 1'b0, `gr2};
     8'h04: dataout <= {`BZ, `gr0, 8'h9};
     8'h05: dataout <= {`BNN, `gr0, 8'h2};
     8'h06: dataout <= {`ADD, `gr1, 1'b0, `gr0, 1'b0, `gr2}; 
     8'h07: dataout <= {`ADD, `gr2, 1'b0, `gr0, 1'b0, `gr3};
     8'h08: dataout <= {`JUMP, 11'h2};
     8'h09: dataout <= {`NOP, 11'd0};
     8'h0a: dataout <= {`NOP, 11'd0};
     8'h0b: dataout <= {`NOP, 11'd0};
     8'h0c: dataout <= {`STORE, `gr2, 1'b0, `gr0, 4'b0011};
     8'h0d: dataout <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0001};  //LCM
     8'h0e: dataout <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0010};
     8'h0f: dataout <= {`ADDI, `gr4, 8'h1};
     8'h10: dataout <= {`SUB, `gr2, 1'b0, `gr2, 1'b0, `gr3};  
     8'h11: dataout <= {`BZ, `gr0, 8'h13};
     8'h12: dataout <= {`JUMP, 11'hf}; 
     8'h13: dataout <= {`SUBI, `gr4, 8'h1};
     8'h14: dataout <= {`BN, `gr0, 8'h17}; 
     8'h15: dataout <= {`ADD, `gr5, 1'b0, `gr5, 1'b0, `gr1};
     8'h16: dataout <= {`JUMP, 11'h13};
     8'h17: dataout <= {`NOP, 11'd0};
     8'h18: dataout <= {`NOP, 11'd0};
     8'h19: dataout <= {`NOP, 11'd0};
     8'h1a: dataout <= {`STORE, `gr5, 1'b0, `gr0, 4'd4};
     8'h1b: dataout <= {`HALT, 11'd0}; 
     8'h1c: dataout <= {`NOP, 11'd0}; 
     8'h1d: dataout <= {`NOP, 11'd0};
     8'h1e: dataout <= {`NOP, 11'd0}; 
     8'h1f: dataout <= {`NOP, 11'd0};
     8'h20: dataout <= {`NOP, 11'd0};
     8'h21: dataout <= {`NOP, 11'd0};
     8'h22: dataout <= {`NOP, 11'd0};
     8'h23: dataout <= {`NOP, 11'd0};
     8'h24: dataout <= {`NOP, 11'd0};
     8'h25: dataout <= {`NOP, 11'd0};
     8'h26: dataout <= {`NOP, 11'd0};
     8'h27: dataout <= {`NOP, 11'd0};
     8'h28: dataout <= {`NOP, 11'd0};
     8'h29: dataout <= {`NOP, 11'd0};
     8'h2a: dataout <= {`NOP, 11'd0};
     8'h2b: dataout <= {`NOP, 11'd0};
     8'h2c: dataout <= {`NOP, 11'd0};
     8'h2d: dataout <= {`NOP, 11'd0};
     8'h2e: dataout <= {`NOP, 11'd0};
     8'h2f: dataout <= {`NOP, 11'd0};
     8'h30: dataout <= {`NOP, 11'd0};
     8'h31: dataout <= {`NOP, 11'd0};
     8'h32: dataout <= {`NOP, 11'd0};
     8'h33: dataout <= {`NOP, 11'd0};
     8'h34: dataout <= {`NOP, 11'd0};
     8'h35: dataout <= {`NOP, 11'd0};
     8'h36: dataout <= {`NOP, 11'd0};
     8'h37: dataout <= {`NOP, 11'd0};
     8'h38: dataout <= {`NOP, 11'd0};
     8'h39: dataout <= {`NOP, 11'd0};
     8'h3a: dataout <= {`NOP, 11'd0};
     8'h3b: dataout <= {`NOP, 11'd0};
     8'h3c: dataout <= {`NOP, 11'd0};
     8'h3d: dataout <= {`NOP, 11'd0};
     8'h3e: dataout <= {`NOP, 11'd0};
     8'h3f: dataout <= {`NOP, 11'd0};
     8'h40: dataout <= {`NOP, 11'd0};
     8'h41: dataout <= {`NOP, 11'd0};
     8'h42: dataout <= {`NOP, 11'd0};
     8'h43: dataout <= {`NOP, 11'd0};
     8'h44: dataout <= {`NOP, 11'd0};
     8'h45: dataout <= {`NOP, 11'd0};
     8'h46: dataout <= {`NOP, 11'd0};
     8'h47: dataout <= {`NOP, 11'd0};
     8'h48: dataout <= {`NOP, 11'd0};
     8'h49: dataout <= {`NOP, 11'd0};
     8'h4a: dataout <= {`NOP, 11'd0};
     8'h4b: dataout <= {`NOP, 11'd0};
     8'h4c: dataout <= {`NOP, 11'd0};
     8'h4d: dataout <= {`NOP, 11'd0};
     8'h4e: dataout <= {`NOP, 11'd0};
     8'h4f: dataout <= {`NOP, 11'd0};
     8'h50: dataout <= {`NOP, 11'd0};
     8'h51: dataout <= {`NOP, 11'd0};
     8'h52: dataout <= {`NOP, 11'd0};
     8'h53: dataout <= {`NOP, 11'd0};
     8'h54: dataout <= {`NOP, 11'd0};
     8'h55: dataout <= {`NOP, 11'd0};
     8'h56: dataout <= {`NOP, 11'd0};
     8'h57: dataout <= {`NOP, 11'd0};
     8'h58: dataout <= {`NOP, 11'd0};
     8'h59: dataout <= {`NOP, 11'd0};
     8'h5a: dataout <= {`NOP, 11'd0};
     8'h5b: dataout <= {`NOP, 11'd0};
     8'h5c: dataout <= {`NOP, 11'd0};
     8'h5d: dataout <= {`NOP, 11'd0};
     8'h5e: dataout <= {`NOP, 11'd0};
     8'h5f: dataout <= {`NOP, 11'd0};
     8'h60: dataout <= {`NOP, 11'd0};
     8'h61: dataout <= {`NOP, 11'd0};
     8'h62: dataout <= {`NOP, 11'd0};
     8'h63: dataout <= {`NOP, 11'd0};
     8'h64: dataout <= {`NOP, 11'd0};
     8'h65: dataout <= {`NOP, 11'd0};
     8'h66: dataout <= {`NOP, 11'd0};
     8'h67: dataout <= {`NOP, 11'd0};
     8'h68: dataout <= {`NOP, 11'd0};
     8'h69: dataout <= {`NOP, 11'd0};
     8'h6a: dataout <= {`NOP, 11'd0};
     8'h6b: dataout <= {`NOP, 11'd0};
     8'h6c: dataout <= {`NOP, 11'd0};
     8'h6d: dataout <= {`NOP, 11'd0};
     8'h6e: dataout <= {`NOP, 11'd0};
     8'h6f: dataout <= {`NOP, 11'd0};
     8'h70: dataout <= {`NOP, 11'd0};
     8'h71: dataout <= {`NOP, 11'd0};
     8'h72: dataout <= {`NOP, 11'd0};
     8'h73: dataout <= {`NOP, 11'd0};
     8'h74: dataout <= {`NOP, 11'd0};
     8'h75: dataout <= {`NOP, 11'd0};
     8'h76: dataout <= {`NOP, 11'd0};
     8'h77: dataout <= {`NOP, 11'd0};
     8'h78: dataout <= {`NOP, 11'd0};
     8'h79: dataout <= {`NOP, 11'd0};
     8'h7a: dataout <= {`NOP, 11'd0};
     8'h7b: dataout <= {`NOP, 11'd0};
     8'h7c: dataout <= {`NOP, 11'd0};
     8'h7d: dataout <= {`NOP, 11'd0};
     8'h7e: dataout <= {`NOP, 11'd0};
     8'h7f: dataout <= {`NOP, 11'd0};
     8'h80: dataout <= {`NOP, 11'd0}; 
     8'h81: dataout <= {`NOP, 11'd0};
     8'h82: dataout <= {`NOP, 11'd0};
     8'h83: dataout <= {`NOP, 11'd0};
     8'h84: dataout <= {`NOP, 11'd0};
     8'h85: dataout <= {`NOP, 11'd0};
     8'h86: dataout <= {`NOP, 11'd0};
     8'h87: dataout <= {`NOP, 11'd0};
     8'h88: dataout <= {`NOP, 11'd0};
     8'h89: dataout <= {`NOP, 11'd0};
     8'h8a: dataout <= {`NOP, 11'd0};
     8'h8b: dataout <= {`NOP, 11'd0};
     8'h8c: dataout <= {`NOP, 11'd0};
     8'h8d: dataout <= {`NOP, 11'd0};
     8'h8e: dataout <= {`NOP, 11'd0};
     8'h8f: dataout <= {`NOP, 11'd0};
     8'h90: dataout <= {`NOP, 11'd0};
     8'h91: dataout <= {`NOP, 11'd0};
     8'h92: dataout <= {`NOP, 11'd0}; 
     8'h93: dataout <= {`NOP, 11'd0};
     8'h94: dataout <= {`NOP, 11'd0};
     8'h95: dataout <= {`NOP, 11'd0};
     8'h96: dataout <= {`NOP, 11'd0};
     8'h97: dataout <= {`NOP, 11'd0};
     8'h98: dataout <= {`NOP, 11'd0};
     8'h99: dataout <= {`NOP, 11'd0};
     8'h9a: dataout <= {`NOP, 11'd0};
     8'h9b: dataout <= {`NOP, 11'd0};
     8'h9c: dataout <= {`NOP, 11'd0};
     8'h9d: dataout <= {`NOP, 11'd0};
     8'h9e: dataout <= {`NOP, 11'd0};
     8'h9f: dataout <= {`NOP, 11'd0};
     8'ha0: dataout <= {`NOP, 11'd0};
     8'ha1: dataout <= {`NOP, 11'd0};
     8'ha2: dataout <= {`NOP, 11'd0};
     8'ha3: dataout <= {`NOP, 11'd0};
     8'ha4: dataout <= {`NOP, 11'd0};
     8'ha5: dataout <= {`NOP, 11'd0};
     8'ha6: dataout <= {`NOP, 11'd0};
     8'ha7: dataout <= {`NOP, 11'd0};
     8'ha8: dataout <= {`NOP, 11'd0};
     8'ha9: dataout <= {`NOP, 11'd0};
     8'haa: dataout <= {`NOP, 11'd0};
     8'hab: dataout <= {`NOP, 11'd0};
     8'hac: dataout <= {`NOP, 11'd0};
     8'had: dataout <= {`NOP, 11'd0};
     8'hae: dataout <= {`NOP, 11'd0};
     8'haf: dataout <= {`NOP, 11'd0};
     8'hb0: dataout <= {`NOP, 11'd0};
     8'hb1: dataout <= {`NOP, 11'd0};
     8'hb2: dataout <= {`NOP, 11'd0};
     8'hb3: dataout <= {`NOP, 11'd0};
     8'hb4: dataout <= {`NOP, 11'd0};
     8'hb5: dataout <= {`NOP, 11'd0};
     8'hb6: dataout <= {`NOP, 11'd0};
     8'hb7: dataout <= {`NOP, 11'd0};
     8'hb8: dataout <= {`NOP, 11'd0};
     8'hb9: dataout <= {`NOP, 11'd0};
     8'hba: dataout <= {`NOP, 11'd0};
     8'hbb: dataout <= {`NOP, 11'd0};
     8'hbc: dataout <= {`NOP, 11'd0};
     8'hbd: dataout <= {`NOP, 11'd0};
     8'hbe: dataout <= {`NOP, 11'd0};
     8'hbf: dataout <= {`NOP, 11'd0};
     8'hc0: dataout <= {`NOP, 11'd0};
     8'hc1: dataout <= {`NOP, 11'd0};
     8'hc2: dataout <= {`NOP, 11'd0};
     8'hc3: dataout <= {`NOP, 11'd0};
     8'hc4: dataout <= {`NOP, 11'd0};
     8'hc5: dataout <= {`NOP, 11'd0};
     8'hc6: dataout <= {`NOP, 11'd0};
     8'hc7: dataout <= {`NOP, 11'd0};
     8'hc8: dataout <= {`NOP, 11'd0};
     8'hc9: dataout <= {`NOP, 11'd0};
     8'hca: dataout <= {`NOP, 11'd0};
     8'hcb: dataout <= {`NOP, 11'd0};
     8'hcc: dataout <= {`NOP, 11'd0};
     8'hcd: dataout <= {`NOP, 11'd0};
     8'hce: dataout <= {`NOP, 11'd0};
     8'hcf: dataout <= {`NOP, 11'd0};
     8'hd0: dataout <= {`NOP, 11'd0};
     8'hd1: dataout <= {`NOP, 11'd0};
     8'hd2: dataout <= {`NOP, 11'd0};
     8'hd3: dataout <= {`NOP, 11'd0};
     8'hd4: dataout <= {`NOP, 11'd0};
     8'hd5: dataout <= {`NOP, 11'd0};
     8'hd6: dataout <= {`NOP, 11'd0};
     8'hd7: dataout <= {`NOP, 11'd0};
     8'hd8: dataout <= {`NOP, 11'd0};
     8'hd9: dataout <= {`NOP, 11'd0};
     8'hda: dataout <= {`NOP, 11'd0};
     8'hdb: dataout <= {`NOP, 11'd0};
     8'hdc: dataout <= {`NOP, 11'd0};
     8'hdd: dataout <= {`NOP, 11'd0};
     8'hde: dataout <= {`NOP, 11'd0};
     8'hdf: dataout <= {`NOP, 11'd0};
     8'he0: dataout <= {`NOP, 11'd0};
     8'he1: dataout <= {`NOP, 11'd0};
     8'he2: dataout <= {`NOP, 11'd0};
     8'he3: dataout <= {`NOP, 11'd0};
     8'he4: dataout <= {`NOP, 11'd0};
     8'he5: dataout <= {`NOP, 11'd0};
     8'he6: dataout <= {`NOP, 11'd0};
     8'he7: dataout <= {`NOP, 11'd0};
     8'he8: dataout <= {`NOP, 11'd0};
     8'he9: dataout <= {`NOP, 11'd0};
     8'hea: dataout <= {`NOP, 11'd0};
     8'heb: dataout <= {`NOP, 11'd0};
     8'hec: dataout <= {`NOP, 11'd0};
     8'hed: dataout <= {`NOP, 11'd0};
     8'hee: dataout <= {`NOP, 11'd0};
     8'hef: dataout <= {`NOP, 11'd0};
     8'hf0: dataout <= {`NOP, 11'd0};
     8'hf1: dataout <= {`NOP, 11'd0};
     8'hf2: dataout <= {`NOP, 11'd0};
     8'hf3: dataout <= {`NOP, 11'd0};
     8'hf4: dataout <= {`NOP, 11'd0};
     8'hf5: dataout <= {`NOP, 11'd0};
     8'hf6: dataout <= {`NOP, 11'd0};
     8'hf7: dataout <= {`NOP, 11'd0};
     8'hf8: dataout <= {`NOP, 11'd0};
     8'hf9: dataout <= {`NOP, 11'd0};
     8'hfa: dataout <= {`NOP, 11'd0};
     8'hfb: dataout <= {`NOP, 11'd0};
     8'hfc: dataout <= {`NOP, 11'd0};
     8'hfd: dataout <= {`NOP, 11'd0};
     8'hfe: dataout <= {`NOP, 11'd0};
     8'hff: dataout <= {`NOP, 11'd0};
   default: dataout <= 15'hxxxx;
  endcase
end

    

endmodule
