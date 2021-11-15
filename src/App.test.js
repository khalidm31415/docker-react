import { render, screen } from '@testing-library/react';
import App from './App';

test('renders hmm', () => {
  render(<App />);
  const linkElement = screen.getByText(/hmm/i);
  expect(linkElement).toBeInTheDocument();
});
