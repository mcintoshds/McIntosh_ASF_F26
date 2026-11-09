import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { describe, expect, it, vi } from 'vitest';
import RecipeDetails from '../components/RecipeDetails';
import { sampleRecipe } from './sampleRecipe';

describe('RecipeDetails', () => {
  it('saves notes and requires confirmation before deleting', async () => {
    const user = userEvent.setup();
    const saveNotes = vi.fn().mockResolvedValue(undefined);
    const deleteRecipe = vi.fn().mockResolvedValue(undefined);

    render(
        <RecipeDetails
            recipe={sampleRecipe}
            onBack={vi.fn()}
            onEdit={vi.fn()}
            onSaveNotes={saveNotes}
            onDelete={deleteRecipe}
            isFavorite={false}
            onToggleFavorite={vi.fn()}
        />
    );

    await user.type(
        screen.getByLabelText('Cooking notes'),
        'Use one less chili.'
    );
    await user.click(screen.getByRole('button', { name: 'Save notes' }));
    expect(saveNotes).toHaveBeenCalledWith('Use one less chili.');

    await user.click(screen.getByRole('button', { name: 'Delete recipe' }));
    expect(deleteRecipe).not.toHaveBeenCalled();

    await user.click(screen.getByRole('button', { name: 'Yes, delete' }));
    expect(deleteRecipe).toHaveBeenCalledOnce();
  });
});