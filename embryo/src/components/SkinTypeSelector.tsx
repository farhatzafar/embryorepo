// src/SkinTypeSelector.tsx
import React, { useState } from 'react';
import axios from 'axios';

interface Product {
  id: number;
  name: string;
  price: number;
}

const SkinTypeSelector: React.FC = () => {
  // State to store the selected skin type
  const [selectedSkinType, setSelectedSkinType] = useState<string>('');
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);

  // Function to handle skin type selection
  const handleSkinTypeChange = (event: React.ChangeEvent<HTMLInputElement>): void => {
    setSelectedSkinType(event.target.value);
  };

  // Function to fetch products based on selected skin type
  const fetchProducts = async (): Promise<void> => {
    if (!selectedSkinType) return;

    setLoading(true);
    setError(null);

    try {
      // Replace the URL with your Spring Boot API URL
      const response = await axios.get<Product[]>(
        `http://localhost:8080/api/products/skin-type?skinType=${selectedSkinType}`
      );
      setProducts(response.data);
    } catch (err) {
      setError('Failed to fetch products');
    } finally {
      setLoading(false);
    }
  };

  // Handle form submission to fetch products
  const handleSubmit = (event: React.FormEvent): void => {
    event.preventDefault();
    fetchProducts();
  };

  return (
    <div>
      <h2>How would you describe your skin type?</h2>
      <form onSubmit={handleSubmit}>
        <label>
          Oily
          <input
            type="radio"
            name="skinType"
            value="Oily"
            checked={selectedSkinType === 'Oily'}
            onChange={handleSkinTypeChange}
          />
        </label>
        <label>
          Dry
          <input
            type="radio"
            name="skinType"
            value="Dry"
            checked={selectedSkinType === 'Dry'}
            onChange={handleSkinTypeChange}
          />
        </label>
        <label>
          Combination
          <input
            type="radio"
            name="skinType"
            value="Combination"
            checked={selectedSkinType === 'Combination'}
            onChange={handleSkinTypeChange}
          />
        </label>
        <label>
          Normal
          <input
            type="radio"
            name="skinType"
            value="Normal"
            checked={selectedSkinType === 'Normal'}
            onChange={handleSkinTypeChange}
          />
        </label>
        <label>
          Sensitive
          <input
            type="radio"
            name="skinType"
            value="Sensitive"
            checked={selectedSkinType === 'Sensitive'}
            onChange={handleSkinTypeChange}
          />
        </label>

        <button type="submit" disabled={loading || !selectedSkinType}>
          {loading ? 'Loading...' : 'Get Products'}
        </button>
      </form>

      {error && <p style={{ color: 'red' }}>{error}</p>}

      {products.length > 0 && (
        <div>
          <h3>Products for {selectedSkinType} Skin</h3>
          <ul>
            {products.map((product) => (
              <li key={product.id}>
                {product.name} - ${product.price}
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
};

export default SkinTypeSelector;
