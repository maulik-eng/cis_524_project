# Binary Search Contact Book Example

## Introduction
This repository contains two implementations of a binary search algorithm used to search for a contact by name in a sorted phone book. The program is written in two different languages: Python and Haskell.

## Languages and Tools
--> **Python**: The Python program is implemented using Python 3.8+.
  - You can write and run the Python program using **Visual Studio Code (VS Code)**.
  - To get started with Python in VS Code:
    1. Install **Python** from https://www.python.org/downloads/.
    2. Install **Visual Studio Code** from https://code.visualstudio.com/Download.
    3. Install the **Python extension** for VS Code (search for "Python" in the Extensions marketplace inside VS Code).
  
--> **Haskell**
   -The Haskell implementations use the functional programming paradigm to perform binary search in a contact book.
   -You can write and run the Haskell programs using Tutorialspoint's Online Haskell Compiler:Access it at Tutorialspoint Haskell Compiler.

	
## Code Structure
Both programs follow the same structure:
1. A "binary search function" that searches for a contact in a sorted contact book.
2. A real-time example where the user is prompted to search for a contact.

## Comparison Between Haskell and Python Implementations
1. Data Handling
- Haskell: Uses immutable data structures. Sorting and binary search do not modify the original list but return new values or states.
- Python: Uses mutable data structures. The phone book remains unaltered, but Python's inherent mutability allows modifications if needed.
2. Functional vs. Imperative Paradigm
- Haskell: Purely functional, emphasizes recursion and immutability. Binary search is implemented using recursion, and sorting is a standalone, side-effect-free function.
- Python: Imperative and procedural. Binary search relies on looping constructs, and mutable structures facilitate direct in-place modifications if necessary.
3. Parameter Passing Techniques
- Haskell: Parameters are passed by value. Due to immutability, any changes result in a new value rather than altering the original input.
- Python: Pass-by-object-reference (mutable objects like lists can be modified).
4. Scoping
- Haskell: Scoping is tied to function definitions and where or let bindings, with local variables existing only within their enclosing function or block.
- Python: Block-level scoping, with variables defined at a function or module level persisting across their defined blocks.

-> The primary distinction between these two binary search implementations is that Python uses the imperative paradigm, which uses mutable data structures and a loop to iteratively update the search boundaries and locate the contact, while Haskell follows the functional programming paradigm, which emphasizes immutability and recursion for traversing the list and reducing the search range.
  
## Running the Programs
1. Clone or download this repository.
2. Run the Haskell program using Tutorialspoint's Online Haskell Compiler:Copy and paste the code into the Tutorialspoint Haskell Compiler.
Click Execute to run the program.
3. Ensure you have Python 3.x and Java JDK installed in VS Code set up.
4. Open python or java file in vs code and and press `Ctrl + F5` or use the integrated terminal after that follow below step to run the program:-
   	- For Python :- python3 Binary_serch_for_phonebook.py
