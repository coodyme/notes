#nodejs 
#nestjs
#events 

# NestJS Events

Event Emitter package provides a simples publish and subscriber implementation. Events serve as a great way to decouple code, since a single event can handle multiple listeners that do not depend on each other.

  - Decouple Things
  - Perfomatic implementation of Native Node.js EventEmitter
  - Can be Async
  - By default events occur in sequence (Sync)

```ts
export default class UserCreatedEvent() {
  name: string;

  constructor(name: string) {
    this.name = name
  }
}
```

```ts
this.eventEmitter.emit(
  'user.created', 
  new UserCreatedEvent('Augusto')
)
```

Create a Listener

```ts
@Injectable()
export class OrderCreatedListener {
  @OnEvent('user.created')
    doSomething({ name }: UserCreatedEvent) { 
    console.log(`${name}, doing...`)
  }
}
```

or Listen inside a Service

```ts
@OnEvent('user.created')
  doSomething({ name }: UserCreatedEvent) { 
  console.log(`${name}, doing...`)
}
```
  https://docs.nestjs.com/techniques/events

## Server-sent Events (SSE)

Server-Sent Events (SSE) is a server push technology enabling a client to receive automatic updates from a server via HTTP connection. Each notification is sent as a block of text terminated by a pair of newlines

- Automatic push data to client from server in real-time
- Server-Sent Events routes must return an `Observable` stream.

```ts
@Sse('path')
sendEvent(): Observable<MessageEvent> {}
```

- The `sse` method returns an `Observable` that emits multiple `MessageEvent` .
- The `MessageEvent` object should respect the following interface to match the specification:

```ts
export interface MessageEvent {
  data: string | object;
  id?: string;
  type?: string;
  retry?: number;
}
```

- EventSource API (Client side to listen from SSE)
- `EventSource` instance opens a persistent connection to an HTTP server, which sends events in `text/event-stream` format. The connection remains open until closed by calling `EventSource.close()`.
- Once the connection is opened, incoming messages from the server are delivered to your code in the form of events.

```ts
const eventSource = new EventSource('path')

eventSource.onmessage = ({ data }) => {
  console.log('New message', JSON.parse(data));
};
```

if you are using React, you should close the connection when component is unmounted

```ts
useEffect(() => {
  const eventSource = new EventSource('path')

  eventSource.onmessage = ({ data }) => {
    console.log('New message', JSON.parse(data));
  };
  
  return () => {
    eventSource.close()
  }
}, [])
```