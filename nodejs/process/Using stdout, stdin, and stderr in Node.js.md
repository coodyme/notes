`stdout`, `stdin`, and `stderr` are standard streams, which interconnect input and ouput communication channels between a program and its envrioment when it executes.

- Every process is initialized with these three open file descriptors
- We can access these guys with `process`

-   [`process.stdin`](https://nodejs.org/api/process.html#processstdin)0): The standard input stream, which is a source of input for the program
-   [`process.stdout`](https://nodejs.org/api/process.html#processstdout)(1): The standard output stream, which is a source of output from the program
-   [`process.stderr`](https://nodejs.org/api/process.html#processstderr)(2): The standard error stream, which is used for error messages and diagnostics issued by the program

https://blog.logrocket.com/using-stdout-stdin-stderr-node-js/