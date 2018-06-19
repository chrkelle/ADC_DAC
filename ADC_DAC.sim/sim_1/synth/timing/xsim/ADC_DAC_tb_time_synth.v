// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun 15 16:36:28 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Chris/Desktop/Research/ADC_DAC/ADC_DAC.sim/sim_1/synth/timing/xsim/ADC_DAC_tb_time_synth.v
// Design      : main
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ADC
   (cnv_OBUF,
    adc_done,
    aclk,
    Q,
    CLK,
    reset,
    start_IBUF,
    D,
    db_n,
    dco_n);
  output cnv_OBUF;
  output adc_done;
  output aclk;
  output [15:0]Q;
  input CLK;
  input reset;
  input start_IBUF;
  input [0:0]D;
  input [0:0]db_n;
  input [0:0]dco_n;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire [15:0]Q;
  wire aclk;
  wire aclk_i_1_n_0;
  wire aclk_i_2_n_0;
  wire adc_done;
  wire adc_done_i_1_n_0;
  wire adc_done_i_2_n_0;
  wire adc_done_i_3_n_0;
  wire cnv_OBUF;
  wire cnv_i_2_n_0;
  wire cnv_i_3_n_0;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire [0:0]db_n;
  wire [0:0]dco_n;
  wire \fdata[0]_i_1_n_0 ;
  wire \fdata[1]_i_1_n_0 ;
  wire \fdata[1]_i_2_n_0 ;
  wire \fdata_reg_n_0_[0] ;
  wire \fdata_reg_n_0_[1] ;
  wire n_cnv;
  wire [5:0]n_count;
  wire p_0_in;
  wire reset;
  wire start_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire sync_n_2;
  wire sync_out_dap2;
  wire sync_out_dbp2;

  LUT5 #(
    .INIT(32'h07FF0700)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06FF0600)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h42FF4200)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FF88FFF8)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\count[5]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(start_IBUF),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\count_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF000C80CC000C00)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    aclk_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\count_reg_n_0_[5] ),
        .I3(state[2]),
        .I4(aclk_i_2_n_0),
        .I5(aclk),
        .O(aclk_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    aclk_i_2
       (.I0(\count_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(aclk_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(aclk_i_1_n_0),
        .Q(aclk),
        .R(reset));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    adc_done_i_1
       (.I0(adc_done_i_2_n_0),
        .I1(cnv_i_3_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(adc_done_i_3_n_0),
        .I5(adc_done),
        .O(adc_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h44444440)) 
    adc_done_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[5] ),
        .O(adc_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h00F0000800000008)) 
    adc_done_i_3
       (.I0(adc_done),
        .I1(p_0_in),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\count_reg_n_0_[3] ),
        .O(adc_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(adc_done_i_1_n_0),
        .Q(adc_done),
        .R(reset));
  LUT5 #(
    .INIT(32'h00000C0A)) 
    cnv_i_1
       (.I0(start_IBUF),
        .I1(cnv_i_3_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(n_cnv));
  LUT2 #(
    .INIT(4'h4)) 
    cnv_i_2
       (.I0(state[0]),
        .I1(start_IBUF),
        .O(cnv_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    cnv_i_3
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[4] ),
        .O(cnv_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cnv_reg
       (.C(CLK),
        .CE(n_cnv),
        .D(cnv_i_2_n_0),
        .Q(cnv_OBUF),
        .R(reset));
  LUT5 #(
    .INIT(32'h0000F57F)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\count_reg_n_0_[0] ),
        .O(n_count[0]));
  LUT6 #(
    .INIT(64'h0000F57FF57F0000)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(p_0_in),
        .I5(\count_reg_n_0_[0] ),
        .O(n_count[1]));
  LUT4 #(
    .INIT(16'h2888)) 
    \count[2]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(p_0_in),
        .O(n_count[2]));
  LUT5 #(
    .INIT(32'h28888888)) 
    \count[3]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count_reg_n_0_[3] ),
        .I2(p_0_in),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .O(n_count[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count[4]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(p_0_in),
        .I5(\count_reg_n_0_[0] ),
        .O(n_count[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count[5]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(p_0_in),
        .I5(\count[5]_i_3_n_0 ),
        .O(n_count[5]));
  LUT4 #(
    .INIT(16'h9DFF)) 
    \count[5]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\count_reg_n_0_[5] ),
        .O(\count[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .O(\count[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(n_count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(n_count[1]),
        .Q(p_0_in),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(n_count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(n_count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(n_count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(n_count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(reset));
  LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
    \fdata[0]_i_1 
       (.I0(sync_out_dbp2),
        .I1(db_n),
        .I2(\fdata[1]_i_2_n_0 ),
        .I3(state[0]),
        .I4(sync_n_2),
        .I5(\fdata_reg_n_0_[0] ),
        .O(\fdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
    \fdata[1]_i_1 
       (.I0(sync_out_dap2),
        .I1(D),
        .I2(\fdata[1]_i_2_n_0 ),
        .I3(state[0]),
        .I4(sync_n_2),
        .I5(\fdata_reg_n_0_[1] ),
        .O(\fdata[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \fdata[1]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\fdata[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fdata[0]_i_1_n_0 ),
        .Q(\fdata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[10] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[6]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[11] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[7]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[12] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[8]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[13] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[9]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[14] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[10]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[15] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[11]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[16] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[12]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[17] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[13]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fdata[1]_i_1_n_0 ),
        .Q(\fdata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[2] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(\fdata_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[3] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(\fdata_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[4] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[0]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[5] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[1]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[6] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[2]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[7] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[3]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[8] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[4]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fdata_reg[9] 
       (.C(CLK),
        .CE(sync_n_2),
        .D(Q[5]),
        .Q(Q[7]),
        .R(1'b0));
  sync_reg sync
       (.CLK(CLK),
        .D(D),
        .E(sync_n_2),
        .db_n(db_n),
        .dco_n(dco_n),
        .sync_out_dap2(sync_out_dap2),
        .sync_out_dbp2(sync_out_dbp2));
endmodule

module DAC
   (dacclk_OBUF,
    adc_done,
    CLK,
    reset);
  output dacclk_OBUF;
  input adc_done;
  input CLK;
  input reset;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire adc_done;
  wire [0:0]count;
  wire \count[0]_i_2_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[2]_i_3_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire dacclk_OBUF;
  wire [3:0]n_count;
  wire reset;
  (* RTL_KEEP = "yes" *) wire [1:0]state;

  LUT5 #(
    .INIT(32'h33773222)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\count_reg_n_0_[3] ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h3D7D3C28)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\count_reg_n_0_[3] ),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CF00FACAFA0A)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(adc_done),
        .I1(count),
        .I2(state[1]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(state[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]));
  LUT5 #(
    .INIT(32'h00FF0020)) 
    \count[0]_i_1__0 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(count),
        .I4(\count[2]_i_3_n_0 ),
        .O(n_count[0]));
  LUT3 #(
    .INIT(8'h2F)) 
    \count[0]_i_2 
       (.I0(state[0]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FF0F000020020)) 
    \count[1]_i_1__0 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .I2(count),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count[2]_i_3_n_0 ),
        .O(n_count[1]));
  LUT6 #(
    .INIT(64'h5AF05AF000400000)) 
    \count[2]_i_1__0 
       (.I0(count),
        .I1(state[0]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count[2]_i_2_n_0 ),
        .I5(\count[2]_i_3_n_0 ),
        .O(n_count[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_2 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .O(\count[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1010101F)) 
    \count[2]_i_3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(adc_done),
        .O(\count[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \count[3]_i_1__0 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(count),
        .O(n_count[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF054F0000)) 
    \count[3]_i_2 
       (.I0(count),
        .I1(state[0]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count[2]_i_2_n_0 ),
        .I5(\count[2]_i_3_n_0 ),
        .O(\count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(n_count[0]),
        .Q(count));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(n_count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(n_count[2]),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(n_count[3]),
        .Q(\count_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    dacclk_OBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(dacclk_OBUF));
endmodule

module clk_wiz_0
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire NLW_plle2_adv_inst_LOCKED_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(6),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(3),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_plle2_adv_inst_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module debounce
   (reset,
    reset_in_IBUF,
    clk_out1);
  output reset;
  input reset_in_IBUF;
  input clk_out1;

  wire \PB_cnt[0]_i_1_n_0 ;
  wire \PB_cnt[0]_i_3_n_0 ;
  wire [24:0]PB_cnt_reg;
  wire \PB_cnt_reg[0]_i_2_n_0 ;
  wire \PB_cnt_reg[0]_i_2_n_1 ;
  wire \PB_cnt_reg[0]_i_2_n_2 ;
  wire \PB_cnt_reg[0]_i_2_n_3 ;
  wire \PB_cnt_reg[0]_i_2_n_4 ;
  wire \PB_cnt_reg[0]_i_2_n_5 ;
  wire \PB_cnt_reg[0]_i_2_n_6 ;
  wire \PB_cnt_reg[0]_i_2_n_7 ;
  wire \PB_cnt_reg[12]_i_1_n_0 ;
  wire \PB_cnt_reg[12]_i_1_n_1 ;
  wire \PB_cnt_reg[12]_i_1_n_2 ;
  wire \PB_cnt_reg[12]_i_1_n_3 ;
  wire \PB_cnt_reg[12]_i_1_n_4 ;
  wire \PB_cnt_reg[12]_i_1_n_5 ;
  wire \PB_cnt_reg[12]_i_1_n_6 ;
  wire \PB_cnt_reg[12]_i_1_n_7 ;
  wire \PB_cnt_reg[16]_i_1_n_0 ;
  wire \PB_cnt_reg[16]_i_1_n_1 ;
  wire \PB_cnt_reg[16]_i_1_n_2 ;
  wire \PB_cnt_reg[16]_i_1_n_3 ;
  wire \PB_cnt_reg[16]_i_1_n_4 ;
  wire \PB_cnt_reg[16]_i_1_n_5 ;
  wire \PB_cnt_reg[16]_i_1_n_6 ;
  wire \PB_cnt_reg[16]_i_1_n_7 ;
  wire \PB_cnt_reg[20]_i_1_n_0 ;
  wire \PB_cnt_reg[20]_i_1_n_1 ;
  wire \PB_cnt_reg[20]_i_1_n_2 ;
  wire \PB_cnt_reg[20]_i_1_n_3 ;
  wire \PB_cnt_reg[20]_i_1_n_4 ;
  wire \PB_cnt_reg[20]_i_1_n_5 ;
  wire \PB_cnt_reg[20]_i_1_n_6 ;
  wire \PB_cnt_reg[20]_i_1_n_7 ;
  wire \PB_cnt_reg[24]_i_1_n_7 ;
  wire \PB_cnt_reg[4]_i_1_n_0 ;
  wire \PB_cnt_reg[4]_i_1_n_1 ;
  wire \PB_cnt_reg[4]_i_1_n_2 ;
  wire \PB_cnt_reg[4]_i_1_n_3 ;
  wire \PB_cnt_reg[4]_i_1_n_4 ;
  wire \PB_cnt_reg[4]_i_1_n_5 ;
  wire \PB_cnt_reg[4]_i_1_n_6 ;
  wire \PB_cnt_reg[4]_i_1_n_7 ;
  wire \PB_cnt_reg[8]_i_1_n_0 ;
  wire \PB_cnt_reg[8]_i_1_n_1 ;
  wire \PB_cnt_reg[8]_i_1_n_2 ;
  wire \PB_cnt_reg[8]_i_1_n_3 ;
  wire \PB_cnt_reg[8]_i_1_n_4 ;
  wire \PB_cnt_reg[8]_i_1_n_5 ;
  wire \PB_cnt_reg[8]_i_1_n_6 ;
  wire \PB_cnt_reg[8]_i_1_n_7 ;
  wire PB_state_i_1_n_0;
  wire PB_state_i_2_n_0;
  wire PB_state_i_3_n_0;
  wire PB_state_i_4_n_0;
  wire PB_state_i_5_n_0;
  wire PB_state_i_6_n_0;
  wire PB_state_i_7_n_0;
  wire PB_sync_0;
  wire PB_sync_1;
  wire clk_out1;
  wire reset;
  wire reset_in_IBUF;
  wire [3:0]\NLW_PB_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_PB_cnt_reg[24]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \PB_cnt[0]_i_1 
       (.I0(reset),
        .I1(PB_sync_1),
        .O(\PB_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \PB_cnt[0]_i_3 
       (.I0(PB_cnt_reg[0]),
        .O(\PB_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[0]_i_2_n_7 ),
        .Q(PB_cnt_reg[0]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\PB_cnt_reg[0]_i_2_n_0 ,\PB_cnt_reg[0]_i_2_n_1 ,\PB_cnt_reg[0]_i_2_n_2 ,\PB_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\PB_cnt_reg[0]_i_2_n_4 ,\PB_cnt_reg[0]_i_2_n_5 ,\PB_cnt_reg[0]_i_2_n_6 ,\PB_cnt_reg[0]_i_2_n_7 }),
        .S({PB_cnt_reg[3:1],\PB_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[8]_i_1_n_5 ),
        .Q(PB_cnt_reg[10]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[8]_i_1_n_4 ),
        .Q(PB_cnt_reg[11]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[12]_i_1_n_7 ),
        .Q(PB_cnt_reg[12]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[12]_i_1 
       (.CI(\PB_cnt_reg[8]_i_1_n_0 ),
        .CO({\PB_cnt_reg[12]_i_1_n_0 ,\PB_cnt_reg[12]_i_1_n_1 ,\PB_cnt_reg[12]_i_1_n_2 ,\PB_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PB_cnt_reg[12]_i_1_n_4 ,\PB_cnt_reg[12]_i_1_n_5 ,\PB_cnt_reg[12]_i_1_n_6 ,\PB_cnt_reg[12]_i_1_n_7 }),
        .S(PB_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[12]_i_1_n_6 ),
        .Q(PB_cnt_reg[13]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[12]_i_1_n_5 ),
        .Q(PB_cnt_reg[14]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[12]_i_1_n_4 ),
        .Q(PB_cnt_reg[15]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[16]_i_1_n_7 ),
        .Q(PB_cnt_reg[16]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[16]_i_1 
       (.CI(\PB_cnt_reg[12]_i_1_n_0 ),
        .CO({\PB_cnt_reg[16]_i_1_n_0 ,\PB_cnt_reg[16]_i_1_n_1 ,\PB_cnt_reg[16]_i_1_n_2 ,\PB_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PB_cnt_reg[16]_i_1_n_4 ,\PB_cnt_reg[16]_i_1_n_5 ,\PB_cnt_reg[16]_i_1_n_6 ,\PB_cnt_reg[16]_i_1_n_7 }),
        .S(PB_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[16]_i_1_n_6 ),
        .Q(PB_cnt_reg[17]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[16]_i_1_n_5 ),
        .Q(PB_cnt_reg[18]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[16]_i_1_n_4 ),
        .Q(PB_cnt_reg[19]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[0]_i_2_n_6 ),
        .Q(PB_cnt_reg[1]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[20]_i_1_n_7 ),
        .Q(PB_cnt_reg[20]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[20]_i_1 
       (.CI(\PB_cnt_reg[16]_i_1_n_0 ),
        .CO({\PB_cnt_reg[20]_i_1_n_0 ,\PB_cnt_reg[20]_i_1_n_1 ,\PB_cnt_reg[20]_i_1_n_2 ,\PB_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PB_cnt_reg[20]_i_1_n_4 ,\PB_cnt_reg[20]_i_1_n_5 ,\PB_cnt_reg[20]_i_1_n_6 ,\PB_cnt_reg[20]_i_1_n_7 }),
        .S(PB_cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[20]_i_1_n_6 ),
        .Q(PB_cnt_reg[21]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[20]_i_1_n_5 ),
        .Q(PB_cnt_reg[22]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[20]_i_1_n_4 ),
        .Q(PB_cnt_reg[23]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[24]_i_1_n_7 ),
        .Q(PB_cnt_reg[24]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[24]_i_1 
       (.CI(\PB_cnt_reg[20]_i_1_n_0 ),
        .CO(\NLW_PB_cnt_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PB_cnt_reg[24]_i_1_O_UNCONNECTED [3:1],\PB_cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,PB_cnt_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[0]_i_2_n_5 ),
        .Q(PB_cnt_reg[2]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[0]_i_2_n_4 ),
        .Q(PB_cnt_reg[3]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[4]_i_1_n_7 ),
        .Q(PB_cnt_reg[4]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[4]_i_1 
       (.CI(\PB_cnt_reg[0]_i_2_n_0 ),
        .CO({\PB_cnt_reg[4]_i_1_n_0 ,\PB_cnt_reg[4]_i_1_n_1 ,\PB_cnt_reg[4]_i_1_n_2 ,\PB_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PB_cnt_reg[4]_i_1_n_4 ,\PB_cnt_reg[4]_i_1_n_5 ,\PB_cnt_reg[4]_i_1_n_6 ,\PB_cnt_reg[4]_i_1_n_7 }),
        .S(PB_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[4]_i_1_n_6 ),
        .Q(PB_cnt_reg[5]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[4]_i_1_n_5 ),
        .Q(PB_cnt_reg[6]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[4]_i_1_n_4 ),
        .Q(PB_cnt_reg[7]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[8]_i_1_n_7 ),
        .Q(PB_cnt_reg[8]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  CARRY4 \PB_cnt_reg[8]_i_1 
       (.CI(\PB_cnt_reg[4]_i_1_n_0 ),
        .CO({\PB_cnt_reg[8]_i_1_n_0 ,\PB_cnt_reg[8]_i_1_n_1 ,\PB_cnt_reg[8]_i_1_n_2 ,\PB_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PB_cnt_reg[8]_i_1_n_4 ,\PB_cnt_reg[8]_i_1_n_5 ,\PB_cnt_reg[8]_i_1_n_6 ,\PB_cnt_reg[8]_i_1_n_7 }),
        .S(PB_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \PB_cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\PB_cnt_reg[8]_i_1_n_6 ),
        .Q(PB_cnt_reg[9]),
        .R(\PB_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00001011FFFFFEEE)) 
    PB_state_i_1
       (.I0(PB_state_i_2_n_0),
        .I1(PB_state_i_3_n_0),
        .I2(PB_sync_1),
        .I3(PB_state_i_4_n_0),
        .I4(PB_state_i_5_n_0),
        .I5(reset),
        .O(PB_state_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    PB_state_i_2
       (.I0(PB_cnt_reg[15]),
        .I1(PB_cnt_reg[18]),
        .I2(PB_cnt_reg[19]),
        .I3(PB_cnt_reg[17]),
        .I4(PB_state_i_6_n_0),
        .I5(PB_cnt_reg[16]),
        .O(PB_state_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    PB_state_i_3
       (.I0(PB_cnt_reg[20]),
        .I1(PB_cnt_reg[23]),
        .I2(PB_cnt_reg[24]),
        .I3(PB_cnt_reg[22]),
        .I4(PB_state_i_6_n_0),
        .I5(PB_cnt_reg[21]),
        .O(PB_state_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    PB_state_i_4
       (.I0(PB_cnt_reg[8]),
        .I1(PB_cnt_reg[9]),
        .I2(PB_cnt_reg[7]),
        .I3(PB_cnt_reg[6]),
        .I4(PB_cnt_reg[5]),
        .I5(PB_state_i_7_n_0),
        .O(PB_state_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    PB_state_i_5
       (.I0(PB_cnt_reg[10]),
        .I1(PB_cnt_reg[13]),
        .I2(PB_cnt_reg[14]),
        .I3(PB_cnt_reg[12]),
        .I4(PB_state_i_6_n_0),
        .I5(PB_cnt_reg[11]),
        .O(PB_state_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    PB_state_i_6
       (.I0(PB_sync_1),
        .I1(reset),
        .O(PB_state_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    PB_state_i_7
       (.I0(PB_cnt_reg[3]),
        .I1(PB_cnt_reg[2]),
        .I2(PB_cnt_reg[1]),
        .I3(PB_cnt_reg[0]),
        .I4(PB_cnt_reg[4]),
        .O(PB_state_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PB_state_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(PB_state_i_1_n_0),
        .Q(reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    PB_sync_0_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(reset_in_IBUF),
        .Q(PB_sync_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    PB_sync_1_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(PB_sync_0),
        .Q(PB_sync_1),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module main
   (sys_clk_p,
    sys_clk_n,
    reset_in,
    hi_muxsel,
    start,
    dco_p,
    dco_n,
    da_p,
    da_n,
    db_p,
    db_n,
    aclk_p,
    aclk_n,
    cnv,
    tp,
    tl,
    data,
    dacclk,
    done,
    clk);
  input sys_clk_p;
  input sys_clk_n;
  input reset_in;
  output hi_muxsel;
  input start;
  input dco_p;
  input dco_n;
  input da_p;
  input da_n;
  input db_p;
  input db_n;
  output aclk_p;
  output aclk_n;
  output cnv;
  output tp;
  output tl;
  output [15:0]data;
  output dacclk;
  input done;
  output clk;

  wire aclk;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire aclk_n;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire aclk_p;
  wire adc_done;
  wire clk;
  wire clk_OBUF;
  wire cnv;
  wire cnv_OBUF;
  wire da;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire da_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire da_p;
  wire dacclk;
  wire dacclk_OBUF;
  wire [15:0]data;
  wire [15:0]data_OBUF;
  wire db;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire db_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire db_p;
  wire dco;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire dco_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire dco_p;
  wire hi_muxsel;
  wire reset;
  wire reset_in;
  wire reset_in_IBUF;
  wire start;
  wire start_IBUF;
  wire sys_clk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire sys_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire sys_clk_p;
  wire tl;
  wire tp;

initial begin
 $sdf_annotate("ADC_DAC_tb_time_synth.sdf",,,,"tool_control");
end
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst0
       (.I(sys_clk_p),
        .IB(sys_clk_n),
        .O(sys_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst1
       (.I(da_p),
        .IB(da_n),
        .O(da));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst3
       (.I(db_p),
        .IB(db_n),
        .O(db));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst4
       (.I(dco_p),
        .IB(dco_n),
        .O(dco));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_inst0
       (.I(aclk),
        .O(aclk_p),
        .OB(aclk_n));
  ADC adc
       (.CLK(clk_OBUF),
        .D(da),
        .Q(data_OBUF),
        .aclk(aclk),
        .adc_done(adc_done),
        .cnv_OBUF(cnv_OBUF),
        .db_n(db),
        .dco_n(dco),
        .reset(reset),
        .start_IBUF(start_IBUF));
  OBUF clk_OBUF_inst
       (.I(clk_OBUF),
        .O(clk));
  clk_wiz_0 clk_wiz
       (.clk_in1(sys_clk),
        .clk_out1(clk_OBUF));
  OBUF cnv_OBUF_inst
       (.I(cnv_OBUF),
        .O(cnv));
  DAC dac
       (.CLK(clk_OBUF),
        .adc_done(adc_done),
        .dacclk_OBUF(dacclk_OBUF),
        .reset(reset));
  OBUF dacclk_OBUF_inst
       (.I(dacclk_OBUF),
        .O(dacclk));
  OBUF \data_OBUF[0]_inst 
       (.I(data_OBUF[0]),
        .O(data[0]));
  OBUF \data_OBUF[10]_inst 
       (.I(data_OBUF[10]),
        .O(data[10]));
  OBUF \data_OBUF[11]_inst 
       (.I(data_OBUF[11]),
        .O(data[11]));
  OBUF \data_OBUF[12]_inst 
       (.I(data_OBUF[12]),
        .O(data[12]));
  OBUF \data_OBUF[13]_inst 
       (.I(data_OBUF[13]),
        .O(data[13]));
  OBUF \data_OBUF[14]_inst 
       (.I(data_OBUF[14]),
        .O(data[14]));
  OBUF \data_OBUF[15]_inst 
       (.I(data_OBUF[15]),
        .O(data[15]));
  OBUF \data_OBUF[1]_inst 
       (.I(data_OBUF[1]),
        .O(data[1]));
  OBUF \data_OBUF[2]_inst 
       (.I(data_OBUF[2]),
        .O(data[2]));
  OBUF \data_OBUF[3]_inst 
       (.I(data_OBUF[3]),
        .O(data[3]));
  OBUF \data_OBUF[4]_inst 
       (.I(data_OBUF[4]),
        .O(data[4]));
  OBUF \data_OBUF[5]_inst 
       (.I(data_OBUF[5]),
        .O(data[5]));
  OBUF \data_OBUF[6]_inst 
       (.I(data_OBUF[6]),
        .O(data[6]));
  OBUF \data_OBUF[7]_inst 
       (.I(data_OBUF[7]),
        .O(data[7]));
  OBUF \data_OBUF[8]_inst 
       (.I(data_OBUF[8]),
        .O(data[8]));
  OBUF \data_OBUF[9]_inst 
       (.I(data_OBUF[9]),
        .O(data[9]));
  debounce debounce
       (.clk_out1(clk_OBUF),
        .reset(reset),
        .reset_in_IBUF(reset_in_IBUF));
  OBUF hi_muxsel_OBUF_inst
       (.I(1'b0),
        .O(hi_muxsel));
  IBUF reset_in_IBUF_inst
       (.I(reset_in),
        .O(reset_in_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  OBUF tl_OBUF_inst
       (.I(1'b1),
        .O(tl));
  OBUF tp_OBUF_inst
       (.I(1'b1),
        .O(tp));
endmodule

module sync_reg
   (sync_out_dbp2,
    sync_out_dap2,
    E,
    CLK,
    D,
    db_n,
    dco_n);
  output sync_out_dbp2;
  output sync_out_dap2;
  output [0:0]E;
  input CLK;
  input [0:0]D;
  input [0:0]db_n;
  input [0:0]dco_n;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]db_n;
  wire [0:0]dco_n;
  wire dcop3;
  wire dcop4;
  (* HBLKNM = "sync_reg" *) (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [1:0]sreg_da;
  (* HBLKNM = "sync_reg" *) (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [1:0]sreg_db;
  (* HBLKNM = "sync_reg" *) (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [3:0]sreg_dco;
  wire sync_out_dap2;
  wire sync_out_dbp2;

  LUT2 #(
    .INIT(4'h6)) 
    \fdata[17]_i_1 
       (.I0(dcop3),
        .I1(dcop4),
        .O(E));
  initial assign \sreg_da_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_da_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(sreg_da[0]),
        .R(1'b0));
  initial assign \sreg_da_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_da_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_da[0]),
        .Q(sreg_da[1]),
        .R(1'b0));
  initial assign \sreg_db_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_db_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(db_n),
        .Q(sreg_db[0]),
        .R(1'b0));
  initial assign \sreg_db_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_db_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_db[0]),
        .Q(sreg_db[1]),
        .R(1'b0));
  initial assign \sreg_dco_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dco_n),
        .Q(sreg_dco[0]),
        .R(1'b0));
  initial assign \sreg_dco_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_dco[0]),
        .Q(sreg_dco[1]),
        .R(1'b0));
  initial assign \sreg_dco_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_dco[1]),
        .Q(sreg_dco[2]),
        .R(1'b0));
  initial assign \sreg_dco_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_dco[2]),
        .Q(sreg_dco[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dap2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_da[1]),
        .Q(sync_out_dap2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dbp2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_db[1]),
        .Q(sync_out_dbp2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dcop3_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_dco[2]),
        .Q(dcop3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dcop4_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sreg_dco[3]),
        .Q(dcop4),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
