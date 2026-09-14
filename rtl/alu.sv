module alu (
    input logic [7:0] A,
    input logic [7:0] B,
    input logic [2:0] OP,
    output logic [7:0] Y
);

always_comb begin
    case (OP)
        3'b000: Y = A + B;
        3'b001: Y = A - B;
        3'b010: Y = A & B;
        3'b011: Y = A | B;
        3'b100: Y = A ^ B;
        3'b101: Y = (A < B);
        default: Y = 8'b0;
    endcase
end

endmodule
