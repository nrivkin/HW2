#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xcc1540 .scope module, "behavioralDecoder" "behavioralDecoder" 2 7;
 .timescale -9 -12;
v0xccd280_0 .net *"_s11", 3 0, L_0xcece40; 1 drivers
v0xceb1b0_0 .net *"_s5", 3 0, L_0xcecb90; 1 drivers
v0xceb250_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0xceb2f0_0 .net *"_s9", 1 0, L_0xcecd00; 1 drivers
v0xceb3a0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0xceb440_0 .net "address1", 0 0, C4<z>; 0 drivers
v0xceb520_0 .net "enable", 0 0, C4<z>; 0 drivers
v0xceb5c0_0 .net "out0", 0 0, L_0xceca00; 1 drivers
v0xceb6b0_0 .net "out1", 0 0, L_0xcec960; 1 drivers
v0xceb750_0 .net "out2", 0 0, L_0xcec890; 1 drivers
v0xceb850_0 .net "out3", 0 0, L_0xcec790; 1 drivers
L_0xcec790 .part L_0xcece40, 3, 1;
L_0xcec890 .part L_0xcece40, 2, 1;
L_0xcec960 .part L_0xcece40, 1, 1;
L_0xceca00 .part L_0xcece40, 0, 1;
L_0xcecb90 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0xcecd00 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0xcece40 .shift/l 4, L_0xcecb90, L_0xcecd00;
S_0xccaf40 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0xcec2d0_0 .var "addr0", 0 0;
v0xcec370_0 .var "addr1", 0 0;
v0xcec420_0 .var "enable", 0 0;
v0xcec4d0_0 .net "out0", 0 0, L_0xced400; 1 drivers
v0xcec5b0_0 .net "out1", 0 0, L_0xced4b0; 1 drivers
v0xcec660_0 .net "out2", 0 0, L_0xced600; 1 drivers
v0xcec6e0_0 .net "out3", 0 0, L_0xced790; 1 drivers
S_0xceb8f0 .scope module, "decoder" "structuralDecoder" 3 11, 2 18, S_0xccaf40;
 .timescale -9 -12;
L_0xcec000 .functor NOT 1, v0xcec2d0_0, C4<0>, C4<0>, C4<0>;
L_0xcecfd0 .functor NOT 1, v0xcec370_0, C4<0>, C4<0>, C4<0>;
L_0xced080 .functor AND 1, L_0xcec000, L_0xcecfd0, C4<1>, C4<1>;
L_0xced180 .functor AND 1, L_0xcec000, v0xcec370_0, C4<1>, C4<1>;
L_0xced1e0 .functor AND 1, v0xcec2d0_0, L_0xcecfd0, C4<1>, C4<1>;
L_0xced240 .functor AND 1, v0xcec2d0_0, v0xcec370_0, C4<1>, C4<1>;
L_0xced400 .functor AND 1, L_0xced080, v0xcec420_0, C4<1>, C4<1>;
L_0xced4b0 .functor AND 1, L_0xced1e0, v0xcec420_0, C4<1>, C4<1>;
L_0xced600 .functor AND 1, L_0xced180, v0xcec420_0, C4<1>, C4<1>;
L_0xced790 .functor AND 1, L_0xced240, v0xcec420_0, C4<1>, C4<1>;
v0xceb9e0_0 .net "A0andA1", 0 0, L_0xced240; 1 drivers
v0xcebaa0_0 .net "A0andnA1", 0 0, L_0xced1e0; 1 drivers
v0xcebb40_0 .net "address0", 0 0, v0xcec2d0_0; 1 drivers
v0xcebbe0_0 .net "address1", 0 0, v0xcec370_0; 1 drivers
v0xcebc60_0 .net "enable", 0 0, v0xcec420_0; 1 drivers
v0xcebd00_0 .net "nA0", 0 0, L_0xcec000; 1 drivers
v0xcebda0_0 .net "nA0andA1", 0 0, L_0xced180; 1 drivers
v0xcebe40_0 .net "nA0andnA1", 0 0, L_0xced080; 1 drivers
v0xcebee0_0 .net "nA1", 0 0, L_0xcecfd0; 1 drivers
v0xcebf80_0 .alias "out0", 0 0, v0xcec4d0_0;
v0xcec080_0 .alias "out1", 0 0, v0xcec5b0_0;
v0xcec120_0 .alias "out2", 0 0, v0xcec660_0;
v0xcec230_0 .alias "out3", 0 0, v0xcec6e0_0;
    .scope S_0xccaf40;
T_0 ;
    %vpi_call 3 14 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %set/v v0xcec420_0, 0, 1;
    %set/v v0xcec2d0_0, 0, 1;
    %set/v v0xcec370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 0, 1;
    %set/v v0xcec2d0_0, 1, 1;
    %set/v v0xcec370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 0, 1;
    %set/v v0xcec2d0_0, 0, 1;
    %set/v v0xcec370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 0, 1;
    %set/v v0xcec2d0_0, 1, 1;
    %set/v v0xcec370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 1, 1;
    %set/v v0xcec2d0_0, 0, 1;
    %set/v v0xcec370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 1, 1;
    %set/v v0xcec2d0_0, 1, 1;
    %set/v v0xcec370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 1, 1;
    %set/v v0xcec2d0_0, 0, 1;
    %set/v v0xcec370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %set/v v0xcec420_0, 1, 1;
    %set/v v0xcec2d0_0, 1, 1;
    %set/v v0xcec370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0xcec420_0, v0xcec2d0_0, v0xcec370_0, v0xcec4d0_0, v0xcec5b0_0, v0xcec660_0, v0xcec6e0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
