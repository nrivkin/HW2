// My Adder circuit

module FullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
    wire AandB,
    wire AandC,
    wire BandC,
    wire AandBandC,
    wire AorBorC,
    wire twoOfABC,
    wire AnyandNTwo,
    wire AllorOne,
    wire AllorTwo 
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
endmodule
