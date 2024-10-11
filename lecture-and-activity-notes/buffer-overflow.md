# Buffer Overflow

## Lecture Notes: Buffer Overflow Vulnerabilities

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
