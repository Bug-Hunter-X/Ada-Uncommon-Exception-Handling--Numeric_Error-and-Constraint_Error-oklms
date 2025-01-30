# Ada Uncommon Exception Handling

This example demonstrates less common exceptions in Ada, specifically focusing on `Numeric_Error` and its handling.  `Numeric_Error` is raised when a numeric operation results in an exception, such as overflow or division by zero (the latter can also raise `Constraint_Error`).  Standard Ada exception handling is used to gracefully manage these situations.

The `Uncommon_Error_Example` function showcases potential exceptions, and the `Main` procedure demonstrates how to catch and handle them using `exception` blocks.  Robust error handling is crucial in Ada for creating reliable and fault-tolerant applications.  This example provides a clear illustration of best practices for managing numeric exceptions.

## How to Run
1.  Save the code as `bug.ada`
2.  Compile and run using an Ada compiler (like GNAT).
3. Observe the output based on the input value(s).