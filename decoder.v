// Decoder circuit
`define AND and #50
`define OR or #50
`define XOR xor #50
`define NOT not #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Your decoder code here
    wire nA0;
    wire nA1;
    wire nA0andnA1;
    wire nA0andA1;
    wire A0andnA1;
    wire A0andA1;
    
    `NOT A0inv(nA0, address0);
    `NOT A1inv(nA1, address1);
    `AND andgate(nA0andnA1, nA0, nA1);
    `AND andgate(nA0andA1, nA0, address1);
    `AND andgate(A0andnA1, address0, nA1);
    `AND andgate(A0andA1, address0, address1);

    `AND andgate(out0, nA0andnA1, enable);
    `AND andgate(out1, A0andnA1, enable);
    `AND andgate(out2, nA0andA1, enable);
    `AND andgate(out3, A0andA1, enable);
endmodule

