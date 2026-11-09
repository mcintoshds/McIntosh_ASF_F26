import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { describe, expect, it, vi } from 'vitest';
import RecipeCard from '../components/RecipeCard';
import { sampleRecipe } from './sampleRecipe';

describe('RecipeCard', () => {
  it('shows joined cuisine data and opens the selected recipe', async () => {
    const user = userEvent.setup();
    const onOpen = vi.fn();
    render(<RecipeCard recipe={sampleRecipe} onOpen={onOpen} />);
    expect(screen.getByRole('heading', { name: 'Som Tum' })).toBeVisible();
    expect(screen.getByText('Thai')).toBeVisible();
    await user.click(screen.getByRole('button', { name: 'View Som Tum' }));
    expect(onOpen).toHaveBeenCalledWith(sampleRecipe);
  });
});
