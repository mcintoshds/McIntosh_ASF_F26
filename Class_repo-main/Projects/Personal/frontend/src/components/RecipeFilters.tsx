import { useState } from 'react';
import { Button, Form } from 'react-bootstrap';
import type { Cuisine, Tag } from '../types';

type Props = {
  cuisines: Cuisine[];
  tags: Tag[];
  cuisineId: string;
  selectedTags: number[];
  onCuisineChange: (value: string) => void;
  onTagToggle: (id: number) => void;
  onClear: () => void;
};

export default function RecipeFilters(props: Props) {
  const [showAllTags, setShowAllTags] = useState(false);
  const commonNames = ['Spicy', 'Crunchy', 'Refreshing', 'Creamy', 'Savory', 'Sweet', 'Smoky', 'Hearty'];
  const visibleTags = showAllTags ? props.tags : props.tags.filter((tag) =>
    commonNames.includes(tag.name) || props.selectedTags.includes(tag.id));
  return (
    <section className="filter-panel mb-4" aria-label="Recipe filters">
      <div className="d-flex flex-wrap align-items-end gap-3 mb-3">
        <Form.Group controlId="cuisine-filter" className="cuisine-select">
          <Form.Label>Cuisine</Form.Label>
          <Form.Select value={props.cuisineId} onChange={(event) => props.onCuisineChange(event.target.value)}>
            <option value="">All cuisines</option>
            {props.cuisines.map((cuisine) => (
              <option key={cuisine.id} value={cuisine.id}>{cuisine.name}</option>
            ))}
          </Form.Select>
        </Form.Group>
        <Button variant="link" onClick={props.onClear}>Clear filters</Button>
      </div>
      <p className="fw-semibold mb-2">What are you craving?</p>
      <p className="small text-secondary">Choose any combination. Recipes must match every selected tag.</p>
      <div className="d-flex flex-wrap gap-2">
        {visibleTags.map((tag) => (
          <Button key={tag.id} size="sm"
            variant={props.selectedTags.includes(tag.id) ? 'primary' : 'outline-secondary'}
            aria-pressed={props.selectedTags.includes(tag.id)}
            onClick={() => props.onTagToggle(tag.id)}>
            #{tag.name}
          </Button>
        ))}
      </div>
      <Button variant="link" className="px-0 mt-2" aria-expanded={showAllTags}
        onClick={() => setShowAllTags(!showAllTags)}>
        {showAllTags ? 'Show fewer tags' : 'Show all craving tags'}
      </Button>
    </section>
  );
}
