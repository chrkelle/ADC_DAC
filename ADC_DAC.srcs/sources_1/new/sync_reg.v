`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2018 11:29:38 AM
// Design Name: 
// Module Name: sync_reg
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


module sync_reg(input wire clk,
                input wire sync_in_da,
                input wire sync_in_db,
                input wire sync_in_dco,

                output reg sync_out_dap2,
                output reg sync_out_dbp2,
                output reg sync_out_dcop2,
                output reg sync_out_dcop3,
                output reg sync_out_dcop4);
                
    (* ASYNC_REG="TRUE", SHIFT_EXTRACT="NO", HBLKNM="sync_reg" *) reg [1:0] sreg_da;
    (* ASYNC_REG="TRUE", SHIFT_EXTRACT="NO", HBLKNM="sync_reg" *) reg [1:0] sreg_db;
    (* ASYNC_REG="TRUE", SHIFT_EXTRACT="NO", HBLKNM="sync_reg" *) reg [3:0] sreg_dco;
    
    always @(posedge clk) begin
        sync_out_dap2     <=  sreg_da[1];
        sync_out_dbp2     <=  sreg_db[1];
        sync_out_dcop2    <=  sreg_dco[1];
        sync_out_dcop3    <=  sreg_dco[2];
        sync_out_dcop4    <=  sreg_dco[3];
        sreg_da           <=  {sreg_da[0], sync_in_da};
        sreg_db           <=  {sreg_db[0], sync_in_db};
        sreg_dco          <=  {sreg_dco[2], sreg_dco[1], sreg_dco[0], sync_in_dco};
    end      
endmodule