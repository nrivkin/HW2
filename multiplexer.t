#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x129ea50 .scope module, "structuralMultiplexer" "structuralMultiplexer" 2 20;
 .timescale -9 -12;
L_0x12d3640/d .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x12d3640 .delay (50000,50000,50000) L_0x12d3640/d;
L_0x12d4860/d .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x12d4860 .delay (50000,50000,50000) L_0x12d4860/d;
L_0x12d4960/d .functor AND 1, L_0x12d4860, L_0x12d3640, C4<1>, C4<1>;
L_0x12d4960 .delay (50000,50000,50000) L_0x12d4960/d;
L_0x12d4ad0/d .functor AND 1, L_0x12d4860, C4<z>, C4<1>, C4<1>;
L_0x12d4ad0 .delay (50000,50000,50000) L_0x12d4ad0/d;
L_0x12d4bc0/d .functor AND 1, C4<z>, L_0x12d3640, C4<1>, C4<1>;
L_0x12d4bc0 .delay (50000,50000,50000) L_0x12d4bc0/d;
L_0x12d4cb0/d .functor AND 1, C4<z>, C4<z>, C4<1>, C4<1>;
L_0x12d4cb0 .delay (50000,50000,50000) L_0x12d4cb0/d;
L_0x12d4d90/d .functor AND 1, C4<z>, L_0x12d4960, C4<1>, C4<1>;
L_0x12d4d90 .delay (50000,50000,50000) L_0x12d4d90/d;
L_0x12d4eb0/d .functor AND 1, C4<z>, L_0x12d4bc0, C4<1>, C4<1>;
L_0x12d4eb0 .delay (50000,50000,50000) L_0x12d4eb0/d;
L_0x12d4fd0/d .functor AND 1, C4<z>, L_0x12d4ad0, C4<1>, C4<1>;
L_0x12d4fd0 .delay (50000,50000,50000) L_0x12d4fd0/d;
L_0x12d5100/d .functor AND 1, C4<z>, L_0x12d4cb0, C4<1>, C4<1>;
L_0x12d5100 .delay (50000,50000,50000) L_0x12d5100/d;
L_0x12d5280/d .functor OR 1, L_0x12d4d90, L_0x12d4fd0, L_0x12d4eb0, L_0x12d5100;
L_0x12d5280 .delay (50000,50000,50000) L_0x12d5280/d;
v0x12b0a30_0 .net "A1andA0", 0 0, L_0x12d4cb0; 1 drivers
v0x12d3020_0 .net "A1andnA0", 0 0, L_0x12d4bc0; 1 drivers
v0x12d30c0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x12d3160_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x12d3210_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x12d32b0_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x12d3390_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x12d3430_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x12d3520_0 .net "nA0", 0 0, L_0x12d3640; 1 drivers
v0x12d35c0_0 .net "nA1", 0 0, L_0x12d4860; 1 drivers
v0x12d36c0_0 .net "nA1andA0", 0 0, L_0x12d4ad0; 1 drivers
v0x12d3760_0 .net "nA1andnA0", 0 0, L_0x12d4960; 1 drivers
v0x12d3870_0 .net "o0", 0 0, L_0x12d4d90; 1 drivers
v0x12d3910_0 .net "o1", 0 0, L_0x12d4fd0; 1 drivers
v0x12d3a30_0 .net "o2", 0 0, L_0x12d4eb0; 1 drivers
v0x12d3ad0_0 .net "o3", 0 0, L_0x12d5100; 1 drivers
v0x12d3990_0 .net "out", 0 0, L_0x12d5280; 1 drivers
S_0x129e710 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x12d42b0_0 .var "addr0", 0 0;
v0x12d4350_0 .var "addr1", 0 0;
v0x12d4400_0 .var "in0", 0 0;
v0x12d44b0_0 .var "in1", 0 0;
v0x12d4590_0 .var "in2", 0 0;
v0x12d4640_0 .var "in3", 0 0;
v0x12d46c0_0 .net "out", 0 0, L_0x12d5710; 1 drivers
S_0x12d3c20 .scope module, "multiplexer" "behavioralMultiplexer" 3 11, 2 7, S_0x129e710;
 .timescale -9 -12;
v0x12d3d10_0 .net "address", 1 0, L_0x12d55d0; 1 drivers
v0x12d3dd0_0 .net "address0", 0 0, v0x12d42b0_0; 1 drivers
v0x12d3e70_0 .net "address1", 0 0, v0x12d4350_0; 1 drivers
v0x12d3f10_0 .net "in0", 0 0, v0x12d4400_0; 1 drivers
v0x12d3f90_0 .net "in1", 0 0, v0x12d44b0_0; 1 drivers
v0x12d4030_0 .net "in2", 0 0, v0x12d4590_0; 1 drivers
v0x12d40d0_0 .net "in3", 0 0, v0x12d4640_0; 1 drivers
v0x12d4170_0 .net "inputs", 3 0, L_0x12d5440; 1 drivers
v0x12d4210_0 .alias "out", 0 0, v0x12d46c0_0;
L_0x12d5440 .concat [ 1 1 1 1], v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0;
L_0x12d55d0 .concat [ 1 1 0 0], v0x12d42b0_0, v0x12d4350_0;
L_0x12d5710 .part/v L_0x12d5440, L_0x12d55d0, 1;
    .scope S_0x129e710;
T_0 ;
    %vpi_call 3 16 "$dumpfile", "multiplexer-dump.vcd";
    %vpi_call 3 17 "$dumpvars";
    %vpi_call 3 19 "$display", "A0 A1 i0 i1 i2 i3 | out ";
    %set/v v0x12d42b0_0, 0, 1;
    %set/v v0x12d4350_0, 0, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 0, 1;
    %set/v v0x12d4350_0, 0, 1;
    %set/v v0x12d4400_0, 0, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 0, 1;
    %set/v v0x12d4350_0, 1, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 25 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 0, 1;
    %set/v v0x12d4350_0, 1, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 0, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 27 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 1, 1;
    %set/v v0x12d4350_0, 0, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 29 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 1, 1;
    %set/v v0x12d4350_0, 0, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 0, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 31 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 1, 1;
    %set/v v0x12d4350_0, 1, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 33 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %set/v v0x12d42b0_0, 1, 1;
    %set/v v0x12d4350_0, 1, 1;
    %set/v v0x12d4400_0, 1, 1;
    %set/v v0x12d44b0_0, 1, 1;
    %set/v v0x12d4590_0, 1, 1;
    %set/v v0x12d4640_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 35 "$display", "%b  %b  %b  %b  %b  %b  | %b ", v0x12d42b0_0, v0x12d4350_0, v0x12d4400_0, v0x12d44b0_0, v0x12d4590_0, v0x12d4640_0, v0x12d46c0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
