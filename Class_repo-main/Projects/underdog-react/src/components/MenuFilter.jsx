import { FormGroup, Input, Label } from 'reactstrap';

export default function MenuFilter({ category, onCategoryChange }) {
  return (
    <FormGroup className="menu-filter mb-0">
      <Label for="category-filter">Meal category</Label>
      <Input id="category-filter" type="select" value={category} onChange={(event) => onCategoryChange(event.target.value)}>
        {['All', 'Breakfast', 'Lunch', 'Dinner'].map((name) => <option key={name} value={name}>{name}</option>)}
      </Input>
    </FormGroup>
  );
}
