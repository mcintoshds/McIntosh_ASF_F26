import { describe, expect, it } from 'vitest';
import { filterRecipes, splitLines } from '../recipeHelpers';
import { sampleRecipe } from './sampleRecipe';

describe('recipe filters', () => {
  const recipes = [sampleRecipe, { ...sampleRecipe, id: 2, cuisine: { id: 2, name: 'Italian' }, tags: [] }];

  it('shows every recipe when filters are clear', () => {
    expect(filterRecipes(recipes, '', [])).toHaveLength(2);
  });

  it('combines cuisine with all selected tags', () => {
    expect(filterRecipes(recipes, '1', [1, 2])).toEqual([sampleRecipe]);
    expect(filterRecipes(recipes, '2', [1])).toEqual([]);
    expect(filterRecipes(recipes, '1', [1, 999])).toEqual([]);
  });

  it('turns ingredient text into trimmed, nonempty lines', () => {
    expect(splitLines(' 2 cups rice \n\n1 tbsp oil\r\n')).toEqual(['2 cups rice', '1 tbsp oil']);
  });
});
