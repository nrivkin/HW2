// Multiplexer circuit
`define AND and #50
`define OR or #50
`define XOR xor #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    wire nA0;
    wire nA1;
    wire nA1andnA0;
    wire nA1andA0;
    wire A1andnA0;
    wire A1andA0;
    wire o0;
    wire o1;
    wire o2;
    wire o3;

    `NOT notgate(nA0, address0);
    `NOT notgate(nA1, address1);
    `AND andgate(nA1andnA0, nA1, nA0);
    `AND andgate(nA1andA0, nA1, address0);
    `AND andgate(A1andnA0, address1, nA0);
    `AND andgate(A1andA0, address1, address0);

    `AND andgate(o0, in0, nA1andnA0);   
    `AND andgate(o2, in2, A1andnA0);   
    `AND andgate(o1, in1, nA1andA0);   
    `AND andgate(o3, in3, A1andA0);

    `OR orgate(out, o0, o1, o2, o3);
endmodule

