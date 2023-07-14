#react 
#frontend 
#interview-question

## What is the difference between controlled components and uncontrolled components  

### Controlled

A component in React is referred to as `controlled` when we let react control the component for us. 

- A component that is controlled by React state.
- Receives its current value and update callback via props
- It stores the current value in the form of `props`
- The parent component manages the state of the child component
- When the user interacts with the component, the parent component updates the state

For example:

```jsx
const Input = ({ value, onChange }) => (
  <input value={value} onChange={(e) => onChange(e.target.value)} />
);

const Form = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <form>
      <Input 
	      value={email} 
	      onChange={setEmail} 
	      placeholder="Email" 
	    />
      <Input
        value={password}
        onChange={setPassword}
        placeholder="Password"
      />
      <button>Submit</button>
    </form>
  );
};


export default Form;
```

In this example, the `Input` component receives its current value and an `onChange` callback via props. The `Form` component maintains the state of **email** and **password**, and when the user types into the inputs, it calls the `onChange` callback and updates the state, which in turn updates the input values.

> Controlled component provides validation benefits on every `keystroke` of the user.

> All the state changes in a controlled component are made with the help of the `setState()` method.

### Uncontrolled

An uncontrolled component act more like traditional HTML form elements. The data from the input field is not stored in the react state, but it is stored in the DOM itself. 

- Instead of use `setState()` to update the value according to the changes, we use `ref` to access the values of input elements.
- It stores the current value using react `ref`
- Uncontrolled components is a component that maintains its own internal state
- When the user interacts with the component, it updates its own state

For example: 

```jsx
const Checkbox = () => {
  const checkboxRef = useRef(null);

  const handleSubmit = () => {
    console.log(checkboxRef.current.checked);
  };

  return (
    <div>
      <input type="checkbox" ref={checkboxRef} />
      <button type="button" onClick={handleSubmit}>
        Submit
      </button>
    </div>
  );
};

export default Checkbox;
```

In this example we used `ref` to access checkbox value.

> It is optional for the uncontrolled component to have a state, but it must use `ref`.

> Uncontrolled components are helpful when we need to integrate react with other libraries which do not follow react design patterns. (React Hook Form)