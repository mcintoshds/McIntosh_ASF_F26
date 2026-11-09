import { useState} from 'react';
import type { FormEvent } from 'react';
import { Alert, Badge, Button, Col, Form, Modal, Row } from 'react-bootstrap';
import type { Recipe } from '../types';
import { splitLines, totalTime } from '../recipeHelpers';

type Props = {
  recipe: Recipe;
  onBack: () => void;
  onEdit: () => void;
  onSaveNotes: (notes: string) => Promise<void>;
  onDelete: () => Promise<void>;
  isFavorite: boolean;
  onToggleFavorite: () => void;
};

export default function RecipeDetails({ recipe, onBack, onEdit, onSaveNotes, onDelete, isFavorite,
                                        onToggleFavorite,}: Props) {
  const [notes, setNotes] = useState(recipe.notes);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState('');
  const [confirmDelete, setConfirmDelete] = useState(false)
  ;

  async function handleNotes(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setBusy(true);
    setError('');
    try {
      await onSaveNotes(notes);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Could not save notes.');
    } finally {
      setBusy(false);
    }
  }

  async function handleDelete() {
    setBusy(true);
    setError('');
    try {
      await onDelete();
    } catch (err) {
      setConfirmDelete(false);
      setError(err instanceof Error ? err.message : 'Could not delete the recipe.');
    } finally {
      setBusy(false);
    }
  }

  return (
    <section className="content-panel">
      <div className="d-flex flex-wrap gap-2 mb-4">
        <Button variant="outline-secondary" disabled={busy} onClick={onBack}>Back to recipes</Button>
        <Button disabled={busy} onClick={onEdit}>Edit recipe</Button>
        <Button variant="outline-danger" disabled={busy} onClick={() => setConfirmDelete(true)}>Delete recipe</Button>
        <Button
            type="button"
            variant="outline-danger"
            size="sm"
            onClick={onToggleFavorite}
            aria-label={
              isFavorite
                  ? `Remove ${recipe.name} from favorites`
                  : `Add ${recipe.name} to favorites`
            }
            aria-pressed={isFavorite}
        >
          {isFavorite ? '♥' : '♡'}
        </Button>
      </div>
      {error && <Alert variant="danger" role="alert">{error}</Alert>}
      <Row className="align-items-center g-4 mb-4">
        {recipe.imagePath && (
          <Col md={5}><img className="detail-image" src={recipe.imagePath} alt={recipe.name} /></Col>
        )}
        <Col>
          <p className="cuisine-label">{recipe.cuisine.name}</p>
          <h1>{recipe.name}</h1>
          <p>{totalTime(recipe)} min total · {recipe.servings} servings</p>
          <p className="small text-secondary">
            Prep: {recipe.prepMinutes} min · Cook: {recipe.cookMinutes} min · Rest/chill: {recipe.extraMinutes} min
          </p>
          <div className="d-flex flex-wrap gap-2 mb-3">
            {recipe.tags.map((tag) => <Badge key={tag.id} bg="light" text="dark">#{tag.name}</Badge>)}
          </div>
          <p className="mb-0">{recipe.tried ? '✓ Already cooked' : 'On the to-try list'}</p>
        </Col>
      </Row>
      <Row className="g-4">
        <Col md={5}>
          <h2 className="h4">Ingredients</h2>
          <ul className="ingredients-list">
            {recipe.ingredients.map((ingredient, index) => <li key={index}>{ingredient}</li>)}
          </ul>
        </Col>
        <Col md={7}>
          <h2 className="h4">Instructions</h2>
          <ol className="instructions-list">
            {splitLines(recipe.instructions).map((step, index) => <li key={index}>{step}</li>)}
          </ol>
        </Col>
      </Row>
      <Form className="notes-panel mt-4" onSubmit={handleNotes}>
        <Form.Group controlId="cooking-notes">
          <Form.Label className="h4">Cooking notes</Form.Label>
          <p className="small text-secondary">What would you do differently next time?</p>
          <Form.Control as="textarea" rows={4} maxLength={5000} disabled={busy}
            value={notes} onChange={(event) => setNotes(event.target.value)} />
        </Form.Group>
        <Button type="submit" className="mt-3" disabled={busy}>{busy ? 'Working…' : 'Save notes'}</Button>
      </Form>
      <Modal show={confirmDelete} onHide={() => !busy && setConfirmDelete(false)} centered
        aria-labelledby="delete-title">
        <Modal.Header closeButton={!busy}><Modal.Title id="delete-title">Delete this recipe?</Modal.Title></Modal.Header>
        <Modal.Body>This removes {recipe.name} and its cooking notes from your cookbook.</Modal.Body>
        <Modal.Footer>
          <Button variant="outline-secondary" disabled={busy} onClick={() => setConfirmDelete(false)}>Keep recipe</Button>
          <Button variant="danger" disabled={busy} onClick={handleDelete}>{busy ? 'Deleting…' : 'Yes, delete'}</Button>
        </Modal.Footer>
      </Modal>
    </section>
  );
}
