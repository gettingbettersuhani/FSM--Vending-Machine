`timescale 1ns / 1ps

module tb_1;

reg clk=0,reset;
reg[1:0] coin;
wire dispense;

Design_1 uut(.clk(clk), .reset(reset), .coin(coin), .dispense(dispense));
always #5 clk=~clk;

initial begin
    $monitor("Time=%0t coin=%b dispense=%b", $time, coin, dispense);

    reset=1; #10;
    reset=0;
    coin=2'b01; #10; // 5
    coin=2'b01; #10; // 10 → dispense
    coin=2'b10; #10; // direct 10 → dispense
    coin=2'b00; #20;

    #50 $finish;
end 

endmodule


