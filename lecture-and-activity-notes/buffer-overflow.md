# Buffer Overflow

## Lecture Notes: Buffer Overflow Vulnerabilities

### Program Memory

* when you assign variables in a program, there are spaces in memory allocated for those values
* if you're saving a string (which is an array of characters) that is a password, it is saved character-by-character in the memory
  * additional variables would be most likely saved in the next space in memory
  * if the inputted string is longer than the space allocated it, it will keep overwriting the additional variables
  * ex. if the next variable is a boolean value determining whether or not the inputted string and the saved password match and the next variable is overwritten with a 1, then the authentication is bypassed

### Buffer Overflow

* what is a buffer?
  * memory used to store data temporarily while it's being moved from one area to another
* what is buffer overflow?
  * when a program attempts to put more data in a buffer than it can hold or when a program attempts to put data in a memory area past a buffer
* heap buffer overflow
  * heap: region of a process's memory that stores dynamic variables that are globally accessible
  * memory allocated must be cleared after it's allocated
* stack buffer overflow
  * stack: region of a process's memory that stores local variables used inside a function
  * memory allocated is cleared after the function runs
* potential security impacts of buffer overflow
  * availability: system crashes
  * loss of access control; a program executing code outside of its typical scope
  * follow-on actions: buffer overflows resulting in arbitrary code execution, giving the attacker additional access/capabilities
* the Morris Worm used a buffer overflow
