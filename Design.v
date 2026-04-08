`timescale 1ns / 1ps

module Design_1(input clk, input reset, input [1:0] coin, output reg dispense);

  parameter s0 = 2'b00,
    s5 = 2'b01,
    s10 = 2'b10;
  
  reg [1:0] state,next_state;
  
  always @(posedge clk or posedge reset) begin
    if(reset)
    state <= s0;
    else
    state <= next_state;
    end 
  
  always @(*) begin
  
    case(state)
    s0:
    if(coin == 2'b01) next_state = s5;
    else if(coin == 2'b10) next_state = s10;
    else next_state = s0;
    
      s5:
    if(coin == 2'b01) next_state = s10;
    else if(coin == 2'b10) next_state = s10;
    else next_state = s5;
    
      s10:
    next_state = s0;
    
      default:
    next_state = s0;
    endcase 
  end 

  always @(*) begin
    dispense = (state == s10);
    end 
    endmodule
