// Adder circuit
`define AND and #50
`define OR or #50
`define XOR xor #50
`define NOT not #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Your adder code here
    wire AxorB;
    wire AandB;
    wire AandC;
    wire BandC;

    xor xorgate(AxorB, a, b);
    xor xorgate(sum, AxorB, carryin);
    and andgate(AandB, a, b);
    and andgate(AandC, a, carryin);
    and andgate(BandC, b, carryin);
    or orgate(carryout, AandB, AandC, BandC);
endmodule
