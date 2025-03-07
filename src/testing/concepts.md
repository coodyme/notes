Tests are essential for ensuring the reliability and correctness of software. They help identify and prevent bugs, improve code quality, and make it easier to maintain and refactor code over time.

### Test Pyramid

Test pyramid is a popular way to structure tests effectively.

- Concept that suggests structuring tests in a pyramid shape, with three layers: unit test at the base, followed by integration tests, and finally end-to-end tests at the top. 

- **Unit** tests focus on testing individual units (small functions or methods) in isolation. They are fast, cheap to write, and provide quick feedback during development. **(70% to 80%)**

- **Integration** tests verify how different units or modules work together. They ensure that the integrated parts of the system interact correctly and identify issues that might not be apparent in unit tests. **(10% to 20%)**

- **End-to-end** tests evaluate the entire application's workflow, simulating user interactions from start to finish. They validate the apps behavior in production-like environment **(5% to 10%)**

### Test Coverage

Is a metric that indicates the percentage of code that is covered by tests. Aim for high test coverage to ensure that most parts of the codebase are working.