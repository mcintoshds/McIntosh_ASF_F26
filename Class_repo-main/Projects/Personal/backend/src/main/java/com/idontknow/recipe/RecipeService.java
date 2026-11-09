package com.idontknow.recipe;

import com.idontknow.cuisine.Cuisine;
import com.idontknow.cuisine.CuisineRepository;
import com.idontknow.tag.Tag;
import com.idontknow.tag.TagRepository;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

@Service
@Transactional
public class RecipeService {
    private final RecipeRepository recipeRepository;
    private final CuisineRepository cuisineRepository;
    private final TagRepository tagRepository;

    public RecipeService(RecipeRepository recipeRepository,
                         CuisineRepository cuisineRepository,
                         TagRepository tagRepository) {
        this.recipeRepository = recipeRepository;
        this.cuisineRepository = cuisineRepository;
        this.tagRepository = tagRepository;
    }

    public List<Recipe> getAllRecipes() {
        return recipeRepository.findRecipesWithCuisine();
    }

    public Recipe getRecipeById(Long id) {
        return recipeRepository.findById(id).orElseThrow(() ->
                new ResponseStatusException(
                        HttpStatus.NOT_FOUND, "Recipe not found."));
    }

    public Recipe createRecipe(RecipeRequest request) {
        Recipe recipe = new Recipe();
        copyFormValues(recipe, request);
        return recipeRepository.save(recipe);
    }

    public Recipe updateRecipe(Long id, RecipeRequest request) {
        Recipe recipe = getRecipeById(id);
        copyFormValues(recipe, request);
        return recipeRepository.save(recipe);
    }

    public Recipe updateNotes(Long id, String notes) {
        Recipe recipe = getRecipeById(id);
        recipe.setNotes(notes.trim());
        return recipeRepository.save(recipe);
    }

    public void deleteRecipe(Long id) {
        Recipe recipe = getRecipeById(id);
        recipeRepository.delete(recipe);
    }

    public Recipe updateImagePath(Long id, String imagePath) {
        Recipe recipe = getRecipeById(id);
        recipe.setImagePath(imagePath);
        return recipeRepository.save(recipe);
    }

    private void copyFormValues(Recipe recipe, RecipeRequest request) {
        Cuisine cuisine = cuisineRepository.findById(request.getCuisineId())
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.BAD_REQUEST,
                        "Choose an existing cuisine."));

        Set<Tag> tags = new LinkedHashSet<>();

        for (Long tagId : request.getTagIds()) {
            Tag tag = tagRepository.findById(tagId).orElseThrow(() ->
                    new ResponseStatusException(
                            HttpStatus.BAD_REQUEST,
                            "Choose existing tags."));
            tags.add(tag);
        }

        List<String> ingredients = new ArrayList<>();

        for (String ingredient : request.getIngredients()) {
            ingredients.add(ingredient.trim());
        }

        recipe.setName(request.getName().trim());
        recipe.setCuisine(cuisine);
        recipe.setPrepMinutes(request.getPrepMinutes());
        recipe.setCookMinutes(request.getCookMinutes());
        recipe.setExtraMinutes(request.getExtraMinutes());
        recipe.setServings(request.getServings());
        recipe.setIngredients(ingredients);
        recipe.setInstructions(request.getInstructions().trim());
        recipe.setTried(request.isTried());
        recipe.setTags(tags);
    }
}