/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09-SP5-3
// Date      : Fri Mar 13 22:25:38 2026
/////////////////////////////////////////////////////////////


module weight_verification_top ( clk, rst, pkg_detect, weight_in, min_weight, 
        max_weight, sort_accept, sort_reject, fault, total_count, accept_count, 
        reject_count );
  input [7:0] weight_in;
  input [7:0] min_weight;
  input [7:0] max_weight;
  output [15:0] total_count;
  output [15:0] accept_count;
  output [15:0] reject_count;
  input clk, rst, pkg_detect;
  output sort_accept, sort_reject, fault;
  wire   within_range, accept, reject, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224;
  assign sort_accept = accept;

  DFFARX1_RVT \ctrl/accept_reg  ( .D(within_range), .CLK(clk), .RSTB(n51), .Q(
        accept), .QN(n218) );
  DFFARX1_RVT \ctrl/reject_reg  ( .D(n100), .CLK(clk), .RSTB(n51), .Q(reject)
         );
  DFFARX1_RVT \counter/accept_count_reg[0]  ( .D(n98), .CLK(clk), .RSTB(n224), 
        .Q(accept_count[0]) );
  DFFARX1_RVT \counter/accept_count_reg[1]  ( .D(n97), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[1]) );
  DFFARX1_RVT \counter/accept_count_reg[2]  ( .D(n96), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[2]) );
  DFFARX1_RVT \counter/accept_count_reg[3]  ( .D(n95), .CLK(clk), .RSTB(n224), 
        .Q(accept_count[3]) );
  DFFARX1_RVT \counter/accept_count_reg[4]  ( .D(n94), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[4]) );
  DFFARX1_RVT \counter/accept_count_reg[5]  ( .D(n93), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[5]) );
  DFFARX1_RVT \counter/accept_count_reg[6]  ( .D(n92), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[6]) );
  DFFARX1_RVT \counter/accept_count_reg[7]  ( .D(n91), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[7]) );
  DFFARX1_RVT \counter/accept_count_reg[8]  ( .D(n90), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[8]) );
  DFFARX1_RVT \counter/accept_count_reg[9]  ( .D(n89), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[9]) );
  DFFARX1_RVT \counter/accept_count_reg[10]  ( .D(n88), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[10]) );
  DFFARX1_RVT \counter/accept_count_reg[11]  ( .D(n87), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[11]) );
  DFFARX1_RVT \counter/accept_count_reg[12]  ( .D(n86), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[12]) );
  DFFARX1_RVT \counter/accept_count_reg[13]  ( .D(n85), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[13]) );
  DFFARX1_RVT \counter/accept_count_reg[14]  ( .D(n84), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[14]) );
  DFFARX1_RVT \counter/accept_count_reg[15]  ( .D(n99), .CLK(clk), .RSTB(n51), 
        .Q(accept_count[15]) );
  DFFARX1_RVT \counter/reject_count_reg[0]  ( .D(n82), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[0]) );
  DFFARX1_RVT \counter/reject_count_reg[1]  ( .D(n81), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[1]) );
  DFFARX1_RVT \counter/reject_count_reg[2]  ( .D(n80), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[2]) );
  DFFARX1_RVT \counter/reject_count_reg[3]  ( .D(n79), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[3]) );
  DFFARX1_RVT \counter/reject_count_reg[4]  ( .D(n78), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[4]) );
  DFFARX1_RVT \counter/reject_count_reg[5]  ( .D(n77), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[5]) );
  DFFARX1_RVT \counter/reject_count_reg[6]  ( .D(n76), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[6]) );
  DFFARX1_RVT \counter/reject_count_reg[7]  ( .D(n75), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[7]) );
  DFFARX1_RVT \counter/reject_count_reg[8]  ( .D(n74), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[8]) );
  DFFARX1_RVT \counter/reject_count_reg[9]  ( .D(n73), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[9]) );
  DFFARX1_RVT \counter/reject_count_reg[10]  ( .D(n72), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[10]) );
  DFFARX1_RVT \counter/reject_count_reg[11]  ( .D(n71), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[11]) );
  DFFARX1_RVT \counter/reject_count_reg[12]  ( .D(n70), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[12]) );
  DFFARX1_RVT \counter/reject_count_reg[13]  ( .D(n69), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[13]) );
  DFFARX1_RVT \counter/reject_count_reg[14]  ( .D(n68), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[14]) );
  DFFARX1_RVT \counter/reject_count_reg[15]  ( .D(n83), .CLK(clk), .RSTB(n51), 
        .Q(reject_count[15]) );
  DFFARX1_RVT \counter/total_count_reg[0]  ( .D(n67), .CLK(clk), .RSTB(n51), 
        .Q(total_count[0]), .QN(n219) );
  DFFARX1_RVT \counter/total_count_reg[1]  ( .D(n66), .CLK(clk), .RSTB(n51), 
        .Q(total_count[1]) );
  DFFARX1_RVT \counter/total_count_reg[2]  ( .D(n65), .CLK(clk), .RSTB(n224), 
        .Q(total_count[2]) );
  DFFARX1_RVT \counter/total_count_reg[3]  ( .D(n64), .CLK(clk), .RSTB(n224), 
        .Q(total_count[3]) );
  DFFARX1_RVT \counter/total_count_reg[4]  ( .D(n63), .CLK(clk), .RSTB(n224), 
        .Q(total_count[4]) );
  DFFARX1_RVT \counter/total_count_reg[5]  ( .D(n62), .CLK(clk), .RSTB(n224), 
        .Q(total_count[5]), .QN(n221) );
  DFFARX1_RVT \counter/total_count_reg[6]  ( .D(n61), .CLK(clk), .RSTB(n224), 
        .Q(total_count[6]) );
  DFFARX1_RVT \counter/total_count_reg[7]  ( .D(n60), .CLK(clk), .RSTB(n224), 
        .Q(total_count[7]), .QN(n222) );
  DFFARX1_RVT \counter/total_count_reg[8]  ( .D(n59), .CLK(clk), .RSTB(n224), 
        .Q(total_count[8]) );
  DFFARX1_RVT \counter/total_count_reg[9]  ( .D(n58), .CLK(clk), .RSTB(n224), 
        .Q(total_count[9]), .QN(n223) );
  DFFARX1_RVT \counter/total_count_reg[10]  ( .D(n57), .CLK(clk), .RSTB(n224), 
        .Q(total_count[10]) );
  DFFARX1_RVT \counter/total_count_reg[11]  ( .D(n56), .CLK(clk), .RSTB(n224), 
        .Q(total_count[11]), .QN(n220) );
  DFFARX1_RVT \counter/total_count_reg[12]  ( .D(n55), .CLK(clk), .RSTB(n224), 
        .Q(total_count[12]) );
  DFFARX1_RVT \counter/total_count_reg[13]  ( .D(n54), .CLK(clk), .RSTB(n224), 
        .Q(total_count[13]) );
  DFFARX1_RVT \counter/total_count_reg[14]  ( .D(n53), .CLK(clk), .RSTB(n51), 
        .Q(total_count[14]) );
  DFFARX1_RVT \counter/total_count_reg[15]  ( .D(n52), .CLK(clk), .RSTB(n51), 
        .Q(total_count[15]) );
  INVX0_RVT U104 ( .A(n132), .Y(n133) );
  INVX8_RVT U105 ( .A(rst), .Y(n51) );
  INVX0_RVT U106 ( .A(pkg_detect), .Y(n189) );
  INVX0_RVT U107 ( .A(n187), .Y(n160) );
  INVX0_RVT U108 ( .A(n158), .Y(n131) );
  INVX0_RVT U109 ( .A(n216), .Y(n217) );
  INVX0_RVT U110 ( .A(within_range), .Y(n100) );
  INVX0_RVT U111 ( .A(weight_in[0]), .Y(n122) );
  INVX0_RVT U112 ( .A(weight_in[1]), .Y(n123) );
  INVX0_RVT U113 ( .A(weight_in[2]), .Y(n124) );
  INVX1_RVT U114 ( .A(weight_in[6]), .Y(n126) );
  INVX1_RVT U115 ( .A(weight_in[3]), .Y(n125) );
  OA21X1_RVT U116 ( .A1(min_weight[1]), .A2(n123), .A3(min_weight[0]), .Y(n101) );
  AO22X1_RVT U117 ( .A1(min_weight[1]), .A2(n123), .A3(n122), .A4(n101), .Y(
        n102) );
  AO222X1_RVT U118 ( .A1(min_weight[2]), .A2(n124), .A3(min_weight[2]), .A4(
        n102), .A5(n124), .A6(n102), .Y(n103) );
  AO222X1_RVT U119 ( .A1(min_weight[3]), .A2(n125), .A3(min_weight[3]), .A4(
        n103), .A5(n125), .A6(n103), .Y(n104) );
  INVX1_RVT U120 ( .A(weight_in[4]), .Y(n121) );
  AO222X1_RVT U121 ( .A1(min_weight[4]), .A2(n104), .A3(min_weight[4]), .A4(
        n121), .A5(n104), .A6(n121), .Y(n105) );
  INVX1_RVT U122 ( .A(weight_in[5]), .Y(n120) );
  AO222X1_RVT U123 ( .A1(min_weight[5]), .A2(n105), .A3(min_weight[5]), .A4(
        n120), .A5(n105), .A6(n120), .Y(n106) );
  AOI222X1_RVT U124 ( .A1(min_weight[6]), .A2(n126), .A3(min_weight[6]), .A4(
        n106), .A5(n126), .A6(n106), .Y(n118) );
  INVX1_RVT U125 ( .A(min_weight[7]), .Y(n117) );
  INVX1_RVT U126 ( .A(weight_in[7]), .Y(n119) );
  OA22X1_RVT U127 ( .A1(max_weight[1]), .A2(n123), .A3(n122), .A4(
        max_weight[0]), .Y(n107) );
  AO21X1_RVT U128 ( .A1(n123), .A2(max_weight[1]), .A3(n107), .Y(n108) );
  AO222X1_RVT U129 ( .A1(max_weight[2]), .A2(n124), .A3(max_weight[2]), .A4(
        n108), .A5(n124), .A6(n108), .Y(n109) );
  AO222X1_RVT U130 ( .A1(max_weight[3]), .A2(n125), .A3(max_weight[3]), .A4(
        n109), .A5(n125), .A6(n109), .Y(n110) );
  AO222X1_RVT U131 ( .A1(max_weight[4]), .A2(n110), .A3(max_weight[4]), .A4(
        n121), .A5(n110), .A6(n121), .Y(n111) );
  AO222X1_RVT U132 ( .A1(max_weight[5]), .A2(n120), .A3(max_weight[5]), .A4(
        n111), .A5(n120), .A6(n111), .Y(n113) );
  OR2X1_RVT U133 ( .A1(max_weight[6]), .A2(n113), .Y(n114) );
  AND2X1_RVT U134 ( .A1(max_weight[7]), .A2(n119), .Y(n112) );
  AO221X1_RVT U135 ( .A1(n114), .A2(n126), .A3(n113), .A4(max_weight[6]), .A5(
        n112), .Y(n115) );
  OA221X1_RVT U136 ( .A1(weight_in[7]), .A2(n117), .A3(n119), .A4(
        max_weight[7]), .A5(n115), .Y(n116) );
  OA221X1_RVT U137 ( .A1(n118), .A2(weight_in[7]), .A3(n118), .A4(n117), .A5(
        n116), .Y(within_range) );
  NBUFFX2_RVT U138 ( .A(n51), .Y(n224) );
  AND2X1_RVT U139 ( .A1(reject), .A2(n218), .Y(sort_reject) );
  NAND4X0_RVT U140 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .Y(n128) );
  NAND4X0_RVT U141 ( .A1(n126), .A2(n125), .A3(n124), .A4(n123), .Y(n127) );
  OR2X1_RVT U142 ( .A1(n128), .A2(n127), .Y(n129) );
  HADDX1_RVT U143 ( .A0(n189), .B0(n129), .SO(n130) );
  NAND2X0_RVT U144 ( .A1(within_range), .A2(n130), .Y(fault) );
  NAND3X0_RVT U145 ( .A1(pkg_detect), .A2(accept), .A3(accept_count[0]), .Y(
        n132) );
  AND3X1_RVT U146 ( .A1(accept_count[2]), .A2(accept_count[1]), .A3(n133), .Y(
        n137) );
  NAND2X0_RVT U147 ( .A1(n137), .A2(accept_count[3]), .Y(n136) );
  INVX1_RVT U148 ( .A(n136), .Y(n139) );
  NAND2X0_RVT U149 ( .A1(accept_count[4]), .A2(n139), .Y(n138) );
  INVX1_RVT U150 ( .A(n138), .Y(n141) );
  NAND2X0_RVT U151 ( .A1(n141), .A2(accept_count[5]), .Y(n140) );
  INVX1_RVT U152 ( .A(n140), .Y(n143) );
  NAND2X0_RVT U153 ( .A1(n143), .A2(accept_count[6]), .Y(n142) );
  INVX1_RVT U154 ( .A(n142), .Y(n145) );
  NAND2X0_RVT U155 ( .A1(n145), .A2(accept_count[7]), .Y(n144) );
  INVX1_RVT U156 ( .A(n144), .Y(n147) );
  NAND2X0_RVT U157 ( .A1(n147), .A2(accept_count[8]), .Y(n146) );
  INVX1_RVT U158 ( .A(n146), .Y(n149) );
  NAND2X0_RVT U159 ( .A1(n149), .A2(accept_count[9]), .Y(n148) );
  INVX1_RVT U160 ( .A(n148), .Y(n151) );
  NAND2X0_RVT U161 ( .A1(n151), .A2(accept_count[10]), .Y(n150) );
  INVX1_RVT U162 ( .A(n150), .Y(n153) );
  NAND2X0_RVT U163 ( .A1(n153), .A2(accept_count[11]), .Y(n152) );
  INVX1_RVT U164 ( .A(n152), .Y(n155) );
  NAND2X0_RVT U165 ( .A1(n155), .A2(accept_count[12]), .Y(n154) );
  INVX1_RVT U166 ( .A(n154), .Y(n157) );
  NAND2X0_RVT U167 ( .A1(n157), .A2(accept_count[13]), .Y(n156) );
  INVX1_RVT U168 ( .A(n156), .Y(n159) );
  NAND2X0_RVT U169 ( .A1(n159), .A2(accept_count[14]), .Y(n158) );
  HADDX1_RVT U170 ( .A0(n131), .B0(accept_count[15]), .SO(n99) );
  OA221X1_RVT U171 ( .A1(accept_count[0]), .A2(accept), .A3(accept_count[0]), 
        .A4(pkg_detect), .A5(n132), .Y(n98) );
  NAND4X0_RVT U172 ( .A1(pkg_detect), .A2(accept), .A3(accept_count[1]), .A4(
        accept_count[0]), .Y(n134) );
  OA21X1_RVT U173 ( .A1(accept_count[1]), .A2(n133), .A3(n134), .Y(n97) );
  INVX0_RVT U174 ( .A(n134), .Y(n135) );
  HADDX1_RVT U175 ( .A0(accept_count[2]), .B0(n135), .SO(n96) );
  OA21X1_RVT U176 ( .A1(n137), .A2(accept_count[3]), .A3(n136), .Y(n95) );
  OA21X1_RVT U177 ( .A1(accept_count[4]), .A2(n139), .A3(n138), .Y(n94) );
  OA21X1_RVT U178 ( .A1(n141), .A2(accept_count[5]), .A3(n140), .Y(n93) );
  OA21X1_RVT U179 ( .A1(n143), .A2(accept_count[6]), .A3(n142), .Y(n92) );
  OA21X1_RVT U180 ( .A1(n145), .A2(accept_count[7]), .A3(n144), .Y(n91) );
  OA21X1_RVT U181 ( .A1(n147), .A2(accept_count[8]), .A3(n146), .Y(n90) );
  OA21X1_RVT U182 ( .A1(n149), .A2(accept_count[9]), .A3(n148), .Y(n89) );
  OA21X1_RVT U183 ( .A1(n151), .A2(accept_count[10]), .A3(n150), .Y(n88) );
  OA21X1_RVT U184 ( .A1(n153), .A2(accept_count[11]), .A3(n152), .Y(n87) );
  OA21X1_RVT U185 ( .A1(n155), .A2(accept_count[12]), .A3(n154), .Y(n86) );
  OA21X1_RVT U186 ( .A1(n157), .A2(accept_count[13]), .A3(n156), .Y(n85) );
  OA21X1_RVT U187 ( .A1(n159), .A2(accept_count[14]), .A3(n158), .Y(n84) );
  NAND3X0_RVT U188 ( .A1(pkg_detect), .A2(reject), .A3(reject_count[0]), .Y(
        n161) );
  INVX1_RVT U189 ( .A(n161), .Y(n162) );
  AND3X1_RVT U190 ( .A1(reject_count[2]), .A2(reject_count[1]), .A3(n162), .Y(
        n166) );
  NAND2X0_RVT U191 ( .A1(n166), .A2(reject_count[3]), .Y(n165) );
  INVX1_RVT U192 ( .A(n165), .Y(n168) );
  NAND2X0_RVT U193 ( .A1(reject_count[4]), .A2(n168), .Y(n167) );
  INVX1_RVT U194 ( .A(n167), .Y(n170) );
  NAND2X0_RVT U195 ( .A1(n170), .A2(reject_count[5]), .Y(n169) );
  INVX1_RVT U196 ( .A(n169), .Y(n172) );
  NAND2X0_RVT U197 ( .A1(n172), .A2(reject_count[6]), .Y(n171) );
  INVX1_RVT U198 ( .A(n171), .Y(n174) );
  NAND2X0_RVT U199 ( .A1(n174), .A2(reject_count[7]), .Y(n173) );
  INVX1_RVT U200 ( .A(n173), .Y(n176) );
  NAND2X0_RVT U201 ( .A1(n176), .A2(reject_count[8]), .Y(n175) );
  INVX1_RVT U202 ( .A(n175), .Y(n178) );
  NAND2X0_RVT U203 ( .A1(n178), .A2(reject_count[9]), .Y(n177) );
  INVX1_RVT U204 ( .A(n177), .Y(n180) );
  NAND2X0_RVT U205 ( .A1(n180), .A2(reject_count[10]), .Y(n179) );
  INVX1_RVT U206 ( .A(n179), .Y(n182) );
  NAND2X0_RVT U207 ( .A1(n182), .A2(reject_count[11]), .Y(n181) );
  INVX1_RVT U208 ( .A(n181), .Y(n184) );
  NAND2X0_RVT U209 ( .A1(n184), .A2(reject_count[12]), .Y(n183) );
  INVX1_RVT U210 ( .A(n183), .Y(n186) );
  NAND2X0_RVT U211 ( .A1(n186), .A2(reject_count[13]), .Y(n185) );
  INVX1_RVT U212 ( .A(n185), .Y(n188) );
  NAND2X0_RVT U213 ( .A1(n188), .A2(reject_count[14]), .Y(n187) );
  HADDX1_RVT U214 ( .A0(n160), .B0(reject_count[15]), .SO(n83) );
  OA221X1_RVT U215 ( .A1(reject_count[0]), .A2(reject), .A3(reject_count[0]), 
        .A4(pkg_detect), .A5(n161), .Y(n82) );
  NAND4X0_RVT U216 ( .A1(pkg_detect), .A2(reject), .A3(reject_count[1]), .A4(
        reject_count[0]), .Y(n163) );
  OA21X1_RVT U217 ( .A1(reject_count[1]), .A2(n162), .A3(n163), .Y(n81) );
  INVX0_RVT U218 ( .A(n163), .Y(n164) );
  HADDX1_RVT U219 ( .A0(reject_count[2]), .B0(n164), .SO(n80) );
  OA21X1_RVT U220 ( .A1(n166), .A2(reject_count[3]), .A3(n165), .Y(n79) );
  OA21X1_RVT U221 ( .A1(reject_count[4]), .A2(n168), .A3(n167), .Y(n78) );
  OA21X1_RVT U222 ( .A1(n170), .A2(reject_count[5]), .A3(n169), .Y(n77) );
  OA21X1_RVT U223 ( .A1(n172), .A2(reject_count[6]), .A3(n171), .Y(n76) );
  OA21X1_RVT U224 ( .A1(n174), .A2(reject_count[7]), .A3(n173), .Y(n75) );
  OA21X1_RVT U225 ( .A1(n176), .A2(reject_count[8]), .A3(n175), .Y(n74) );
  OA21X1_RVT U226 ( .A1(n178), .A2(reject_count[9]), .A3(n177), .Y(n73) );
  OA21X1_RVT U227 ( .A1(n180), .A2(reject_count[10]), .A3(n179), .Y(n72) );
  OA21X1_RVT U228 ( .A1(n182), .A2(reject_count[11]), .A3(n181), .Y(n71) );
  OA21X1_RVT U229 ( .A1(n184), .A2(reject_count[12]), .A3(n183), .Y(n70) );
  OA21X1_RVT U230 ( .A1(n186), .A2(reject_count[13]), .A3(n185), .Y(n69) );
  OA21X1_RVT U231 ( .A1(n188), .A2(reject_count[14]), .A3(n187), .Y(n68) );
  AO22X1_RVT U232 ( .A1(pkg_detect), .A2(n219), .A3(n189), .A4(total_count[0]), 
        .Y(n67) );
  NAND3X0_RVT U233 ( .A1(pkg_detect), .A2(total_count[1]), .A3(total_count[0]), 
        .Y(n190) );
  OA221X1_RVT U234 ( .A1(total_count[1]), .A2(pkg_detect), .A3(total_count[1]), 
        .A4(total_count[0]), .A5(n190), .Y(n66) );
  INVX0_RVT U235 ( .A(n190), .Y(n192) );
  AND3X1_RVT U236 ( .A1(total_count[2]), .A2(total_count[1]), .A3(
        total_count[0]), .Y(n194) );
  NAND2X0_RVT U237 ( .A1(pkg_detect), .A2(n194), .Y(n191) );
  OA21X1_RVT U238 ( .A1(total_count[2]), .A2(n192), .A3(n191), .Y(n65) );
  NAND3X0_RVT U239 ( .A1(pkg_detect), .A2(n194), .A3(total_count[3]), .Y(n193)
         );
  OA221X1_RVT U240 ( .A1(total_count[3]), .A2(n194), .A3(total_count[3]), .A4(
        pkg_detect), .A5(n193), .Y(n64) );
  INVX0_RVT U241 ( .A(n193), .Y(n195) );
  AND3X1_RVT U242 ( .A1(n194), .A2(total_count[4]), .A3(total_count[3]), .Y(
        n198) );
  NAND2X0_RVT U243 ( .A1(pkg_detect), .A2(n198), .Y(n197) );
  OA21X1_RVT U244 ( .A1(total_count[4]), .A2(n195), .A3(n197), .Y(n63) );
  INVX0_RVT U245 ( .A(n197), .Y(n196) );
  AO22X1_RVT U246 ( .A1(total_count[5]), .A2(n197), .A3(n221), .A4(n196), .Y(
        n62) );
  AND3X1_RVT U247 ( .A1(pkg_detect), .A2(n198), .A3(total_count[5]), .Y(n199)
         );
  AND3X1_RVT U248 ( .A1(n198), .A2(total_count[6]), .A3(total_count[5]), .Y(
        n202) );
  NAND2X0_RVT U249 ( .A1(pkg_detect), .A2(n202), .Y(n201) );
  OA21X1_RVT U250 ( .A1(total_count[6]), .A2(n199), .A3(n201), .Y(n61) );
  INVX0_RVT U251 ( .A(n201), .Y(n200) );
  AO22X1_RVT U252 ( .A1(total_count[7]), .A2(n201), .A3(n222), .A4(n200), .Y(
        n60) );
  AND3X1_RVT U253 ( .A1(pkg_detect), .A2(n202), .A3(total_count[7]), .Y(n203)
         );
  AND3X1_RVT U254 ( .A1(n202), .A2(total_count[8]), .A3(total_count[7]), .Y(
        n206) );
  NAND2X0_RVT U255 ( .A1(pkg_detect), .A2(n206), .Y(n205) );
  OA21X1_RVT U256 ( .A1(total_count[8]), .A2(n203), .A3(n205), .Y(n59) );
  INVX0_RVT U257 ( .A(n205), .Y(n204) );
  AO22X1_RVT U258 ( .A1(total_count[9]), .A2(n205), .A3(n223), .A4(n204), .Y(
        n58) );
  AND3X1_RVT U259 ( .A1(pkg_detect), .A2(n206), .A3(total_count[9]), .Y(n208)
         );
  AND3X1_RVT U260 ( .A1(n206), .A2(total_count[10]), .A3(total_count[9]), .Y(
        n207) );
  NAND2X0_RVT U261 ( .A1(pkg_detect), .A2(n207), .Y(n209) );
  OA21X1_RVT U262 ( .A1(total_count[10]), .A2(n208), .A3(n209), .Y(n57) );
  INVX1_RVT U263 ( .A(n209), .Y(n211) );
  AO22X1_RVT U264 ( .A1(total_count[11]), .A2(n209), .A3(n220), .A4(n211), .Y(
        n56) );
  AND2X1_RVT U265 ( .A1(total_count[11]), .A2(n211), .Y(n210) );
  NAND2X0_RVT U266 ( .A1(total_count[12]), .A2(n210), .Y(n212) );
  OA221X1_RVT U267 ( .A1(total_count[12]), .A2(total_count[11]), .A3(
        total_count[12]), .A4(n211), .A5(n212), .Y(n55) );
  INVX1_RVT U268 ( .A(n212), .Y(n213) );
  NAND2X0_RVT U269 ( .A1(n213), .A2(total_count[13]), .Y(n214) );
  OA21X1_RVT U270 ( .A1(n213), .A2(total_count[13]), .A3(n214), .Y(n54) );
  INVX1_RVT U271 ( .A(n214), .Y(n215) );
  NAND2X0_RVT U272 ( .A1(n215), .A2(total_count[14]), .Y(n216) );
  OA21X1_RVT U273 ( .A1(n215), .A2(total_count[14]), .A3(n216), .Y(n53) );
  HADDX1_RVT U274 ( .A0(total_count[15]), .B0(n217), .SO(n52) );
endmodule

