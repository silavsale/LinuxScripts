import './App.css';
import ComponentFour from './Components/ComponentFour';
import ComponentOne from './Components/ComponentOne';
import ComponentThree from './Components/ComponentThree';
import ComponentTwo from './Components/ComponentTwo';

function App() {
  return (
    <div
      className="App"
      style={{
        display: 'grid',
        gridTemplateColumns: '1fr 1fr',
        gridTemplateRows: '1fr 1fr',
        gap: '10px',
        height: '100vh',
        width: '100vw',
        overflow: 'auto',
        backgroundColor: 'green',
      }}
    >
      <ComponentOne style={{ backgroundColor: 'olive' }} />
      <ComponentTwo />
      <ComponentThree />
      <ComponentFour />
    </div>
  );
}

export default App;
