import type { Recipe } from '../types';

export const sampleRecipe: Recipe = {
  id: 1,
  name: 'Som Tum',
  cuisine: { id: 1, name: 'Thai' },
  prepMinutes: 20,
  cookMinutes: 0,
  extraMinutes: 0,
  servings: 2,
  ingredients: ['2 cups shredded green papaya', '1 Thai chili'],
  instructions: 'Mix the dressing.\nToss with the vegetables.',
  imagePath: '/images/recipe-001.webp',
  tags: [{ id: 1, name: 'Spicy' }, { id: 2, name: 'Crunchy' }],
  tried: false,
  notes: '',
};
