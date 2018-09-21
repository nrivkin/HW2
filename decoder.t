#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2736f40 .scope module, "structuralDecoder" "structuralDecoder" 2 14;
 .timescale -9 -12;
v0x2739280_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x2754410_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x27544b0_0 .net "enable", 0 0, C4<z>; 0 drivers
v0x2754550_0 .net "out0", 0 0, C4<z>; 0 drivers
v0x2754600_0 .net "out1", 0 0, C4<z>; 0 drivers
v0x27546a0_0 .net "out2", 0 0, C4<z>; 0 drivers
v0x2754780_0 .net "out3", 0 0, C4<z>; 0 drivers
S_0x2737030 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x27550e0_0 .var "addr0", 0 0;
v0x2755180_0 .var "addr1", 0 0;
v0x2755230_0 .var "enable", 0 0;
v0x27552e0_0 .net "out0", 0 0, L_0x2755870; 1 drivers
v0x27553c0_0 .net "out1", 0 0, L_0x2755780; 1 drivers
v0x2755470_0 .net "out2", 0 0, L_0x2755640; 1 drivers
v0x27554f0_0 .net "out3", 0 0, L_0x27555a0; 1 drivers
S_0x2754820 .scope module, "decoder" "behavioralDecoder" 3 10, 2 3, S_0x2737030;
 .timescale -9 -12;
v0x2754910_0 .net *"_s11", 3 0, L_0x2755ca0; 1 drivers
v0x27549d0_0 .net *"_s5", 3 0, L_0x27559f0; 1 drivers
v0x2754a70_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0x2754b10_0 .net *"_s9", 1 0, L_0x2755b20; 1 drivers
v0x2754b90_0 .net "address0", 0 0, v0x27550e0_0; 1 drivers
v0x2754c30_0 .net "address1", 0 0, v0x2755180_0; 1 drivers
v0x2754d10_0 .net "enable", 0 0, v0x2755230_0; 1 drivers
v0x2754db0_0 .alias "out0", 0 0, v0x27552e0_0;
v0x2754ea0_0 .alias "out1", 0 0, v0x27553c0_0;
v0x2754f40_0 .alias "out2", 0 0, v0x2755470_0;
v0x2755040_0 .alias "out3", 0 0, v0x27554f0_0;
L_0x27555a0 .part L_0x2755ca0, 3, 1;
L_0x2755640 .part L_0x2755ca0, 2, 1;
L_0x2755780 .part L_0x2755ca0, 1, 1;
L_0x2755870 .part L_0x2755ca0, 0, 1;
L_0x27559f0 .concat [ 1 3 0 0], v0x2755230_0, C4<000>;
L_0x2755b20 .concat [ 1 1 0 0], v0x27550e0_0, v0x2755180_0;
L_0x2755ca0 .shift/l 4, L_0x27559f0, L_0x2755b20;
    .scope S_0x2737030;
T_0 ;
    %vpi_call 3 14 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %set/v v0x2755230_0, 0, 1;
    %set/v v0x27550e0_0, 0, 1;
    %set/v v0x2755180_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 0, 1;
    %set/v v0x27550e0_0, 1, 1;
    %set/v v0x2755180_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 0, 1;
    %set/v v0x27550e0_0, 0, 1;
    %set/v v0x2755180_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 0, 1;
    %set/v v0x27550e0_0, 1, 1;
    %set/v v0x2755180_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 1, 1;
    %set/v v0x27550e0_0, 0, 1;
    %set/v v0x2755180_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 1, 1;
    %set/v v0x27550e0_0, 1, 1;
    %set/v v0x2755180_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 1, 1;
    %set/v v0x27550e0_0, 0, 1;
    %set/v v0x2755180_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %set/v v0x2755230_0, 1, 1;
    %set/v v0x27550e0_0, 1, 1;
    %set/v v0x2755180_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x2755230_0, v0x27550e0_0, v0x2755180_0, v0x27552e0_0, v0x27553c0_0, v0x2755470_0, v0x27554f0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
