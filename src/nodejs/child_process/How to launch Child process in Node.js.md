#nodejs
#child_process

Node.js includes the `child_process` module wich has functions to create new processes.

## exec()

Creates a new shell process and execute a command in that shell. The command output is kept in a memory buffer.

`exec(command, callback)` 

- The first arg `command` is a string command we would like to execute
- The second arg `callback` is a function with three params.
	- `error` will capture when command failled to run
	- `stdout` any data it writes to standard output stream if command executes successfully
	- `stderr` will capture if the command runs but returns output error to stream

for example

```js
 import { exec } from 'child_process';
 
 exec('ls -lh', (err, stdout, stderr) => {
    if(err) {
      console.error(`error: ${err.message}`);
      return;
    }

    if (stderr) {
      console.error(`stderr: ${stderr}`);
      return;
    }

    console.log(`stdout: \n${stdout}`);
  })
```

## execFile()

The key difference between `exec()` and `execFile()` is that the first argument of `execFile()` is now a path to an executable file.

`execFile(path, callback)`

for example

```js
import { execFile } from 'child_process';
import { dirname } from 'path'
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename)

execFile(`${__dirname}/processNodejsImage.sh`, (err, stdout, stderr) => {
    if(err) {
      console.error(`error: ${err.message}`);
      return;
    }

    if (stderr) {
      console.error(`stderr: ${stderr}`);
      return;
    }

    console.log(`stdout: \n${stdout}`);
  })
```

OBS: Make sure to `sudo chmod u+x`  
 
## spawn()

Runs a command in process, but this function returns data via `Stream`. To get the output of the child process, we need to listen for stream events.

Streams are instances of event emmiters. [[Using Event Emitters in Node.js]]

If you are handling large amount of data its a good idea to choose `spawn()` over `exec()`

`spawn(command, args)`

- The first argument is the command to run
- The second argument is an array that contains the arguments for the executed command
- Commands can return data in `stdout` and `stderr` stream. 
- We can add a listener by calling the `on()` method
- `error` and `close` must be called directly on the `child` variable
- When listening to the `close` event, Node.js provides the exit code. An exit code denotes if the command ran successfully or not.
- When the command runs without error, it returns the lowest possible vlaue for an exit code. 
- When execute with and error, it returns a non-zero code.

for example

```js
import { spawn } from 'child_process'

const child = spawn('find', ['.'])

  child.stdout.on('data', data => {
    console.log(`stdout: \n${data}`);
  })

  child.stderr.on('data', data => {
    console.error(`stderr: \n${data}`);
  })

  child.on('error', error => {
    console.error(`error: ${error.message}`);
  })

  child.on('close', code => {
    console.log(`child process exited with code ${code}`);
  })
```

OBS: `spawn()` does not create a new shell before running a process, that's why we need to have command with their arguments in a string array.

## fork()

Function to allow for two-way communication between parent and child process. `fork()` can be used to improve the performance of our application by creating a child process for a blocking code and the application can still able to respond to other requests while the blocking request still processing.

`fork(modulePath)`

blocking code example

```js
import http from 'http'

const HOST = 'localhost'
const PORT = 8000

const count = () => {
  let counter = 0
  while (counter < 6000000000) {
    counter++
  }
  return counter
}

const listener = function (req, res) {
  if (req.url === '/count') {
    let result = count()
    res.setHeader('Content-Type', 'application/json')
    res.writeHead(200)
    res.end(`{ message: ${result} }`)
  } else if (req.url === '/ping'){
    res.setHeader('Content-Type', 'application/json')
    res.writeHead(200)
    res.end(`{ message: 'pong' }`)
  }
}

const server = http.createServer(listener)
server.listen(PORT, HOST, () => {
  console.log(`Server is running on http://${HOST}:${PORT}`)
})
```

In the example above, if we make two requests at the same time to `/count` and `/ping` the request to `ping` will only retunr a response when `count` request complete.

non-blocking code example

```js
import http from 'http'
import { fork } from 'child_process'
import { fileURLToPath } from 'url'
import { dirname } from 'path'

const HOST = 'localhost'
const PORT = 8000


const listener = function (req, res) {
  if (req.url === '/count') {
    const __filename = fileURLToPath(import.meta.url)
    const __dirname = dirname(__filename)
    const child = fork(`${__dirname}/count`)
    
    child.send('START');
    child.on('message', (message) => {
      res.setHeader('Content-Type', 'application/json')
      res.writeHead(200)
      res.end(message)
    })

  } else if (req.url === '/ping'){
    res.setHeader('Content-Type', 'application/json')
    res.writeHead(200)
    res.end(`{ message: 'pong' }`)
  }
}

const server = http.createServer(listener)
server.listen(PORT, HOST, () => {
  console.log(`Server is running on http://${HOST}:${PORT}`)
})
```

```js
const counting = () => {
  let counter = 0
  while (counter < 1000000000) {
    counter++
  }
  return counter
}

process.on('message', (message) => {
  console.log('Child process received message: ', message)
  let count = counting()
  process.send(`{ "count": ${count} }`)
})
```

In the example above we have moved the `counting` function to a child process using `fork()`. Now, we can send requests to `/count` and to `/ping` at the same time and `/ping` will runs immediatly.