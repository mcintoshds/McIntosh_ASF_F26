import { Badge, Button, Card } from 'react-bootstrap';
import type { Recipe } from '../types';
import { totalTime } from '../recipeHelpers';

type Props = {
    recipe: Recipe;
    onOpen: (recipe: Recipe) => void;
    isFavorite: boolean;
    onToggleFavorite: () => void;
};

export default function RecipeCard({
                                       recipe,
                                       onOpen,
                                       isFavorite,
                                       onToggleFavorite,
                                   }: Props) {
    return (
        <Card className="recipe-card h-100">
            {recipe.imagePath ? (
                <Card.Img
                    variant="top"
                    src={recipe.imagePath}
                    alt={recipe.name}
                    loading="lazy"
                />
            ) : (
                <div className="recipe-placeholder">From your kitchen</div>
            )}

            <Card.Body className="d-flex flex-column">
                <div className="d-flex justify-content-between align-items-start gap-2">
                    <p className="cuisine-label">{recipe.cuisine.name}</p>

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

                <Card.Title as="h3">{recipe.name}</Card.Title>

                <p className="text-secondary small">
                    {totalTime(recipe)} min total · {recipe.servings} servings
                </p>

                <div className="d-flex flex-wrap gap-1 mb-3">
                    {recipe.tags.slice(0, 3).map((tag) => (
                        <Badge key={tag.id} bg="light" text="dark">
                            #{tag.name}
                        </Badge>
                    ))}
                </div>

                <Button
                    variant="outline-primary"
                    className="mt-auto"
                    onClick={() => onOpen(recipe)}
                    aria-label={`View ${recipe.name}`}
                >
                    View recipe
                </Button>
            </Card.Body>
        </Card>
    );
}