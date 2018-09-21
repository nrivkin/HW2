#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xa7dfe0 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 7;
 .timescale -9 -12;
v0xa7ef50_0 .net *"_s10", 0 0, C4<0>; 1 drivers
v0xa9aba0_0 .net *"_s11", 1 0, L_0xa9c3e0; 1 drivers
v0xa9ac40_0 .net *"_s13", 1 0, L_0xa9c5f0; 1 drivers
v0xa9ace0_0 .net *"_s16", 0 0, C4<0>; 1 drivers
v0xa9ad90_0 .net *"_s17", 1 0, L_0xa9c760; 1 drivers
v0xa9ae30_0 .net *"_s3", 1 0, L_0xa9c0d0; 1 drivers
v0xa9af10_0 .net *"_s6", 0 0, C4<0>; 1 drivers
v0xa9afb0_0 .net *"_s7", 1 0, L_0xa9c220; 1 drivers
v0xa9b0a0_0 .net "a", 0 0, C4<z>; 0 drivers
v0xa9b140_0 .net "b", 0 0, C4<z>; 0 drivers
v0xa9b240_0 .net "carryin", 0 0, C4<z>; 0 drivers
v0xa9b2e0_0 .net "carryout", 0 0, L_0xa9beb0; 1 drivers
v0xa9b3f0_0 .net "sum", 0 0, L_0xa9bfb0; 1 drivers
L_0xa9beb0 .part L_0xa9c760, 1, 1;
L_0xa9bfb0 .part L_0xa9c760, 0, 1;
L_0xa9c0d0 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0xa9c220 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0xa9c3e0 .arith/sum 2, L_0xa9c0d0, L_0xa9c220;
L_0xa9c5f0 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0xa9c760 .arith/sum 2, L_0xa9c3e0, L_0xa9c5f0;
S_0xa7e0d0 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0xa9bb20_0 .var "a", 0 0;
v0xa9bbc0_0 .var "b", 0 0;
v0xa9bc70_0 .var "carryin", 0 0;
v0xa9bd20_0 .net "carryout", 0 0, L_0xa9cd60; 1 drivers
v0xa9be00_0 .net "sum", 0 0, L_0xa9c940; 1 drivers
S_0xa9b490 .scope module, "adder" "structuralFullAdder" 3 10, 2 19, S_0xa7e0d0;
 .timescale -9 -12;
L_0xa9b1c0 .functor XOR 1, v0xa9bb20_0, v0xa9bbc0_0, C4<0>, C4<0>;
L_0xa9c940 .functor XOR 1, L_0xa9b1c0, v0xa9bc70_0, C4<0>, C4<0>;
L_0xa9ca90 .functor AND 1, v0xa9bb20_0, v0xa9bbc0_0, C4<1>, C4<1>;
L_0xa9caf0 .functor AND 1, v0xa9bb20_0, v0xa9bc70_0, C4<1>, C4<1>;
L_0xa9cbe0 .functor AND 1, v0xa9bbc0_0, v0xa9bc70_0, C4<1>, C4<1>;
L_0xa9cd60 .functor OR 1, L_0xa9ca90, L_0xa9caf0, L_0xa9cbe0, C4<0>;
v0xa9b580_0 .net "AandB", 0 0, L_0xa9ca90; 1 drivers
v0xa9b640_0 .net "AandC", 0 0, L_0xa9caf0; 1 drivers
v0xa9b6e0_0 .net "AxorB", 0 0, L_0xa9b1c0; 1 drivers
v0xa9b780_0 .net "BandC", 0 0, L_0xa9cbe0; 1 drivers
v0xa9b800_0 .net "a", 0 0, v0xa9bb20_0; 1 drivers
v0xa9b8a0_0 .net "b", 0 0, v0xa9bbc0_0; 1 drivers
v0xa9b940_0 .net "carryin", 0 0, v0xa9bc70_0; 1 drivers
v0xa9b9e0_0 .alias "carryout", 0 0, v0xa9bd20_0;
v0xa9ba80_0 .alias "sum", 0 0, v0xa9be00_0;
    .scope S_0xa7e0d0;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "adder-dump.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "A B Cin | Sum Cout";
    %set/v v0xa9bb20_0, 0, 1;
    %set/v v0xa9bbc0_0, 0, 1;
    %set/v v0xa9bc70_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 0, 1;
    %set/v v0xa9bbc0_0, 0, 1;
    %set/v v0xa9bc70_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 0, 1;
    %set/v v0xa9bbc0_0, 1, 1;
    %set/v v0xa9bc70_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 0, 1;
    %set/v v0xa9bbc0_0, 1, 1;
    %set/v v0xa9bc70_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 1, 1;
    %set/v v0xa9bbc0_0, 0, 1;
    %set/v v0xa9bc70_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 1, 1;
    %set/v v0xa9bbc0_0, 0, 1;
    %set/v v0xa9bc70_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 1, 1;
    %set/v v0xa9bbc0_0, 1, 1;
    %set/v v0xa9bc70_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %set/v v0xa9bb20_0, 1, 1;
    %set/v v0xa9bbc0_0, 1, 1;
    %set/v v0xa9bc70_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b %b %b   |  %b %b", v0xa9bb20_0, v0xa9bbc0_0, v0xa9bc70_0, v0xa9be00_0, v0xa9bd20_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
