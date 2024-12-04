# Binary Search Contact Book Example

## Introduction
This repository contains two implementations of a binary search algorithm used to search for a contact by name in a sorted phone book. The program is written in two different languages: Python and Java.

## Languages and Tools
--> **Python**: The Python program is implemented using Python 3.8+.
  - You can write and run the Python program using **Visual Studio Code (VS Code)**.
  - To get started with Python in VS Code:
    1. Install **Python** from https://www.python.org/downloads/.
    2. Install **Visual Studio Code** from https://code.visualstudio.com/Download.
    3. Install the **Python extension** for VS Code (search for "Python" in the Extensions marketplace inside VS Code).
  
--> **Java**: The Java program is implemented using Java 8+.
   - To get started with Java in VS Code:
	    1. Install **Java Development Kit (JDK)** from https://www.oracle.com/java/technologies/javase-jdk11-downloads.html.
	    2. Install **Visual Studio Code** from https://code.visualstudio.com/Download.
	    3. Install the **Java Extension Pack** for VS Code (search for "Java Extension Pack" in the Extensions marketplace inside VS Code).
	
## Code Structure
Both programs follow the same structure:
1. A "binary search function" that searches for a contact in a sorted contact book.
2. A real-time example where the user is prompted to search for a contact.

### Python Code
- The Python program is structured with a function `binary_search` that performs the binary search on a sorted list of tuples.
- The `phone_book_search` function takes user input and performs the search.

### Java Code
- The Java program is structured with a `binarySearch` method that performs the binary search on a sorted 2D array.
- The `contactBookSearch` method prompts the user to input a contact name and performs the search.

## Major Differences Between Python and Java
1. **Typing System**:
   - Python is dynamically typed, meaning variable types are inferred at runtime.
   - Java is statically typed, meaning variable types must be explicitly defined at compile time.

2. **Syntax**:
   - Python has a more concise and readable syntax, without the need for explicitly defining data types or requiring a class for execution.
   - Java requires a class and a `main` method to run the program. It also requires explicit type declarations for all variables.

3. **Function Declaration**:
   - In Python, function signatures are simple and flexible.
   - In Java, function signatures are more formal, requiring type definitions for both parameters and return types.

4. **Data Structures**:
   - Python uses lists (e.g., `list of tuples`), which are more flexible and easy to work with.
   - Java uses arrays (e.g., `String[][]`), which are less flexible but offer performance benefits in certain situations.
  
## Running the Programs
1. Clone or download this repository.
2. Ensure you have Python 3.x and Java JDK installed in VS Code set up.
3. Open python or java file in vs code and and press `Ctrl + F5` or use the integrated terminal after that follow below step to run the program:-
   	- For Python :- python3 Binary_serch_for_phonebook.py
   	- For Java :-
   		- To compile: `javac contact_booksearch.java`
	        - To run: `java contact_booksearch`
   	
