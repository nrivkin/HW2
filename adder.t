#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2102fe0 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 7;
 .timescale -9 -12;
v0x2103f50_0 .net *"_s10", 0 0, C4<0>; 1 drivers
v0x2120380_0 .net *"_s11", 1 0, L_0x2121bc0; 1 drivers
v0x2120420_0 .net *"_s13", 1 0, L_0x2121dd0; 1 drivers
v0x21204c0_0 .net *"_s16", 0 0, C4<0>; 1 drivers
v0x2120570_0 .net *"_s17", 1 0, L_0x2121f40; 1 drivers
v0x2120610_0 .net *"_s3", 1 0, L_0x21218b0; 1 drivers
v0x21206f0_0 .net *"_s6", 0 0, C4<0>; 1 drivers
v0x2120790_0 .net *"_s7", 1 0, L_0x2121a00; 1 drivers
v0x2120880_0 .net "a", 0 0, C4<z>; 0 drivers
v0x2120920_0 .net "b", 0 0, C4<z>; 0 drivers
v0x2120a20_0 .net "carryin", 0 0, C4<z>; 0 drivers
v0x2120ac0_0 .net "carryout", 0 0, L_0x2121690; 1 drivers
v0x2120bd0_0 .net "sum", 0 0, L_0x2121790; 1 drivers
L_0x2121690 .part L_0x2121f40, 1, 1;
L_0x2121790 .part L_0x2121f40, 0, 1;
L_0x21218b0 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x2121a00 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x2121bc0 .arith/sum 2, L_0x21218b0, L_0x2121a00;
L_0x2121dd0 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x2121f40 .arith/sum 2, L_0x2121bc0, L_0x2121dd0;
S_0x21030d0 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0x2121300_0 .var "a", 0 0;
v0x21213a0_0 .var "b", 0 0;
v0x2121450_0 .var "carryin", 0 0;
v0x2121500_0 .net "carryout", 0 0, L_0x21226d0; 1 drivers
v0x21215e0_0 .net "sum", 0 0, L_0x21221b0; 1 drivers
S_0x2120c70 .scope module, "adder" "structuralFullAdder" 3 10, 2 19, S_0x21030d0;
 .timescale -9 -12;
L_0x21209a0/d .functor XOR 1, v0x2121300_0, v0x21213a0_0, C4<0>, C4<0>;
L_0x21209a0 .delay (50000,50000,50000) L_0x21209a0/d;
L_0x21221b0/d .functor XOR 1, L_0x21209a0, v0x2121450_0, C4<0>, C4<0>;
L_0x21221b0 .delay (50000,50000,50000) L_0x21221b0/d;
L_0x2122340/d .functor AND 1, v0x2121300_0, v0x21213a0_0, C4<1>, C4<1>;
L_0x2122340 .delay (50000,50000,50000) L_0x2122340/d;
L_0x21223e0/d .functor AND 1, v0x2121300_0, v0x2121450_0, C4<1>, C4<1>;
L_0x21223e0 .delay (50000,50000,50000) L_0x21223e0/d;
L_0x2122510/d .functor AND 1, v0x21213a0_0, v0x2121450_0, C4<1>, C4<1>;
L_0x2122510 .delay (50000,50000,50000) L_0x2122510/d;
L_0x21226d0/d .functor OR 1, L_0x2122340, L_0x21223e0, L_0x2122510, C4<0>;
L_0x21226d0 .delay (50000,50000,50000) L_0x21226d0/d;
v0x2120d60_0 .net "AandB", 0 0, L_0x2122340; 1 drivers
v0x2120e20_0 .net "AandC", 0 0, L_0x21223e0; 1 drivers
v0x2120ec0_0 .net "AxorB", 0 0, L_0x21209a0; 1 drivers
v0x2120f60_0 .net "BandC", 0 0, L_0x2122510; 1 drivers
v0x2120fe0_0 .net "a", 0 0, v0x2121300_0; 1 drivers
v0x2121080_0 .net "b", 0 0, v0x21213a0_0; 1 drivers
v0x2121120_0 .net "carryin", 0 0, v0x2121450_0; 1 drivers
v0x21211c0_0 .alias "carryout", 0 0, v0x2121500_0;
v0x2121260_0 .alias "sum", 0 0, v0x21215e0_0;
    .scope S_0x21030d0;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "adder-dump.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "A B Cin | Sum Cout";
    %set/v v0x2121300_0, 0, 1;
    %set/v v0x21213a0_0, 0, 1;
    %set/v v0x2121450_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 0, 1;
    %set/v v0x21213a0_0, 0, 1;
    %set/v v0x2121450_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 0, 1;
    %set/v v0x21213a0_0, 1, 1;
    %set/v v0x2121450_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 0, 1;
    %set/v v0x21213a0_0, 1, 1;
    %set/v v0x2121450_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 1, 1;
    %set/v v0x21213a0_0, 0, 1;
    %set/v v0x2121450_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 1, 1;
    %set/v v0x21213a0_0, 0, 1;
    %set/v v0x2121450_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 1, 1;
    %set/v v0x21213a0_0, 1, 1;
    %set/v v0x2121450_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %set/v v0x2121300_0, 1, 1;
    %set/v v0x21213a0_0, 1, 1;
    %set/v v0x2121450_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b %b %b   |  %b %b", v0x2121300_0, v0x21213a0_0, v0x2121450_0, v0x21215e0_0, v0x2121500_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
