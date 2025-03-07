# Python

Category: Python
Last edited time: July 22, 2022 1:41 PM

# Schedules API

- [https://schedule.readthedocs.io/en/stable/](https://schedule.readthedocs.io/en/stable/)
- 

# Dictionary

- Accessing Values
    
    ```python
    >> d = {'Colorado': 'Rockies', 'Boston': 'Red Sox', 'Minnesota': 'Twins',
    'Milwaukee': 'Brewers', 'Seattle': 'Mariners'}
    
    >> print(d['Colorado']
    'Rockies'
    ```
    

# Defining main function in Python

1. Put most code into a function or class
2. Use `__name__` to control execution of your code
3. Create a function called `main()`to contain the code you want to run.
4. Call other functions from `main()`

# Strings

- Remove white spaces at line ending `str.strip()`

# Modules

[https://realpython.com/python-modules-packages/](https://realpython.com/python-modules-packages/)

# Executing shell commands

[https://janakiev.com/blog/python-shell-commands/](https://janakiev.com/blog/python-shell-commands/)

- When you run `.communicate()`, it will wait until the process is complete.
- Continuously check the status in real time while doing something else

```python
process = subprocess.Popen(['ping', '-c 4', 'python.org'], 
                           stdout=subprocess.PIPE,
                           universal_newlines=True)

while True:
    output = process.stdout.readline()
    print(output.strip())
    # Do something else
    return_code = process.poll()
    if return_code is not None:
        print('RETURN CODE', return_code)
        # Process has finished, read rest of the output 
        for output in process.stdout.readlines():
            print(output.strip())
        break
```