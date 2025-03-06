# Task 1
## what is PHP
PHP is an acronym for "PHP: Hypertext Preprocessor", a widely-used, open source scripting language. PHP scripts are executed on the server.

## what r the three main error types in PHP
- Parse error or Syntax Error: It is the type of error done by the programmer in the source code of the program. The syntax error is caught by the compiler.
- Fatal Error: It is the type of error where PHP compiler understand the PHP code but it recognizes an undeclared function. This means that function is called without the definition of function.
- Warning Errors : The main reason of warning errors are including a missing file. This means that the PHP function call the missing file.
- Notice Error: It is similar to warning error. It means that the program contains something wrong but it allows the execution of script.

## echo vs print
The differences are small:
- echo has no return value while print has a return value of 1 so it can be used in expressions.
- echo can take multiple parameters (although such usage is rare) while print can take one argument.
- echo is marginally faster than print.

## sensitivity in PHP
PHP is partially case-sensitive.
PHP constructs, function names, class names are case-insensitive, whereas variables are case-sensitive.

# Task 2
## programming language vs scripting language.
Scripting languages do not require the compilation step and are rather interpreted.They are used for smaller tasks, whereas programming languages help build large and complex software applications.
### Applications of Scripting Languages: 
- To automate certain tasks in a program 
- Extracting information from a data set 
- Less code intensive as compared to traditional programming languages  
### Applications of Programming Languages :
- They typically run inside a parent program like scripts
- More compatible while integrating code with mathematical models
- Languages like JAVA can be compiled and then used on any platform

## dynamically typed vs statically typed language.
In a statically typed language, data types are defined during compile time and cannot change during runtime. This behavior is because of static type checking. In contrast, dynamic typing allows variables to change their data type during runtime.

## Assign by Value VS Assign by Reference.
Assigning by value means copying existing variables to a new location in memory, both variables are independent and don't affect eachother.
Assigning by refernce doesn't copy the value, instead it uses pointers. the new variable references the same variable. changing one of them affects the other. 

# Task 3
## What is the difference between for and foreach loop in PHP?
| for loop   | foreach loop  |
|---|---|
|The iteration is clearly visible. The block of code is repeated as long as the condition is met or the counter meets a specific value.    |  The iteration is hidden. The block of code is repeated until iterating over the array is completed. |
| Good performance.  |  Better performance. |
|  The stop condition is specified easily. |  The stop condition has to be explicitly specified. |
| Upon working with collections, it needs the usage of the count() function.   |  It can simply work without the usage of the count() method.  |

# Task 4
## Sessions vs. Cookies.
The key difference between sessions and cookies is that sessions are saved on the server side while cookies are saved on the client side. Cookies are small text files used to store user information on the user's computer. Sessions are used to store user information on the user's server side.

## Error Handling in PHP.
Ways to handle PHP Errors:  
- Using die() method : print a message and exit from current script: die("File is not present");
- Custom Error Handling : Creating a custom error handler in PHP is quite simple. Create a function that can be called when a error has been occurred in PHP.

## How PHP Executes Code.
In PHP, code execution is linear, and the compiling is carried out as well as the executing in cycles per line of a script. Yet, to enhance this flow, PHP uses caching such as opcode caching, which is the set of compiled byte codes that are necessary to run the matter faster in following requests.
An Opcode is a full PHP VM instruction, that may or may not have operands. These structures contain a simple and single unit of execution, and there is a finite set of such OPCodes.


# References
- [W3 Schools](https://www.w3schools.com/php/php_intro.asp)
- [Geeks for Geeks](https://www.geeksforgeeks.org/what-is-the-difference-between-for-and-foreach-loop-in-php/)