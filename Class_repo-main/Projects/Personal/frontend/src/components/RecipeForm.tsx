import { useState } from 'react';
import type { FormEvent } from 'react';
import { Alert, Button, Col, Form, Row } from 'react-bootstrap';
import type { Cuisine, Recipe, RecipeInput, Tag } from '../types';
import { splitLines } from '../recipeHelpers';

type Props = {
    recipe: Recipe | null;
    cuisines: Cuisine[];
    tags: Tag[];
    onSave: (recipe: RecipeInput, image: File | null) => Promise<void>;
    onCancel: () => void;
};

export default function RecipeForm({ recipe, cuisines, tags, onSave, onCancel }: Props) {
    // Inputs are strings while someone is typing. Convert numbers when submitting.
    const [form, setForm] = useState({
        name: recipe?.name ?? '',
        cuisineId: recipe ? String(recipe.cuisine.id) : '',
        prepMinutes: String(recipe?.prepMinutes ?? 0),
        cookMinutes: String(recipe?.cookMinutes ?? 0),
        extraMinutes: String(recipe?.extraMinutes ?? 0),
        servings: String(recipe?.servings ?? 2),
        ingredients: recipe?.ingredients.join('\n') ?? '',
        instructions: recipe?.instructions ?? '',
        tried: recipe?.tried ?? false,
        tagIds: recipe?.tags.map((tag) => tag.id) ?? [],
    });

    const [image, setImage] = useState<File | null>(null);
    const [saving, setSaving] = useState(false);
    const [error, setError] = useState('');

    function toggleTag(id: number) {
        const tagIds = form.tagIds.includes(id)
            ? form.tagIds.filter((tagId) => tagId !== id)
            : [...form.tagIds, id];

        setForm({ ...form, tagIds });
    }

    async function handleSubmit(event: FormEvent<HTMLFormElement>) {
        event.preventDefault();

        const ingredients = splitLines(form.ingredients);

        if (!form.name.trim() || !form.instructions.trim() || ingredients.length === 0) {
            setError('Enter a name, at least one ingredient, and instructions. Spaces alone do not count.');
            return;
        }

        if (ingredients.length > 60 || ingredients.some((line) => line.length > 300)) {
            setError('Use up to 60 ingredient lines, with no more than 300 characters per line.');
            return;
        }

        if (form.tagIds.length > 12) {
            setError('Choose no more than 12 tags.');
            return;
        }

        setSaving(true);
        setError('');

        try {
            await onSave({
                name: form.name.trim(),
                cuisineId: Number(form.cuisineId),
                prepMinutes: Number(form.prepMinutes),
                cookMinutes: Number(form.cookMinutes),
                extraMinutes: Number(form.extraMinutes),
                servings: Number(form.servings),
                ingredients,
                instructions: splitLines(form.instructions).join('\n'),
                tried: form.tried,
                tagIds: form.tagIds,
            }, image);
        } catch (err) {
            setError(err instanceof Error ? err.message : 'Could not save the recipe.');
        } finally {
            setSaving(false);
        }
    }

    return (
        <section className="content-panel form-panel">
            <h1 className="h2 mb-4">{recipe ? 'Edit recipe' : 'Add a recipe'}</h1>

            {error && <Alert variant="danger" role="alert">{error}</Alert>}

            <Form onSubmit={handleSubmit}>
                <fieldset disabled={saving}>
                    <Form.Group controlId="recipe-image" className="mb-3">
                        <Form.Label>Recipe picture</Form.Label>
                        <input
                            id="recipe-image"
                            className="form-control"
                            type="file"
                            accept="image/jpeg,image/png"
                            onChange={(event) => {
                                const file = event.currentTarget.files?.[0] ?? null;

                                if (file && file.size > 5 * 1024 * 1024) {
                                    setError('Choose a picture no larger than 5 MB.');
                                    setImage(null);
                                    event.currentTarget.value = '';
                                    return;
                                }

                                setError('');
                                setImage(file);
                            }}
                        />
                        <Form.Text muted>
                            Optional. JPG or PNG, up to 5 MB. Leave empty when editing
                            to keep the current picture.
                        </Form.Text>
                    </Form.Group>

                    <Form.Group controlId="recipe-name" className="mb-3">
                        <Form.Label>Recipe name</Form.Label>
                        <Form.Control required maxLength={120} value={form.name}
                                      onChange={(event) => setForm({ ...form, name: event.target.value })} />
                    </Form.Group>

                    <Form.Group controlId="recipe-cuisine" className="mb-3">
                        <Form.Label>Cuisine</Form.Label>
                        <Form.Select required value={form.cuisineId}
                                     onChange={(event) => setForm({ ...form, cuisineId: event.target.value })}>
                            <option value="">Choose a cuisine</option>
                            {cuisines.map((cuisine) => (
                                <option key={cuisine.id} value={cuisine.id}>{cuisine.name}</option>
                            ))}
                        </Form.Select>
                    </Form.Group>

                    <Row>
                        <Col xs={6} md={3}>
                            <Form.Group controlId="prep-time" className="mb-3">
                                <Form.Label>Prep minutes</Form.Label>
                                <Form.Control type="number" min={0} max={1440} step={1} required
                                              value={form.prepMinutes}
                                              onChange={(event) => setForm({ ...form, prepMinutes: event.target.value })} />
                            </Form.Group>
                        </Col>

                        <Col xs={6} md={3}>
                            <Form.Group controlId="cook-time" className="mb-3">
                                <Form.Label>Cook minutes</Form.Label>
                                <Form.Control type="number" min={0} max={1440} step={1} required
                                              value={form.cookMinutes}
                                              onChange={(event) => setForm({ ...form, cookMinutes: event.target.value })} />
                            </Form.Group>
                        </Col>

                        <Col xs={6} md={3}>
                            <Form.Group controlId="extra-time" className="mb-3">
                                <Form.Label>Rest/chill minutes</Form.Label>
                                <Form.Control type="number" min={0} max={10080} step={1} required
                                              value={form.extraMinutes}
                                              onChange={(event) => setForm({ ...form, extraMinutes: event.target.value })} />
                            </Form.Group>
                        </Col>

                        <Col xs={6} md={3}>
                            <Form.Group controlId="servings" className="mb-3">
                                <Form.Label>Servings</Form.Label>
                                <Form.Control type="number" min={1} max={100} step={1} required
                                              value={form.servings}
                                              onChange={(event) => setForm({ ...form, servings: event.target.value })} />
                            </Form.Group>
                        </Col>
                    </Row>

                    <Form.Group controlId="ingredients" className="mb-3">
                        <Form.Label>Ingredients — one per line, including quantities</Form.Label>
                        <Form.Control as="textarea" rows={6} required maxLength={18060}
                                      value={form.ingredients}
                                      placeholder={'2 cups rice\n1 tbsp oil'}
                                      onChange={(event) => setForm({ ...form, ingredients: event.target.value })} />
                    </Form.Group>

                    <Form.Group controlId="instructions" className="mb-3">
                        <Form.Label>Instructions — one step per line</Form.Label>
                        <Form.Control as="textarea" rows={6} required maxLength={20000}
                                      value={form.instructions}
                                      onChange={(event) => setForm({ ...form, instructions: event.target.value })} />
                    </Form.Group>

                    <fieldset className="mb-4 align">
                        <legend className="form-label fs-6">Cooking status</legend>
                        <Form.Check type="radio" id="not-tried" name="cooking-status"
                                    label="Want to try"
                                    checked={!form.tried}
                                    onChange={() => setForm({ ...form, tried: false })} />
                        <Form.Check type="radio" id="tried" name="cooking-status"
                                    label="Already cooked"
                                    checked={form.tried}
                                    onChange={() => setForm({ ...form, tried: true })} />
                    </fieldset>

                    <fieldset className="mb-4">
                        <legend className="form-label fs-6">Craving tags — choose up to 12</legend>
                        <div className="tag-options">
                            {tags.map((tag) => (
                                <Form.Check key={tag.id} id={`recipe-tag-${tag.id}`} label={`#${tag.name}`}
                                            checked={form.tagIds.includes(tag.id)}
                                            onChange={() => toggleTag(tag.id)} />
                            ))}
                        </div>
                    </fieldset>

                    <div className="d-flex gap-2">
                        <Button type="submit">{saving ? 'Saving…' : 'Save recipe'}</Button>
                        <Button variant="outline-secondary" onClick={onCancel}>Cancel</Button>
                    </div>
                </fieldset>
            </Form>
        </section>
    );
}