export type Cuisine = {
  id: number;
  name: string;
};

export type Tag = {
  id: number;
  name: string;
};

export type Recipe = {
  id: number;
  name: string;
  cuisine: Cuisine;
  prepMinutes: number;
  cookMinutes: number;
  extraMinutes: number;
  servings: number;
  ingredients: string[];
  instructions: string;
  imagePath: string | null;
  tags: Tag[];
  tried: boolean;
  notes: string;
};

export type RecipeInput = {
  name: string;
  cuisineId: number;
  prepMinutes: number;
  cookMinutes: number;
  extraMinutes: number;
  servings: number;
  ingredients: string[];
  instructions: string;
  tagIds: number[];
  tried: boolean;
};
