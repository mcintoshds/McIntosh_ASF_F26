import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { describe, expect, it, vi } from 'vitest';
import RecipeForm from '../components/RecipeForm';
import { sampleRecipe } from './sampleRecipe';

const cuisines = [{ id: 1, name: 'Thai' }, { id: 2, name: 'Italian' }, { id: 3, name: 'Mexican' }];

describe('RecipeForm', () => {
  it('collects the text, dropdown, radio, ingredients, and selected tags', async () => {
    const user = userEvent.setup();
    const onSave = vi.fn().mockResolvedValue(undefined);
    render(<RecipeForm recipe={null} cuisines={cuisines} tags={sampleRecipe.tags}
      onSave={onSave} onCancel={vi.fn()} />);
    await user.type(screen.getByLabelText('Recipe name'), 'Chili rice');
    await user.selectOptions(screen.getByRole('combobox', { name: 'Cuisine' }), '1');
    await user.type(screen.getByLabelText(/Ingredients —/), '2 cups rice\n1 chili');
    await user.type(screen.getByLabelText(/Instructions —/), 'Cook rice.\nAdd chili.');
    await user.click(screen.getByRole('radio', { name: 'Already cooked' }));
    await user.click(screen.getByRole('checkbox', { name: '#Spicy' }));
    await user.click(screen.getByRole('button', { name: 'Save recipe' }));
    expect(onSave).toHaveBeenCalledWith(expect.objectContaining({
      name: 'Chili rice', cuisineId: 1, tried: true, tagIds: [1],
      ingredients: ['2 cups rice', '1 chili'],
    }));
  });

  it('keeps edits and shows an error when the server cannot save', async () => {
    const user = userEvent.setup();
    const onSave = vi.fn().mockRejectedValue(new Error('Could not save. Please try again.'));
    render(<RecipeForm recipe={sampleRecipe} cuisines={cuisines} tags={sampleRecipe.tags}
      onSave={onSave} onCancel={vi.fn()} />);
    await user.clear(screen.getByLabelText('Recipe name'));
    await user.type(screen.getByLabelText('Recipe name'), 'My Som Tum');
    await user.click(screen.getByRole('button', { name: 'Save recipe' }));
    expect(await screen.findByRole('alert')).toHaveTextContent('Could not save.');
    expect(screen.getByLabelText('Recipe name')).toHaveValue('My Som Tum');
  });
});
