import type { Recipe } from './types';

export function filterRecipes(recipes: Recipe[], cuisineId: string, tagIds: number[]) {
  return recipes.filter((recipe) => {
    const matchesCuisine = cuisineId === '' || recipe.cuisine.id === Number(cuisineId);
    const matchesTags = tagIds.every((tagId) =>
      recipe.tags.some((tag) => tag.id === tagId),
    );
    return matchesCuisine && matchesTags;
  });
}

export function splitLines(text: string) {
  return text.split('\n').map((line) => line.trim()).filter((line) => line !== '');
}

export function totalTime(recipe: Recipe) {
  return recipe.prepMinutes + recipe.cookMinutes + recipe.extraMinutes;
}
