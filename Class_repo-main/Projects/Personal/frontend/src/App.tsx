import { useEffect, useState } from 'react';
import { Alert, Button, Col, Container, Row } from 'react-bootstrap';
import type { Cuisine, Recipe, RecipeInput, Tag } from './types';
import * as api from './api';
import { filterRecipes } from './recipeHelpers';
import RecipeCard from './components/RecipeCard';
import RecipeDetails from './components/RecipeDetails';
import RecipeFilters from './components/RecipeFilters';
import RecipeForm from './components/RecipeForm';

export default function App() {
  const [recipes, setRecipes] = useState<Recipe[]>([]);
  const [cuisines, setCuisines] = useState<Cuisine[]>([]);
  const [tags, setTags] = useState<Tag[]>([]);
  const [view, setView] = useState<'browse' | 'detail' | 'form'>('browse');
  const [selectedRecipe, setSelectedRecipe] = useState<Recipe | null>(null);
  const [cuisineId, setCuisineId] = useState('');
  const [selectedTags, setSelectedTags] = useState<number[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [message, setMessage] = useState('');

  async function loadData() {
    setLoading(true);
    setError('');

    try {
      const [recipeData, cuisineData, tagData] = await Promise.all([
        api.getRecipes(),
        api.getCuisines(),
        api.getTags(),
      ]);

      setRecipes(recipeData);
      setCuisines(cuisineData);
      setTags(tagData);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Could not load recipes.');
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    void loadData();
  }, []);

  function openRecipe(recipe: Recipe) {
    setSelectedRecipe(recipe);
    setMessage('');
    setView('detail');
    window.scrollTo(0, 0);
  }

  function toggleTag(id: number) {
    setSelectedTags(selectedTags.includes(id)
        ? selectedTags.filter((tagId) => tagId !== id)
        : [...selectedTags, id]);
  }

  async function handleSave(input: RecipeInput, image: File | null) {
    const saved = await api.saveRecipe(input, selectedRecipe?.id);

    setSelectedRecipe(saved);

    setRecipes((current) => {
      const exists = current.some((recipe) => recipe.id === saved.id);

      return exists
          ? current.map((recipe) => recipe.id === saved.id ? saved : recipe)
          : [...current, saved];
    });

    if (image) {
      try {
        const recipeWithImage = await api.uploadRecipeImage(saved.id, image);

        setRecipes((current) => current.map((recipe) =>
            recipe.id === recipeWithImage.id ? recipeWithImage : recipe
        ));

        setSelectedRecipe(recipeWithImage);
      } catch (err) {
        const reason = err instanceof Error ? err.message : 'Please try again.';
        throw new Error(`Recipe saved, but the picture did not upload. ${reason}`);
      }
    }

    setView('detail');
    setMessage('Recipe saved.');
    window.scrollTo(0, 0);
  }

  async function handleNotes(notes: string) {
    if (!selectedRecipe) return;

    const saved = await api.saveNotes(selectedRecipe.id, notes);

    setRecipes(recipes.map((recipe) => recipe.id === saved.id ? saved : recipe));
    setSelectedRecipe(saved);
    setMessage('Cooking notes saved.');
  }

  async function handleDelete() {
    if (!selectedRecipe) return;

    await api.deleteRecipe(selectedRecipe.id);

    setRecipes(recipes.filter((recipe) => recipe.id !== selectedRecipe.id));
    setSelectedRecipe(null);
    setView('browse');
    setMessage('Recipe deleted.');
    window.scrollTo(0, 0);
  }

  const matches = filterRecipes(recipes, cuisineId, selectedTags);

  return (
      <>
        <header className="site-header">
          <Container>
          <span className="brand">
            I Don't Know<span className="brand-dot">.</span>
          </span>
          </Container>
        </header>

        <Container as="main" className="py-4 py-md-5">
          {message && (
              <Alert variant="success" role="status" dismissible
                     onClose={() => setMessage('')}>
                {message}
              </Alert>
          )}

          {loading && <p role="status">Getting your cookbook ready…</p>}

          {error && (
              <Alert variant="danger" role="alert">
                {error}
                <Button variant="link" onClick={loadData}>Try again</Button>
              </Alert>
          )}

          {!loading && !error && view === 'browse' && (
              <>
                <div className="intro d-flex flex-wrap justify-content-between align-items-center gap-3 mb-4">
                  <div>
                    <p className="eyebrow">A LITTLE HELP WITH DINNER</p>
                    <h1>What sounds good?</h1>
                    <p className="text-secondary mb-0">
                      Find a craving. Pick a cuisine. Make something you love.
                    </p>
                  </div>

                  <Button onClick={() => {
                    setSelectedRecipe(null);
                    setMessage('');
                    setView('form');
                  }}>
                    Add recipe
                  </Button>
                </div>

                <RecipeFilters
                    cuisines={cuisines}
                    tags={tags}
                    cuisineId={cuisineId}
                    selectedTags={selectedTags}
                    onCuisineChange={setCuisineId}
                    onTagToggle={toggleTag}
                    onClear={() => {
                      setCuisineId('');
                      setSelectedTags([]);
                    }}
                />

                <h2 className="h5 mb-3" aria-live="polite">
                  {matches.length} {matches.length === 1 ? 'recipe' : 'recipes'} to explore
                </h2>

                {matches.length === 0 && (
                    <p className="empty-state">
                      Nothing matches yet. Clear a filter or add your own recipe.
                    </p>
                )}

                <Row xs={1} sm={2} lg={3} className="g-4">
                  {matches.map((recipe) => (
                      <Col key={recipe.id}>
                        <RecipeCard recipe={recipe} onOpen={openRecipe} isFavorite={false}
                                    onToggleFavorite={function (): void {
                                      throw new Error("Function not implemented.");
                                    }} />
                      </Col>
                  ))}
                </Row>
              </>
          )}

          {view === 'detail' && selectedRecipe && (
              <RecipeDetails
                  key={selectedRecipe.id}
                  recipe={selectedRecipe}
                  onBack={() => setView('browse')}
                  onEdit={() => {
                    setMessage('');
                    setView('form');
                  }}
                  onSaveNotes={handleNotes}
                  onDelete={handleDelete} isFavorite={false} onToggleFavorite={function (): void {
                throw new Error("Function not implemented.");
              }}              />
          )}

          {view === 'form' && (
              <RecipeForm
                  recipe={selectedRecipe}
                  cuisines={cuisines}
                  tags={tags}
                  onSave={handleSave}
                  onCancel={() => setView(selectedRecipe ? 'detail' : 'browse')}
              />
          )}
        </Container>

        <footer className="site-footer">
          <Container>
            Made for the nights when the answer is “I don't know.”
          </Container>
        </footer>
      </>
  );
}