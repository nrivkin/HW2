#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x885980 .scope module, "structuralMultiplexer" "structuralMultiplexer" 2 20;
 .timescale -9 -12;
L_0x8b97c0 .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x8ba950 .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x8baa10 .functor AND 1, L_0x8ba950, L_0x8b97c0, C4<1>, C4<1>;
L_0x8bab40 .functor AND 1, L_0x8ba950, C4<z>, C4<1>, C4<1>;
L_0x8babf0 .functor AND 1, C4<z>, L_0x8b97c0, C4<1>, C4<1>;
L_0x8baca0 .functor AND 1, C4<z>, C4<z>, C4<1>, C4<1>;
L_0x8bad40 .functor AND 1, C4<z>, L_0x8baa10, C4<1>, C4<1>;
L_0x8bae20 .functor AND 1, C4<z>, L_0x8babf0, C4<1>, C4<1>;
L_0x8baf50 .functor AND 1, C4<z>, L_0x8bab40, C4<1>, C4<1>;
L_0x8bb030 .functor AND 1, C4<z>, L_0x8baca0, C4<1>, C4<1>;
L_0x8bb170 .functor OR 1, L_0x8bad40, L_0x8baf50, L_0x8bae20, L_0x8bb030;
v0x897a30_0 .net "A1andA0", 0 0, L_0x8baca0; 1 drivers
v0x8b91a0_0 .net "A1andnA0", 0 0, L_0x8babf0; 1 drivers
v0x8b9240_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x8b92e0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x8b9390_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x8b9430_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x8b9510_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x8b95b0_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x8b96a0_0 .net "nA0", 0 0, L_0x8b97c0; 1 drivers
v0x8b9740_0 .net "nA1", 0 0, L_0x8ba950; 1 drivers
v0x8b9840_0 .net "nA1andA0", 0 0, L_0x8bab40; 1 drivers
v0x8b98e0_0 .net "nA1andnA0", 0 0, L_0x8baa10; 1 drivers
v0x8b99f0_0 .net "o0", 0 0, L_0x8bad40; 1 drivers
v0x8b9a90_0 .net "o1", 0 0, L_0x8baf50; 1 drivers
v0x8b9bb0_0 .net "o2", 0 0, L_0x8bae20; 1 drivers
v0x8b9c50_0 .net "o3", 0 0, L_0x8bb030; 1 drivers
v0x8b9b10_0 .net "out", 0 0, L_0x8bb170; 1 drivers
S_0x884ed0 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x8ba430_0 .var "addr0", 0 0;
v0x8ba4d0_0 .var "addr1", 0 0;
v0x8ba580_0 .var "in0", 0 0;
v0x8ba630_0 .var "in1", 0 0;
v0x8ba710_0 .var "in2", 0 0;
v0x8ba7c0_0 .var "in3", 0 0;
v0x8ba840_0 .net "out", 0 0, L_0x8bb610; 1 drivers
S_0x8b9da0 .scope module, "multiplexer" "behavioralMultiplexer" 3 11, 2 7, S_0x884ed0;
 .timescale -9 -12;
v0x8b9e90_0 .net "address", 1 0, L_0x8bb4d0; 1 drivers
v0x8b9f50_0 .net "address0", 0 0, v0x8ba430_0; 1 drivers
v0x8b9ff0_0 .net "address1", 0 0, v0x8ba4d0_0; 1 drivers
v0x8ba090_0 .net "in0", 0 0, v0x8ba580_0; 1 drivers
v0x8ba110_0 .net "in1", 0 0, v0x8ba630_0; 1 drivers
v0x8ba1b0_0 .net "in2", 0 0, v0x8ba710_0; 1 drivers
v0x8ba250_0 .net "in3", 0 0, v0x8ba7c0_0; 1 drivers
v0x8ba2f0_0 .net "inputs", 3 0, L_0x8bb2f0; 1 drivers
v0x8ba390_0 .alias "out", 0 0, v0x8ba840_0;
L_0x8bb2f0 .concat [ 1 1 1 1], v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0;
L_0x8bb4d0 .concat [ 1 1 0 0], v0x8ba430_0, v0x8ba4d0_0;
L_0x8bb610 .part/v L_0x8bb2f0, L_0x8bb4d0, 1;
    .scope S_0x884ed0;
T_0 ;
    %vpi_call 3 16 "$dumpfile", "multiplexer-dump.vcd";
    %vpi_call 3 17 "$dumpvars";
    %vpi_call 3 19 "$display", "A0 A1 i0 i1 i2 i3 | out ";
    %set/v v0x8ba430_0, 0, 1;
    %set/v v0x8ba4d0_0, 0, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 0, 1;
    %set/v v0x8ba4d0_0, 0, 1;
    %set/v v0x8ba580_0, 0, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 0, 1;
    %set/v v0x8ba4d0_0, 1, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 25 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 0, 1;
    %set/v v0x8ba4d0_0, 1, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 0, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 27 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 1, 1;
    %set/v v0x8ba4d0_0, 0, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 29 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 1, 1;
    %set/v v0x8ba4d0_0, 0, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 0, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 31 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 1, 1;
    %set/v v0x8ba4d0_0, 1, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 33 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %set/v v0x8ba430_0, 1, 1;
    %set/v v0x8ba4d0_0, 1, 1;
    %set/v v0x8ba580_0, 1, 1;
    %set/v v0x8ba630_0, 1, 1;
    %set/v v0x8ba710_0, 1, 1;
    %set/v v0x8ba7c0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 35 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x8ba430_0, v0x8ba4d0_0, v0x8ba580_0, v0x8ba630_0, v0x8ba710_0, v0x8ba7c0_0, v0x8ba840_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
