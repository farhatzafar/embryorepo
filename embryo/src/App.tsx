import React from 'react';
import './App.css';  // Import your CSS if needed
import FilterForm from './components/FilterForm';  // Import the FilterForm component

const App: React.FC = () => {
  return (
    <div className="App">
      <h1>Welcome to Our Product Finder</h1>
      
      {/* Render the FilterForm component */}
      <FilterForm />
      
    </div>
  );
};

export default App;
