package com.idontknow.recipe;

import com.idontknow.cuisine.CuisineRepository;
import com.idontknow.tag.TagRepository;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.web.server.ResponseStatusException;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class RecipeServiceTest {
    @Mock RecipeRepository recipeRepository;
    @Mock CuisineRepository cuisineRepository;
    @Mock TagRepository tagRepository;
    @InjectMocks RecipeService recipeService;

    @Test
    void missingRecipeReturns404() {
        when(recipeRepository.findById(999L)).thenReturn(Optional.empty());
        ResponseStatusException error = assertThrows(ResponseStatusException.class,
                () -> recipeService.getRecipeById(999L));
        assertEquals(404, error.getStatusCode().value());
    }

    @Test
    void invalidCuisineDoesNotSaveRecipe() {
        RecipeRequest request = new RecipeRequest();
        request.setCuisineId(999L);
        when(cuisineRepository.findById(999L)).thenReturn(Optional.empty());
        assertThrows(ResponseStatusException.class, () -> recipeService.createRecipe(request));
        verify(recipeRepository, never()).save(any());
    }

    @Test
    void cookingNotesCanBeClearedWithoutChangingTheRecipe() {
        Recipe recipe = new Recipe();
        recipe.setName("Som Tum");
        recipe.setNotes("Old note");
        when(recipeRepository.findById(1L)).thenReturn(Optional.of(recipe));
        when(recipeRepository.save(recipe)).thenReturn(recipe);
        Recipe saved = recipeService.updateNotes(1L, "  ");
        assertEquals("", saved.getNotes());
        assertEquals("Som Tum", saved.getName());
    }
}
