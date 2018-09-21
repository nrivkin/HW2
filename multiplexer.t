#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x9199b0 .scope module, "structuralMultiplexer" "structuralMultiplexer" 2 20;
 .timescale -9 -12;
L_0x94d280 .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x94e410 .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x94e4d0 .functor AND 1, L_0x94e410, L_0x94d280, C4<1>, C4<1>;
L_0x94e600 .functor AND 1, L_0x94e410, C4<z>, C4<1>, C4<1>;
L_0x94e6b0 .functor AND 1, C4<z>, L_0x94d280, C4<1>, C4<1>;
L_0x94e760 .functor AND 1, C4<z>, C4<z>, C4<1>, C4<1>;
L_0x94e800 .functor AND 1, C4<z>, L_0x94e4d0, C4<1>, C4<1>;
L_0x94e8e0 .functor AND 1, C4<z>, L_0x94e6b0, C4<1>, C4<1>;
L_0x94ea10 .functor AND 1, C4<z>, L_0x94e600, C4<1>, C4<1>;
L_0x94eaf0 .functor AND 1, C4<z>, L_0x94e760, C4<1>, C4<1>;
L_0x94ec30 .functor OR 1, L_0x94e800, L_0x94ea10, L_0x94e8e0, L_0x94eaf0;
v0x92ba30_0 .net "A1andA0", 0 0, L_0x94e760; 1 drivers
v0x94cc60_0 .net "A1andnA0", 0 0, L_0x94e6b0; 1 drivers
v0x94cd00_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x94cda0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x94ce50_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x94cef0_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x94cfd0_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x94d070_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x94d160_0 .net "nA0", 0 0, L_0x94d280; 1 drivers
v0x94d200_0 .net "nA1", 0 0, L_0x94e410; 1 drivers
v0x94d300_0 .net "nA1andA0", 0 0, L_0x94e600; 1 drivers
v0x94d3a0_0 .net "nA1andnA0", 0 0, L_0x94e4d0; 1 drivers
v0x94d4b0_0 .net "o0", 0 0, L_0x94e800; 1 drivers
v0x94d550_0 .net "o1", 0 0, L_0x94ea10; 1 drivers
v0x94d670_0 .net "o2", 0 0, L_0x94e8e0; 1 drivers
v0x94d710_0 .net "o3", 0 0, L_0x94eaf0; 1 drivers
v0x94d5d0_0 .net "out", 0 0, L_0x94ec30; 1 drivers
S_0x918ed0 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x94def0_0 .var "addr0", 0 0;
v0x94df90_0 .var "addr1", 0 0;
v0x94e040_0 .var "in0", 0 0;
v0x94e0f0_0 .var "in1", 0 0;
v0x94e1d0_0 .var "in2", 0 0;
v0x94e280_0 .var "in3", 0 0;
v0x94e300_0 .net "out", 0 0, L_0x94f0d0; 1 drivers
S_0x94d860 .scope module, "multiplexer" "behavioralMultiplexer" 3 11, 2 7, S_0x918ed0;
 .timescale -9 -12;
v0x94d950_0 .net "address", 1 0, L_0x94ef90; 1 drivers
v0x94da10_0 .net "address0", 0 0, v0x94def0_0; 1 drivers
v0x94dab0_0 .net "address1", 0 0, v0x94df90_0; 1 drivers
v0x94db50_0 .net "in0", 0 0, v0x94e040_0; 1 drivers
v0x94dbd0_0 .net "in1", 0 0, v0x94e0f0_0; 1 drivers
v0x94dc70_0 .net "in2", 0 0, v0x94e1d0_0; 1 drivers
v0x94dd10_0 .net "in3", 0 0, v0x94e280_0; 1 drivers
v0x94ddb0_0 .net "inputs", 3 0, L_0x94edb0; 1 drivers
v0x94de50_0 .alias "out", 0 0, v0x94e300_0;
L_0x94edb0 .concat [ 1 1 1 1], v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0;
L_0x94ef90 .concat [ 1 1 0 0], v0x94def0_0, v0x94df90_0;
L_0x94f0d0 .part/v L_0x94edb0, L_0x94ef90, 1;
    .scope S_0x918ed0;
T_0 ;
    %vpi_call 3 15 "$display", "A0 A1 i0 i1 i2 i3 | out ";
    %set/v v0x94def0_0, 0, 1;
    %set/v v0x94df90_0, 0, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 17 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 0, 1;
    %set/v v0x94df90_0, 0, 1;
    %set/v v0x94e040_0, 0, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 0, 1;
    %set/v v0x94df90_0, 1, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 0, 1;
    %set/v v0x94df90_0, 1, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 0, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 1, 1;
    %set/v v0x94df90_0, 0, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 25 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 1, 1;
    %set/v v0x94df90_0, 0, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 0, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 27 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 1, 1;
    %set/v v0x94df90_0, 1, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 29 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %set/v v0x94def0_0, 1, 1;
    %set/v v0x94df90_0, 1, 1;
    %set/v v0x94e040_0, 1, 1;
    %set/v v0x94e0f0_0, 1, 1;
    %set/v v0x94e1d0_0, 1, 1;
    %set/v v0x94e280_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 31 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x94def0_0, v0x94df90_0, v0x94e040_0, v0x94e0f0_0, v0x94e1d0_0, v0x94e280_0, v0x94e300_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
