# Vending-Machine-Lab9-
Design a new FSM that augments the vending machine by allowing the user to choose gum or candy or soda. Gum costs $.30, candy costs $.25, and soda costs $.35. The machine does not give change. Also, the machine accepts nickels, dimes, and quarters.

Introduction to Digital Systems Laboratory

Divide the clock to 1Hz and use as the clock for the following: 
Lab 9 

Part 1: 
Create a FSM that will implement the vending machine specified in part 3 of the prelab. 
1.	There should be separate outputs indicating whether candy or gum or soda is dispensed. These outputs should only turn on if they have enough money and have made a selection.
2.	The amount of money entered should be indicated on the LEDs.
3.	If the user has entered money and has made a selection, and if the amount of money that they have inputted is not enough, an output should indicate that they do not have enough funds.
4.	There should be a reset button. Once the reset button is pressed it will return initial state.
5.	The clock input to the FSM should be the clock divider, as before.
Part 2:
Augment the FSM from part one to include the following:
1.	There should be a refund button. Once the refund button is pressed the number of refunded nickels will be displayed on the 7 Segment Display, and there is another output that indicates that this is being refunded. The system should go back to the reset state since they no longer have any money in the machine.

