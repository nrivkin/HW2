// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
        // Your test code here

        $dumpfile("adder-dump.vcd");
        $dumpvars();
	
	$display("A B Cin | Sum Cout");
	a=0;b=0;carryin=0; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=0;b=0;carryin=1; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=0;b=1;carryin=0; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=0;b=1;carryin=1; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=1;b=0;carryin=0; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=1;b=0;carryin=1; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=1;b=1;carryin=0; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
	a=1;b=1;carryin=1; #1000
	$display("%b %b %b   |  %b %b", a, b, carryin, sum, carryout);
    end
endmodule

//    //structuralDecoder decoder (out0,out1,out2,out3,addr0,addr1,enable); // Swap after testing
//
//    initial begin
//    $display("En A0 A1| O0 O1 O2 O3 | Expected Output");
//    enable=0;addr0=0;addr1=0; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=0;addr0=1;addr1=0; #1000
//    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=0;addr0=0;addr1=1; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=0;addr0=1;addr1=1; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=1;addr0=0;addr1=0; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | O0 Only", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=1;addr0=1;addr1=0; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | O1 Only", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=1;addr0=0;addr1=1; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | O2 Only", enable, addr0, addr1, out0, out1, out2, out3);
//    enable=1;addr0=1;addr1=1; #1000 
//    $display("%b  %b  %b |  %b  %b  %b  %b | O3 Only", enable, addr0, addr1, out0, out1, out2, out3);
 
