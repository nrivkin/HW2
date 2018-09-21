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

    `XOR xorgate(AxorB, a, b);
    `XOR xorgate(sum, AxorB, carryin);
    `AND andgate(AandB, a, b);
    `AND andgate(AandC, a, carryin);
    `AND andgate(BandC, b, carryin);
    `OR orgate(carryout, AandB, AandC, BandC);
endmodule
