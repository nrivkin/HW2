#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x18eede0 .scope module, "behavioralDecoder" "behavioralDecoder" 2 7;
 .timescale -9 -12;
v0x18fa280_0 .net *"_s11", 3 0, L_0x191b070; 1 drivers
v0x19193e0_0 .net *"_s5", 3 0, L_0x191adc0; 1 drivers
v0x1919480_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0x1919520_0 .net *"_s9", 1 0, L_0x191af30; 1 drivers
v0x19195d0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x1919670_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x1919750_0 .net "enable", 0 0, C4<z>; 0 drivers
v0x19197f0_0 .net "out0", 0 0, L_0x191ac30; 1 drivers
v0x19198e0_0 .net "out1", 0 0, L_0x191ab90; 1 drivers
v0x1919980_0 .net "out2", 0 0, L_0x191aac0; 1 drivers
v0x1919a80_0 .net "out3", 0 0, L_0x191a9c0; 1 drivers
L_0x191a9c0 .part L_0x191b070, 3, 1;
L_0x191aac0 .part L_0x191b070, 2, 1;
L_0x191ab90 .part L_0x191b070, 1, 1;
L_0x191ac30 .part L_0x191b070, 0, 1;
L_0x191adc0 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0x191af30 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x191b070 .shift/l 4, L_0x191adc0, L_0x191af30;
S_0x18f7f40 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x191a500_0 .var "addr0", 0 0;
v0x191a5a0_0 .var "addr1", 0 0;
v0x191a650_0 .var "enable", 0 0;
v0x191a700_0 .net "out0", 0 0, L_0x191b800; 1 drivers
v0x191a7e0_0 .net "out1", 0 0, L_0x191b8f0; 1 drivers
v0x191a890_0 .net "out2", 0 0, L_0x191ba30; 1 drivers
v0x191a910_0 .net "out3", 0 0, L_0x191bbc0; 1 drivers
S_0x1919b20 .scope module, "decoder" "structuralDecoder" 3 11, 2 18, S_0x18f7f40;
 .timescale -9 -12;
L_0x191a230/d .functor NOT 1, v0x191a500_0, C4<0>, C4<0>, C4<0>;
L_0x191a230 .delay (50000,50000,50000) L_0x191a230/d;
L_0x191b290/d .functor NOT 1, v0x191a5a0_0, C4<0>, C4<0>, C4<0>;
L_0x191b290 .delay (50000,50000,50000) L_0x191b290/d;
L_0x191b380/d .functor AND 1, L_0x191a230, L_0x191b290, C4<1>, C4<1>;
L_0x191b380 .delay (50000,50000,50000) L_0x191b380/d;
L_0x191b4c0/d .functor AND 1, L_0x191a230, v0x191a5a0_0, C4<1>, C4<1>;
L_0x191b4c0 .delay (50000,50000,50000) L_0x191b4c0/d;
L_0x191b560/d .functor AND 1, v0x191a500_0, L_0x191b290, C4<1>, C4<1>;
L_0x191b560 .delay (50000,50000,50000) L_0x191b560/d;
L_0x191b600/d .functor AND 1, v0x191a500_0, v0x191a5a0_0, C4<1>, C4<1>;
L_0x191b600 .delay (50000,50000,50000) L_0x191b600/d;
L_0x191b800/d .functor AND 1, L_0x191b380, v0x191a650_0, C4<1>, C4<1>;
L_0x191b800 .delay (50000,50000,50000) L_0x191b800/d;
L_0x191b8f0/d .functor AND 1, L_0x191b560, v0x191a650_0, C4<1>, C4<1>;
L_0x191b8f0 .delay (50000,50000,50000) L_0x191b8f0/d;
L_0x191ba30/d .functor AND 1, L_0x191b4c0, v0x191a650_0, C4<1>, C4<1>;
L_0x191ba30 .delay (50000,50000,50000) L_0x191ba30/d;
L_0x191bbc0/d .functor AND 1, L_0x191b600, v0x191a650_0, C4<1>, C4<1>;
L_0x191bbc0 .delay (50000,50000,50000) L_0x191bbc0/d;
v0x1919c10_0 .net "A0andA1", 0 0, L_0x191b600; 1 drivers
v0x1919cd0_0 .net "A0andnA1", 0 0, L_0x191b560; 1 drivers
v0x1919d70_0 .net "address0", 0 0, v0x191a500_0; 1 drivers
v0x1919e10_0 .net "address1", 0 0, v0x191a5a0_0; 1 drivers
v0x1919e90_0 .net "enable", 0 0, v0x191a650_0; 1 drivers
v0x1919f30_0 .net "nA0", 0 0, L_0x191a230; 1 drivers
v0x1919fd0_0 .net "nA0andA1", 0 0, L_0x191b4c0; 1 drivers
v0x191a070_0 .net "nA0andnA1", 0 0, L_0x191b380; 1 drivers
v0x191a110_0 .net "nA1", 0 0, L_0x191b290; 1 drivers
v0x191a1b0_0 .alias "out0", 0 0, v0x191a700_0;
v0x191a2b0_0 .alias "out1", 0 0, v0x191a7e0_0;
v0x191a350_0 .alias "out2", 0 0, v0x191a890_0;
v0x191a460_0 .alias "out3", 0 0, v0x191a910_0;
    .scope S_0x18f7f40;
T_0 ;
    %vpi_call 3 15 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %vpi_call 3 16 "$dumpfile", "decoder-dump.vcd";
    %vpi_call 3 18 "$dumpvars";
    %set/v v0x191a650_0, 0, 1;
    %set/v v0x191a500_0, 0, 1;
    %set/v v0x191a5a0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 0, 1;
    %set/v v0x191a500_0, 1, 1;
    %set/v v0x191a5a0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 0, 1;
    %set/v v0x191a500_0, 0, 1;
    %set/v v0x191a5a0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 0, 1;
    %set/v v0x191a500_0, 1, 1;
    %set/v v0x191a5a0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 1, 1;
    %set/v v0x191a500_0, 0, 1;
    %set/v v0x191a5a0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 1, 1;
    %set/v v0x191a500_0, 1, 1;
    %set/v v0x191a5a0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 1, 1;
    %set/v v0x191a500_0, 0, 1;
    %set/v v0x191a5a0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %set/v v0x191a650_0, 1, 1;
    %set/v v0x191a500_0, 1, 1;
    %set/v v0x191a5a0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x191a650_0, v0x191a500_0, v0x191a5a0_0, v0x191a700_0, v0x191a7e0_0, v0x191a890_0, v0x191a910_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
