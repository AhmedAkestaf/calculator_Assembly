***********************************************
Simple Calculator in x86 Assembly (DOS)
***********************************************

This program is a simple calculator written in x86 assembly to run under DOS. It can perform various mathematical operations, including addition, subtraction, multiplication, division, factorial calculation, exponentiation, arrangement, combination, and GCD.

*************************
User Guide
*************************

1. Running the Program:
   - Run the program on a compatible DOS environment.

2. Usage Instructions:
   - When the program starts, a menu of options will be displayed.
   - Select the desired operation by entering the corresponding number or associated character.

3. Entering Numbers:
   - Follow the instructions to enter the required numbers. Numbers should be entered as integer digits.

4. Displaying Results:
   - The results of the selected operations will be displayed on the screen.

5. Details of Procedures:
   - Each operation is implemented using a specific procedure in the source code. Here are details on some procedures:
   
     - **Addition:**
       - Procedure: `Addition`
       - Description: This procedure performs addition of two numbers entered by the user.

     - **Subtraction:**
       - Procedure: `Subtraction`
       - Description: This procedure performs subtraction of two numbers entered by the user.

     - **Multiplication:**
       - Procedure: `Multiplication`
       - Description: This procedure performs multiplication of two numbers entered by the user.

     - **Factorial:**
       - Procedure: `Factorial`
       - Description: This procedure calculates the factorial of a number entered by the user.

     - **Exponentiation:**
       - Procedure: `Exponentiation`
       - Description: This procedure calculates the exponentiation of a given number.

     - **Division:**
       - Procedure: `Division`
       - Description: This procedure performs division of two numbers entered by the user.

     - **Arrangement:**
       - Procedure: `Arrangement`
       - Description: This procedure calculates the arrangement of two numbers entered by the user.

     - **Combination:**
       - Procedure: `Combination`
       - Description: This procedure calculates the combination of two numbers entered by the user.

     - **GCD (Greatest Common Divisor):**
       - Procedure: `GCD`
       - Description: This procedure calculates the greatest common divisor of two numbers entered by the user.

    - Input and output procedures:
      - `Display_Number`: This procedure displays a number stored in DX using a base specified by CX.
      - `Display_Digit`: This procedure displays a single digit on the screen.
      - `Read_Number`: This procedure reads characters from the user until the Enter key is pressed.
      - `Form_Number`: This procedure iteratively forms a number from the digits entered by the user.

6. Important Notes:
   - Follow the on-screen instructions to avoid errors.
   - The program only supports integer numbers.
   - Ensure that the program runs in a windowed environment, not full screen, to avoid display issues.
   - For the factorial procedure and procedures that use factorial (e.g., arrangement, combination), large numbers as input values are not supported. Please enter a 
     number between 0 and 8 for them to function properly.

*************************
Author
*************************
Name: Ahmed Akestaf
Date: 24/12/2023 and 25/12/2023




***********************************************
Thank you for using the Simple Calculator!
***********************************************

