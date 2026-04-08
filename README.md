Vending Machine Controller using FSM (Verilog HDL)
📌 Project Overview

This project implements a Vending Machine Controller using a Finite State Machine (FSM) in Verilog HDL.

The system simulates a real-world vending machine that accepts coins, processes user input, and dispenses products along with change if required.

It demonstrates how FSM-based design can be used to model sequential control systems in digital hardware.

⚙️ Features

FSM-based control for vending machine operations
Handles coin insertion and product selection
Supports product dispensing and change return
Structured and predictable sequential design
Fully verified through simulation


🧠 Design Approach

FSM States
Idle → Waiting for user input
Money Insert → Accepting coins
Check Balance → Verifying sufficient amount
Dispense Product → Delivering selected item
Return Change → Returning excess money
FSM Type
Implemented using a Moore FSM
Outputs depend only on the current state
Operation Flow
User inserts coins
System checks if sufficient balance is available
If yes → product is dispensed
If excess amount → change is returned
System returns to Idle state


💡 Technical Insight

FSM allows clear separation of system behavior into states, simplifying complex logic
Moore FSM ensures stable outputs without glitches
Proper state design improves scalability and readability


🧪 Verification

Designed a testbench covering multiple scenarios
Tested different coin combinations and edge cases
Verified correct behavior using waveform simulation in Vivado


🛠 Tools Used
Verilog HDL
Xilinx Vivado (Simulation & Synthesis)


🎯 Learning Outcomes
Strong understanding of FSM-based system design
Hands-on experience with sequential control logic
Ability to model real-world systems in RTL
Improved debugging and verification skills


🚀 Future Improvements
Support for multiple products with different prices
Add display interface (7-segment/LCD)
FPGA hardware implementation
Optimize FSM for better performance and fewer states
