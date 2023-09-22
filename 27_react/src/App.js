import { useState } from "react";
import "./App.css";

function Counter() {
  const [counter, setCounter] = useState(0);

  // const [state, setState] = useState({
  //   counter: 0,
  //   loading: false,
  // });

  return (
    <div>
      <div>{counter}</div>
      <button
        onClick={function () {
          setCounter(counter + 1);
          console.log(counter);
        }}
      >
        +
      </button>
    </div>
  );
}

function App() {
  return <Counter />;
}

export default App;
