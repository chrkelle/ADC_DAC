`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2018 04:03:20 PM
// Design Name: 
// Module Name: ADC_DAC_tb
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


module ADC_DAC_tb();

    //system inputs
    reg sys_clk_p, sys_clk_n, start, reset_in;
    //adc inputs
    reg dco_p, dco_n, da_p, da_n, db_p, db_n;
    //dac inputs
    
    //system outputs
    wire clk, hi_muxsel, done;
    //adc outputs
    wire aclk_p, aclk_n, cnv_p, cnv_n, tp, tl;
    wire [9:0] data;
    wire [15:0] ADC_data;
    //dac outputs
    wire dacclk;

    //system wires
    integer i = 0;
    
    DAC_range_test inst0(.sys_clk_p(sys_clk_p), .sys_clk_n(sys_clk_n), .reset_in(reset_in),
               .hi_muxsel(hi_muxsel), .start(start), .dco_p(dco_p), .dco_n(dco_n),
               .da_p(da_p), .da_n(da_n), .db_p(db_p), .db_n(db_n), .aclk_p(aclk_p),
               .aclk_n(aclk_n), .cnv_p(cnv_p), .cnv_n(cnv_n), .tp(tp), .tl(tl), .data(data), .dacclk(dacclk),
               .done(done), .clk(clk), .ADC_data(ADC_data));
    
    always begin
        #2.5
        sys_clk_p = sys_clk_n;
        sys_clk_n = ~sys_clk_n;
    end
    
    always begin
        #0.7
        dco_p = aclk_p;
        dco_n = aclk_n;
    end
    
    initial begin
        sys_clk_p = 0;
        sys_clk_n = 1;
        dco_p = 1;
        dco_n = 0;
        da_p = 1;
        da_n = 0;
        db_p = 1;
        db_n = 0;
        start = 0;
        reset_in = 1;
        
         for(i = 0; i < 2000; i = i + 1) begin
                       @(negedge clk);
                   end
        
        reset_in = 0;
        
        for(i = 0; i < 2000; i = i + 1) begin
            @(negedge clk);
        end
        
        start = 1;
        
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        

        da_p = 1;   //1
        da_n = 0;
        
        db_p = 1;   //1
        db_n = 0;
        
        @(posedge dco_p);
        
        da_p = 0;   //0
        da_n = 1;
                
        db_p = 0;   //0
        db_n = 1;
        
        @(posedge dco_n);
        
        da_p = 1;   //1
        da_n = 0;
                
        db_p = 1;   //1
        db_n = 0;
                
        @(posedge dco_p);
                      
        da_p = 0;   //0
        da_n = 1;
                        
        db_p = 0;   //0
        db_n = 1;
                
        
        @(posedge dco_n);
                
        da_p = 0;   //0
        da_n = 1;
                
        db_p = 0;   //0
        db_n = 1;
                
        @(posedge dco_p);
                       
        da_p = 1;   //1
        da_n = 0;
                        
        db_p = 1;   //1
        db_n = 0;
                
        @(posedge dco_n);
                       
        da_p = 1;   //1
        da_n = 0;
                        
        db_p = 1;   //1
        db_n = 0;
                        
        @(posedge dco_p);
                               
        da_p = 1;   //1
        da_n = 0;
                                
        db_p = 1;   //1
        db_n = 0;
                        
        @(negedge clk);
 
    end

endmodule
