import type { Cuisine, Recipe, RecipeInput, Tag } from './types';

async function checkResponse(response: Response) {
  if (!response.ok) {
    const body = await response.json().catch(() => null);
    throw new Error(body?.message || 'The request failed. Check that Spring Boot is running.');
  }
}

export async function getRecipes(): Promise<Recipe[]> {
  const response = await fetch('/api/recipes');
  await checkResponse(response);
  return response.json();
}

export async function getCuisines(): Promise<Cuisine[]> {
  const response = await fetch('/api/cuisines');
  await checkResponse(response);
  return response.json();
}

export async function getTags(): Promise<Tag[]> {
  const response = await fetch('/api/tags');
  await checkResponse(response);
  return response.json();
}

export async function saveRecipe(recipe: RecipeInput, id?: number): Promise<Recipe> {
  const url = id === undefined ? '/api/recipes' : `/api/recipes/${id}`;

  const response = await fetch(url, {
    method: id === undefined ? 'POST' : 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(recipe),
  });

  await checkResponse(response);
  return response.json();
}

export async function saveNotes(id: number, notes: string): Promise<Recipe> {
  const response = await fetch(`/api/recipes/${id}/notes`, {
    method: 'PATCH',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ notes }),
  });

  await checkResponse(response);
  return response.json();
}

export async function deleteRecipe(id: number): Promise<void> {
  const response = await fetch(`/api/recipes/${id}`, {
    method: 'DELETE',
  });

  await checkResponse(response);
}

export async function uploadRecipeImage(recipeId: number, image: File): Promise<Recipe> {
  const formData = new FormData();
  formData.append('file', image);

  const response = await fetch(`/api/recipes/${recipeId}/image`, {
    method: 'POST',
    body: formData,
  });

  await checkResponse(response);
  return response.json();
}