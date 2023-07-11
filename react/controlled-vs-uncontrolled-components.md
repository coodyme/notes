#react 
#frontend 
#interview-question

## What is the difference between controlled components and uncontrolled components  

### Controlled

- A controlled component is a component that is controlled by React state.
- Receives its current value and an update callback via props
- The parent component manages the state of the component
- When the user interacts with the component, the parent component updates the state

For example:

```jsx
const ControlledInput = ({ value, onChange }) => (
  <input value={value} onChange={(e) => onChange(e.target.value)} />
);

const LoginForm = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <form>
      <ControlledInput value={email} onChange={setEmail} placeholder="Email" />
      <ControlledInput
        value={password}
        onChange={setPassword}
        placeholder="Password"
      />
      <button>Submit</button>
    </form>
  );
};
```

In this example, the `ControlledInput` component receives its current value and an `onChange` callback via props. The `LoginForm` component maintains the state of email and password, and when the user types into the inputs, it calls the `onChange` callback and updates the state, which in turn updates the input values.

### Uncontrolled

- Uncontrolled components is a component that maintains its own internal state
- When the user interacts with the component, it updates its own state

For example: 

```jsx
const UncontrolledInput = ({ defaultValue, placeholder }) => {
  const [value, setValue] = useState(defaultValue);

  return (
    <input
      value={value}
      onChange={(e) => setValue(e.target.value)}
      placeholder={placeholder}
    />
  );
};

const LoginForm = () => {
  return (
    <form>
      <UncontrolledInput defaultValue="" placeholder="Email" />
      <UncontrolledInput defaultValue="" placeholder="Password" />
      <button>Submit</button>
    </form>
  );
};
```

In this example, the `UncontrolledInput` component maintains its own internal state, and when the user types into the input, it calls the `setValue` function and updates the state, which in turn updates the input value.

https://www.altogic.com/blog/difference-between-controlled-and-uncontrolled-component#:~:text=In%20React%2C%20a%20controlled%20component,the%20state%20of%20the%20component