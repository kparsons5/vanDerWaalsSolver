# vanDerWaalsSolver
This code solves the Van der Waals equation for specific volume of non-ideal gases. 
This code will also solve for the a and b constants included in the equation and will use those in the calculation(basically, they do not need to be provided). 
QUICK NSTRUCTIONS: 
1. input temperature and pressure of conditions, selecting proper units from the dropdown menu
2. input critical temperature and pressure for the species of gas. 
3. select "Convert Units". this will convert the inputs to the proper SI units required to solve the equation. the converted units will appear on the left of the input boxes. 
4. Select the new button that pops up, "Solve". The solution (specific volume) will pop up below the converted units. 
**An error occurs if either pressure or critical pressure are entered in as zeroes.**

PAPER:
Khloe Parsons, partner Taylor Adams
Approved by: Laurel Hilger

The idea for this project came from my chemical engineering class. In Chemical engineering, we learned how to solve for various quantities relating to non-ideal gases using the Van der Waals (VDW) equation. The equation looks like this: P = [RT/(V-b)] – [a/V^2] where V represents specific volume and a and b are corrective terms. The ‘a’ variable accounts for the attractive forces between molecules of the gas species and ‘b’ corrects for the volume occupied by the molecules themselves. A and B are very useful to us in this equation because they have a unique value for every species of gas. A and B can be calculated by a = 27*R^2*Tc^2 /(64*Pc) and b = (R*Tc)/(8*Pc). Tc and Pc are the critical temperature and pressure of the species, respectively. R is the gas constant. From the Van der Waals equation, one can solve for pressure or temperature relatively easily, with some pretty basic algebra and moving some variables around. The issue arises when one must solve for specific volume. Expanding the equation yields a nasty trinomial that is difficult to solve and therefore is the perfect job for coding software. In fact, the chemical engineering students used MATLAB when we had to solve for specific volume on our most recent exam. For my project, I wanted to expand on this and create a more user-friendly and incredibly useful calculator that solves for the specific volume in the Van der Waals equation. 
	In order to solve for specific volume, a few initial conditions need to be met. The user must input a non-zero pressure value as well as the correct units to be able to solve. (there is a modal msgbox() error that appears if a zero value is assigned to either critical pressure or pressure of conditions.) The correct units need pressure of conditions and critical pressure in Pascals, and temperature needs to be in Kelvin. Then the gas constant must be R = 8.314 J/mol*K when using Pa and K units. However, using my calculator, the user does not need to convert units before they are input into the calculator.  The user has the option to input temperature in either Celsius or Kelvin, and the pressure in either Atmospheres or Pascals. The user will input the pressure/temperature values and select the units they are in from a dropdown menu located to the right of the input box. The first callback function, triggered by the “Convert Units” button will analyze the input and convert the units if need be. The “Convert Units” button then disappears, and the converted units pop up in the empty space to the right. The “Solve” button then appears in the same location as the “convert units” button, and the second callback function is triggered. The code then solves for specific volume and displays the output under the converted units. Using this calculator yields a highly accurate value for specific volume, because when all the steps are performed by the software, rounding errors are eliminated. I even tested this calculator with a problem I previously solved in class to make sure it was accurate, and it is. 
The first part of writing the code went much smoother than expected. In this I set up the GUI, text, dropdown menus, and all the user input boxes. This was written with minimal hiccups and when I was satisfied with the interface, I moved on to the second chunk of the project. In the second section I wrote the code that reads the user input, determines the unit of the value, and converts it to the correct unit if it needs to. If not, the value remains the same.  An issue arose when I was attempting to figure out how to take the user input and use it in the function. This took me a while to figure out, but Mathworks proved very helpful. I felt really dumb when it took me over an hour to figure out why it still wasn’t working, only to notice I was testing the wrong user input box the entire time. Once I regained my intelligence it was smooth sailing. At the end of the second section, I wrote the code that turns the converted units into global variables to be used in the second callback function. Included here is the line of code that makes the “Converted Units” button disappear and the “Solve” button appear in its place. Now it was time to write the third part of the code, the one that actually solves for specific volume. This was actually a very simple section to write. I wrote the formulas that take the critical pressure and temperature inputs and solves for the ‘a’ and ‘b’ constants. Now it was time to write the code that solves for the roots of the trinomial given the matrix of the constants. The expanded Van der Waals equation looks like this: (P*V^3) – V^2 (Pb+RT) + aV -ab = 0. I set up a matrix that has A = -1*a*b, B = a, C = -1*(Pb+RT), D = P and assigns that to an arbitrary variable Y. (Y = [D,C,B,A])The equation is then solved by using X = roots(Y) to solve for the roots of the trinomial. However, as many know, when solving for roots of a polynomial, there are multiple answers. Solving a trinomial yields 3 solutions, 2 of which are imaginary or unusable. The next line of code (x = X(1)) assigns the correct answer to variable ‘x’ by assigning it to the first index of the X=roots(Y) line of code. The last lines of code simply display the output, which I was able to accomplish by assigning an sprintf() string to a variable, then calling that variable using a uicontrol() function. Overall, I am very proud of this calculator and the work I have put forth on this project. I didn’t know I was capable of creating something so useful and complex. In fact, I plan to use it when I need to do Van der Waals equations in class. I can see myself creating more of these in my spare time to do most of my calculation work for me, and using GUIs to make it more user friendly and intuitive! Getting a chemical engineering degree would be super easy at that point!!

