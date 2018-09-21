#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xe97f40 .scope module, "behavioralDecoder" "behavioralDecoder" 2 7;
 .timescale -9 -12;
v0xe9a280_0 .net *"_s11", 3 0, L_0xeba390; 1 drivers
v0xeb8700_0 .net *"_s5", 3 0, L_0xeba0e0; 1 drivers
v0xeb87a0_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0xeb8840_0 .net *"_s9", 1 0, L_0xeba250; 1 drivers
v0xeb88f0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0xeb8990_0 .net "address1", 0 0, C4<z>; 0 drivers
v0xeb8a70_0 .net "enable", 0 0, C4<z>; 0 drivers
v0xeb8b10_0 .net "out0", 0 0, L_0xeb9f50; 1 drivers
v0xeb8c00_0 .net "out1", 0 0, L_0xeb9eb0; 1 drivers
v0xeb8ca0_0 .net "out2", 0 0, L_0xeb9de0; 1 drivers
v0xeb8da0_0 .net "out3", 0 0, L_0xeb9ce0; 1 drivers
L_0xeb9ce0 .part L_0xeba390, 3, 1;
L_0xeb9de0 .part L_0xeba390, 2, 1;
L_0xeb9eb0 .part L_0xeba390, 1, 1;
L_0xeb9f50 .part L_0xeba390, 0, 1;
L_0xeba0e0 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0xeba250 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0xeba390 .shift/l 4, L_0xeba0e0, L_0xeba250;
S_0xe98030 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0xeb9820_0 .var "addr0", 0 0;
v0xeb98c0_0 .var "addr1", 0 0;
v0xeb9970_0 .var "enable", 0 0;
v0xeb9a20_0 .net "out0", 0 0, L_0xeba950; 1 drivers
v0xeb9b00_0 .net "out1", 0 0, L_0xebaa00; 1 drivers
v0xeb9bb0_0 .net "out2", 0 0, L_0xebab50; 1 drivers
v0xeb9c30_0 .net "out3", 0 0, L_0xebace0; 1 drivers
S_0xeb8e40 .scope module, "decoder" "structuralDecoder" 3 11, 2 18, S_0xe98030;
 .timescale -9 -12;
L_0xeb9550 .functor NOT 1, v0xeb9820_0, C4<0>, C4<0>, C4<0>;
L_0xeba520 .functor NOT 1, v0xeb98c0_0, C4<0>, C4<0>, C4<0>;
L_0xeba5d0 .functor AND 1, L_0xeb9550, L_0xeba520, C4<1>, C4<1>;
L_0xeba6d0 .functor AND 1, L_0xeb9550, v0xeb98c0_0, C4<1>, C4<1>;
L_0xeba730 .functor AND 1, v0xeb9820_0, L_0xeba520, C4<1>, C4<1>;
L_0xeba790 .functor AND 1, v0xeb9820_0, v0xeb98c0_0, C4<1>, C4<1>;
L_0xeba950 .functor AND 1, L_0xeba5d0, v0xeb9970_0, C4<1>, C4<1>;
L_0xebaa00 .functor AND 1, L_0xeba730, v0xeb9970_0, C4<1>, C4<1>;
L_0xebab50 .functor AND 1, L_0xeba6d0, v0xeb9970_0, C4<1>, C4<1>;
L_0xebace0 .functor AND 1, L_0xeba790, v0xeb9970_0, C4<1>, C4<1>;
v0xeb8f30_0 .net "A0andA1", 0 0, L_0xeba790; 1 drivers
v0xeb8ff0_0 .net "A0andnA1", 0 0, L_0xeba730; 1 drivers
v0xeb9090_0 .net "address0", 0 0, v0xeb9820_0; 1 drivers
v0xeb9130_0 .net "address1", 0 0, v0xeb98c0_0; 1 drivers
v0xeb91b0_0 .net "enable", 0 0, v0xeb9970_0; 1 drivers
v0xeb9250_0 .net "nA0", 0 0, L_0xeb9550; 1 drivers
v0xeb92f0_0 .net "nA0andA1", 0 0, L_0xeba6d0; 1 drivers
v0xeb9390_0 .net "nA0andnA1", 0 0, L_0xeba5d0; 1 drivers
v0xeb9430_0 .net "nA1", 0 0, L_0xeba520; 1 drivers
v0xeb94d0_0 .alias "out0", 0 0, v0xeb9a20_0;
v0xeb95d0_0 .alias "out1", 0 0, v0xeb9b00_0;
v0xeb9670_0 .alias "out2", 0 0, v0xeb9bb0_0;
v0xeb9780_0 .alias "out3", 0 0, v0xeb9c30_0;
    .scope S_0xe98030;
T_0 ;
    %vpi_call 3 15 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %vpi_call 3 16 "$dumpfile", "decoder-dump.vcd";
    %vpi_call 3 18 "$dumpvars";
    %set/v v0xeb9970_0, 0, 1;
    %set/v v0xeb9820_0, 0, 1;
    %set/v v0xeb98c0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 0, 1;
    %set/v v0xeb9820_0, 1, 1;
    %set/v v0xeb98c0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 0, 1;
    %set/v v0xeb9820_0, 0, 1;
    %set/v v0xeb98c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 0, 1;
    %set/v v0xeb9820_0, 1, 1;
    %set/v v0xeb98c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 1, 1;
    %set/v v0xeb9820_0, 0, 1;
    %set/v v0xeb98c0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 1, 1;
    %set/v v0xeb9820_0, 1, 1;
    %set/v v0xeb98c0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 1, 1;
    %set/v v0xeb9820_0, 0, 1;
    %set/v v0xeb98c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %set/v v0xeb9970_0, 1, 1;
    %set/v v0xeb9820_0, 1, 1;
    %set/v v0xeb98c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0xeb9970_0, v0xeb9820_0, v0xeb98c0_0, v0xeb9a20_0, v0xeb9b00_0, v0xeb9bb0_0, v0xeb9c30_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
