`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2018 06:05:05 PM
// Design Name: 
// Module Name: DAC_range_test
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


module DAC_range_test(sys_clk_p, sys_clk_n, reset_in, hi_muxsel, start, dco_p, dco_n, da_p, da_n, db_p, db_n,
            aclk_p, aclk_n, cnv_p, cnv_n, tp, tl, data, dacclk, done, clk, ADC_data);
    
    //system inputs
    input wire sys_clk_p, sys_clk_n, reset_in, start;
    //adc inputs
    input wire dco_p, dco_n, da_p, da_n, db_p, db_n;
    //dac inputs
    
    //system outputs
    output wire clk, hi_muxsel, done;
    //adc outputs
    output wire aclk_p, aclk_n, cnv_p, cnv_n, tp, tl;
    output reg [9:0] data;
    reg [9:0] N_data;
    //dac outputs
    output wire dacclk;
   
    //system wires 
    wire sys_clk, reset;
    output reg  [15:0] ADC_data;
    reg  [15:0] N_ADC_data;
    //adc wires
    wire da, db, dco, aclk, start_adc, adc_done;
    wire [15:0] ADC_out;
    //dac wires
    wire dac_done;
    
    assign hi_muxsel = 0;
    assign done = dac_done;
    assign start_adc = start;
    assign cnv_n = 0;
    
    //buffers
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"),.IOSTANDARD("LVDS_25"))
    IBUFDS_inst0(.O(sys_clk), .I(sys_clk_p), .IB(sys_clk_n));
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst1(.O(da), .I(da_p), .IB(da_n));
            
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst3(.O(db), .I(db_p), .IB(db_n));
        
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst4(.O(dco), .I(dco_p), .IB(dco_n));
       
    OBUFDS #(.IOSTANDARD("LVDS_25"))   // Low power="TRUE", Highest performance="FALSE"
    OBUFDS_inst0(.O(aclk_p), .OB(aclk_n), .I(aclk));
    
    //module instantiation
    clk_wiz_0 clk_wiz(.clk_out1(clk), .clk_in1(sys_clk));
    
    debounce  debunce(.clk(clk), .PB(~reset_in), .PB_state(reset));
    
    ADC adc(.clk(clk), .reset(reset), .dco(dco), .da(da),. db(db), .start(start_adc),
             .aclk(aclk), .cnv(cnv_p), .tp(tp), .tl(tl), .data(ADC_out), .adc_done(adc_done));
         
    DAC dac(.clk(clk), .start(adc_done), .reset(reset), .dacclk(dacclk), .dac_done(dac_done));
    
    always @* begin
        N_ADC_data = ADC_data + 1;
    end
    
    always @(posedge adc_done, posedge reset) begin
        if(reset) begin
            data <= 0;
            ADC_data <= 0;
        end
        else begin
            data <= ADC_data [15:6];
            ADC_data <= N_ADC_data;
        end
    end
    
endmodule
