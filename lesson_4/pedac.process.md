# The PEDAC Process

## P: Understanding the Problme

# - Establish the rules/ define the boundaries of the problem
#   - Assess all available information about a problem
#   - Restate Explicit (Clearly stated)
#   - Identify Implicit (Not clearly stated, can be extrapolated through test
#      cases..)
# - Spend enough time. Don't rush this step.


**General Example**

#   Given a string, produce a new string with every other word removed
#   
#   - Explicit requirements:
#     - Input: string
#     - Output: new string
#     - Remove very other word from input string
#   
#   
#   - Questions:
#     - What do we mean by every other word? (even words, other odd words?)
#     - How do we define a word in this context?
#       - Words are delimited by spaces
  


## E: Examine and Test Cases

# - Can confirm/ refute assumptions
# - Help to answer questions about implicit requirements
# - Act as assertions which help to codify the rules and boundaries


## D: Data Structures

- Help to reason with data logically
- Help interact with data at implementation level
- Thinking in terms of data structures is part of problem solving process
- Data structures is closely linked to algorithm
  - Set of steps from input to output
    - Involves structuring data in a certain wayS

## A: Algorithms

 A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to structure data to produce the required output
- Stay abstract/ high level
  - Avoid implementation detail
  - Don't worry about efficiency for now

## C: Implementing a solution in Code

- Translating solution algorithm to code
- Think about algorithm in context of programming language
  - Language features and constraints
  - Characteristics of data structures
  - Built in functions/ methods
  - Syntax and coding patterns
- Create test cases
- Code with intent



**Sum Even Number Rows - Assignment**

   Imagine a sequence of consecutive integers beginning with 2. The ingegers
   are grouped in rows, with the first row containing one integer, the second
   two integers, the third row, three integers, and so on. Given an integer
   representing the number of a particular row, return an integer 
   representin the sum of all integers in that row.
   
   **Rules/ requirements - P** 

     - Sequence of integers
     - Sequence begins with two
     - Integers are consecutive
     - Sequence is grouped into rows
     - Each row is incrementally larger: 1, 2, 3, ...
     - Row 'number' equals the number of elements in the rows.
       - Row 1 has 1 element, row 2 has 2 elements, ...
     - Input: a single integer
       - Identifies a 'row', which is a subset of a sequence of integers
     - Output: a single integer
       - The sum of the integer in the row identified by the input integer.


  - Sequence:
  2, 4, 6, 8, 10, 12, 14, 16, 18, 20, ...

  2
  4, 6
  8, 10, 12,
  14, 16, 18, 20
  ....

  - How do we create the structure?
end

**Examples & Test Cases - E**

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10
14, 16, 18, 20 --> 68


**Data Structure - D**

- Overall structure representing sequence as a whole
- Individual rows within overall structure
- Individual rows in a set order in context of sequence 
- Individual rows contain integers
- Can assume that integers are in a set order in the context of the sequence


[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ....
]

**Algorithm**

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the neccessary rows have been created
  # A.  All rows have been created when the length of the 'rows' array is equal to the input integer

4. Sum the final row
5. return the sum


**Problem: Create a row**

Rules:
- Row is an array
- Array contains integers
- Integers are consececutive even numbers
- Integers in each row form part of an overall larger sequence
- Rows are of different lengths
  -Input: the information needed to create the output
    - the starting integer
    - Length of the row
  -Output: the row itself: `[8, 10, 12]`

Examples: 
  start: 2, length: 1 --> [2]
  start: 4, length: 2 --> [4, 6]
  start: 8, length: 3 --> [8, 10, 12]

Data Structures: 
  - An array of integers

Algorithm: 
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 and 3 untl the array has reached the correct length
5. Return the 'row' array

## Final Thoughts

- Not a completely linear process
- Be prepared to move back and forward between the steps
- Switch from implementation mode back to abstract problem solving mode when neccessary
- Don't try to problem solve at the coding level