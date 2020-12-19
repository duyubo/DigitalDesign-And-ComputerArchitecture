# Lab3: Verilog for Combinatorial Circuits
* Truth table :
 <img src="https://github.com/duyubo/DigitalDesign-computerArchitecture/blob/main/lab3/images/TruthTable.png" width="400" height="800" />

* Top-level schematic:
<img src="https://github.com/duyubo/DigitalDesign-computerArchitecture/blob/main/lab3/images/toplayer.png" width="400" height="400" />

The Adder adds A and B with the result saved in S. The most significant bit S[4] connnects to the overflow port and s[3:0] is put in the Decoder. The Decoder maps this 4 bit binary number to a 7-segment represented hexidecimal number (LED number on the board). The Decoder2_4 maps a 2 bit binary number to a 4 bit binary number which only has at most one bit set as 1 (chooses which LED to be lighted on). 
