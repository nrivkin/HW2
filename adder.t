#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x110ffe0 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 7;
 .timescale -9 -12;
v0x1110f50_0 .net *"_s10", 0 0, C4<0>; 1 drivers
v0x112c720_0 .net *"_s11", 1 0, L_0x112df60; 1 drivers
v0x112c7c0_0 .net *"_s13", 1 0, L_0x112e170; 1 drivers
v0x112c860_0 .net *"_s16", 0 0, C4<0>; 1 drivers
v0x112c910_0 .net *"_s17", 1 0, L_0x112e2e0; 1 drivers
v0x112c9b0_0 .net *"_s3", 1 0, L_0x112dc50; 1 drivers
v0x112ca90_0 .net *"_s6", 0 0, C4<0>; 1 drivers
v0x112cb30_0 .net *"_s7", 1 0, L_0x112dda0; 1 drivers
v0x112cc20_0 .net "a", 0 0, C4<z>; 0 drivers
v0x112ccc0_0 .net "b", 0 0, C4<z>; 0 drivers
v0x112cdc0_0 .net "carryin", 0 0, C4<z>; 0 drivers
v0x112ce60_0 .net "carryout", 0 0, L_0x112da30; 1 drivers
v0x112cf70_0 .net "sum", 0 0, L_0x112db30; 1 drivers
L_0x112da30 .part L_0x112e2e0, 1, 1;
L_0x112db30 .part L_0x112e2e0, 0, 1;
L_0x112dc50 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x112dda0 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x112df60 .arith/sum 2, L_0x112dc50, L_0x112dda0;
L_0x112e170 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x112e2e0 .arith/sum 2, L_0x112df60, L_0x112e170;
S_0x11100d0 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0x112d6a0_0 .var "a", 0 0;
v0x112d740_0 .var "b", 0 0;
v0x112d7f0_0 .var "carryin", 0 0;
v0x112d8a0_0 .net "carryout", 0 0, L_0x112e8e0; 1 drivers
v0x112d980_0 .net "sum", 0 0, L_0x112e4c0; 1 drivers
S_0x112d010 .scope module, "adder" "structuralFullAdder" 3 10, 2 19, S_0x11100d0;
 .timescale -9 -12;
L_0x112cd40 .functor XOR 1, v0x112d6a0_0, v0x112d740_0, C4<0>, C4<0>;
L_0x112e4c0 .functor XOR 1, L_0x112cd40, v0x112d7f0_0, C4<0>, C4<0>;
L_0x112e610 .functor AND 1, v0x112d6a0_0, v0x112d740_0, C4<1>, C4<1>;
L_0x112e670 .functor AND 1, v0x112d6a0_0, v0x112d7f0_0, C4<1>, C4<1>;
L_0x112e760 .functor AND 1, v0x112d740_0, v0x112d7f0_0, C4<1>, C4<1>;
L_0x112e8e0 .functor OR 1, L_0x112e610, L_0x112e670, L_0x112e760, C4<0>;
v0x112d100_0 .net "AandB", 0 0, L_0x112e610; 1 drivers
v0x112d1c0_0 .net "AandC", 0 0, L_0x112e670; 1 drivers
v0x112d260_0 .net "AxorB", 0 0, L_0x112cd40; 1 drivers
v0x112d300_0 .net "BandC", 0 0, L_0x112e760; 1 drivers
v0x112d380_0 .net "a", 0 0, v0x112d6a0_0; 1 drivers
v0x112d420_0 .net "b", 0 0, v0x112d740_0; 1 drivers
v0x112d4c0_0 .net "carryin", 0 0, v0x112d7f0_0; 1 drivers
v0x112d560_0 .alias "carryout", 0 0, v0x112d8a0_0;
v0x112d600_0 .alias "sum", 0 0, v0x112d980_0;
    .scope S_0x11100d0;
T_0 ;
    %vpi_call 3 14 "$display", "A B Cin | Sum Cout";
    %set/v v0x112d6a0_0, 0, 1;
    %set/v v0x112d740_0, 0, 1;
    %set/v v0x112d7f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 0, 1;
    %set/v v0x112d740_0, 0, 1;
    %set/v v0x112d7f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 0, 1;
    %set/v v0x112d740_0, 1, 1;
    %set/v v0x112d7f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 0, 1;
    %set/v v0x112d740_0, 1, 1;
    %set/v v0x112d7f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 1, 1;
    %set/v v0x112d740_0, 0, 1;
    %set/v v0x112d7f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 1, 1;
    %set/v v0x112d740_0, 0, 1;
    %set/v v0x112d7f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 1, 1;
    %set/v v0x112d740_0, 1, 1;
    %set/v v0x112d7f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %set/v v0x112d6a0_0, 1, 1;
    %set/v v0x112d740_0, 1, 1;
    %set/v v0x112d7f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b %b %b   |  %b %b", v0x112d6a0_0, v0x112d740_0, v0x112d7f0_0, v0x112d980_0, v0x112d8a0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
