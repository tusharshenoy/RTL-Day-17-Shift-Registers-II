# RTL-Day-17-Shift-Registers-II
### Problem Statement: Implementing Shift Registers –Part II
#### 3. Parallel In Serial Out
#### 4. Parallel In Parallel Out

Using Structural Style of Implementation.

#### Theory:
#### Parallel IN Serial OUT
In the "Parallel IN Serial OUT" register, the data is entered in a parallel 
way, and the outcome comes serially. A four-bit "Parallel IN Serial 
OUT" register is designed below. The input of the flip flop is the output of 
the previous Flip Flop. The input and outputs are connected through the 
combinational circuit. Through this combinational circuit, the binary input 
B0, B1, B2, B3 are passed. The shift mode and the load mode are the two 
modes in which the "PISO" circuit works.
Load mode
The bits B0, B1, B2, and B3 are passed to the corresponding flip flops when 
the second, fourth, and sixth "AND" gates are active. These gates are active 
when the shift or load bar line set to 0. The binary inputs B0, B1, B2, and 
B3 will be loaded into the respective flip-flops when the edge of the clock 
is high. Thus, parallel loading occurs.
Shift mode
The second, fourth, and sixth gates are inactive when the load and shift line 
set to 0. So, we are not able to load data in a parallel way. At this time, the 
first, third, and fifth gates will be activated, and the shifting of the data will 
be left to the right bit. In this way, the "Parallel IN Serial OUT" operation 
occurs.

![image](https://github.com/tusharshenoy/RTL-Day-17-Shift-Registers-II/assets/107348474/a8bb4f46-ce5e-4a44-bdcd-0aa9bd6a1f40)


#### Simulation Output:

![image](https://github.com/tusharshenoy/RTL-Day-17-Shift-Registers-II/assets/107348474/ca06e196-7228-40b1-b030-e063e4e5e592)


#### Parallel IN Parallel OUT
In "Parallel IN Parallel OUT", the inputs and the outputs come in a parallel 
way in the register. The inputs B0, B1, B2, and B3, are directly passed to the 
data inputs D0, D1, D2, and D3 of the respective flip flop. The bits of the 
binary input is loaded to the flip flops when the Positive clock edge is 
applied. The clock pulse is required for loading all the bits. At the output 
side, the loaded bits appear.

![image](https://github.com/tusharshenoy/RTL-Day-17-Shift-Registers-II/assets/107348474/0814591a-ccb7-4d35-b0f9-95fda3f49956)



#### Simulation Output:
![image](https://github.com/tusharshenoy/RTL-Day-17-Shift-Registers-II/assets/107348474/883be1c7-85ef-45b8-8189-446d210d2ece)
