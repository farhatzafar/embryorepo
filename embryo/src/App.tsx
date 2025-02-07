// src/App.tsx
import React from 'react';
import SkinTypeSelector from './components/SkinTypeSelector';

const App: React.FC = () => {
  return (
    <div className="App">
      <h1>Welcome to Skincare Product Finder</h1>
      <SkinTypeSelector />
    </div>
  );
}

export default App;
