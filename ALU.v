typedef enum logic [3:0] {
    ALU_ADD  = 4'b0000,
    ALU_SUB  = 4'b0001,
    ALU_AND  = 4'b0010,
    ALU_OR   = 4'b0011,
    ALU_XOR  = 4'b0100,
    ALU_SLT  = 4'b0101   // "set less than": result = 1 if a < b (signed), else 0
} alu_op_e;
 
module alu (
    input  logic [31:0] a,        // first operand (usually rs1 value)
    input  logic [31:0] b,        // second operand (rs2 value OR an immediate)
    input  alu_op_e      alu_op,   // which operation to perform
    output logic [31:0] result,   // the answer
    output logic         zero      // 1 if result == 0 - used later for branch decisions
);
 
module alu (
    input  logic [31:0] a,        // first operand (usually rs1 value)
    input  logic [31:0] b,        // second operand (rs2 value OR an immediate)
    input  alu_op_e      alu_op,   // which operation to perform
    output logic [31:0] result,   // the answer
    output logic         zero      // 1 if result == 0 - used later for branch decisions
);
 
    assign zero = (result == 32'b0);
 
endmodule
