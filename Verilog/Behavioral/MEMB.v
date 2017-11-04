`timescale 1ns/100ps

module MEM (output reg [8:1] out, input [8:1] in, input [1:0] setting);

    // Variables for outputs from each black box module
        // varible to store output from black box 1
    wire [8:1] out1;

        // varible to store output from black box 2
    wire [8:1] out2;

        // varible to store output from black box 3
    wire [8:1] out3;

        // varible to store output from black box 4
    wire [8:1] out4;


    // Varible to store inputed ASCII character
    reg [8:1] inp;



    // Black box threads instantiated 
        // black box 1 (output: output bits from box1, input: inp bits from input to the machine)
    block1 box1 (out1, inp);
    
        // black box 1 (output: output bits from box2, input: inp bits from input to the machine)
    block2 box2 (out2, inp);

        // black box 1 (output: output bits from box3, input: inp bits from input to the machine)
    block3 box3 (out3, inp);

        // black box 1 (output: output bits from box4, input: inp bits from input to the machine)
    block4 box4 (out4, inp);
    


    // main thread for selection logic
    always @ (in) begin
        
        // stored input ASCII character in inp 
        inp = in;
        #1;
        case (setting)
            2'b00: begin out <= out1; end
            2'b01: begin out <= out2; end
            2'b10: begin out <= out3; end
            2'b11: begin out <= out4; end
        endcase
    end

endmodule

// Module depicting black box 1 functionality in circuit
module block1 (output reg [8:1] out, input [8:1] in);

    // this thread denotes the behavior of the black box by specifing the mapping choosen for this black box
    always @ (in) begin
        case (in)
            "A": begin out <= "O"; end
            "B": begin out <= "X"; end
            "C": begin out <= "Z"; end
            "D": begin out <= "W"; end
            "E": begin out <= "T"; end
            "F": begin out <= "J"; end
            "G": begin out <= "S"; end
            "H": begin out <= "U"; end
            "I": begin out <= "N"; end
            "J": begin out <= "F"; end
            "K": begin out <= "V"; end
            "L": begin out <= "Y"; end
            "M": begin out <= "R"; end
            "N": begin out <= "I"; end
            "O": begin out <= "A"; end
            "P": begin out <= "Q"; end
            "Q": begin out <= "P"; end
            "R": begin out <= "M"; end
            "S": begin out <= "G"; end
            "T": begin out <= "E"; end
            "U": begin out <= "H"; end
            "V": begin out <= "K"; end
            "W": begin out <= "D"; end
            "X": begin out <= "F"; end
            "Y": begin out <= "L"; end
            "Z": begin out <= "C"; end
        endcase
    end

endmodule

// Module depicting black box 2 functionality in circuit
module block2 (output reg [8:1] out, input [8:1] in);

    // this thread denotes the behavior of the black box by specifing the mapping choosen for this black box
    always @ (in) begin
        case (in)
            "A": begin out <= "X"; end
            "B": begin out <= "V"; end
            "C": begin out <= "D"; end
            "D": begin out <= "C"; end
            "E": begin out <= "S"; end
            "F": begin out <= "H"; end
            "G": begin out <= "O"; end
            "H": begin out <= "F"; end
            "I": begin out <= "Y"; end
            "J": begin out <= "T"; end
            "K": begin out <= "W"; end
            "L": begin out <= "Q"; end
            "M": begin out <= "R"; end
            "N": begin out <= "P"; end
            "O": begin out <= "G"; end
            "P": begin out <= "H"; end
            "Q": begin out <= "L"; end
            "R": begin out <= "M"; end
            "S": begin out <= "E"; end
            "T": begin out <= "J"; end
            "U": begin out <= "Z"; end
            "V": begin out <= "F"; end
            "W": begin out <= "K"; end
            "X": begin out <= "A"; end
            "Y": begin out <= "I"; end
            "Z": begin out <= "U"; end
        endcase
    end

endmodule

// Module depicting black box 3 functionality in circuit
module block3 (output reg [8:1] out, input [8:1] in);

    // this thread denotes the behavior of the black box by specifing the mapping choosen for this black box
    always @ (in) begin
        case (in)
            "A": begin out <= "R"; end
            "B": begin out <= "V"; end
            "C": begin out <= "H"; end
            "D": begin out <= "L"; end
            "E": begin out <= "J"; end
            "F": begin out <= "T"; end
            "G": begin out <= "O"; end
            "H": begin out <= "C"; end
            "I": begin out <= "Y"; end
            "J": begin out <= "E"; end
            "K": begin out <= "Q"; end
            "L": begin out <= "D"; end
            "M": begin out <= "Z"; end
            "N": begin out <= "U"; end
            "O": begin out <= "G"; end
            "P": begin out <= "W"; end
            "Q": begin out <= "K"; end
            "R": begin out <= "A"; end
            "S": begin out <= "X"; end
            "T": begin out <= "F"; end
            "U": begin out <= "N"; end
            "V": begin out <= "B"; end
            "W": begin out <= "P"; end
            "X": begin out <= "S"; end
            "Y": begin out <= "I"; end
            "Z": begin out <= "M"; end
        endcase
    end

endmodule

// Module depicting black box 4 functionality in circuit
module block4 (output reg [8:1] out, input [8:1] in);

    // this thread denotes the behavior of the black box by specifing the mapping choosen for this black box
    always @ (in) begin
        case (in)
            "A": begin out <= "F"; end
            "B": begin out <= "Y"; end
            "C": begin out <= "M"; end
            "D": begin out <= "S"; end
            "E": begin out <= "J"; end
            "F": begin out <= "A"; end
            "G": begin out <= "N"; end
            "H": begin out <= "R"; end
            "I": begin out <= "V"; end
            "J": begin out <= "E"; end
            "K": begin out <= "T"; end
            "L": begin out <= "Q"; end
            "M": begin out <= "C"; end
            "N": begin out <= "G"; end
            "O": begin out <= "X"; end
            "P": begin out <= "U"; end
            "Q": begin out <= "L"; end
            "R": begin out <= "H"; end
            "S": begin out <= "D"; end
            "T": begin out <= "K"; end
            "U": begin out <= "P"; end
            "V": begin out <= "I"; end
            "W": begin out <= "Z"; end
            "X": begin out <= "O"; end
            "Y": begin out <= "B"; end
            "Z": begin out <= "W"; end
        endcase
    end

endmodule