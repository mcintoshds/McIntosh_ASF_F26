package com.idontknow.recipe;

import jakarta.validation.constraints.*;
import java.util.List;

public class RecipeRequest {
    @NotBlank(message = "Enter a recipe name.")
    @Size(max = 120, message = "Use no more than 120 characters for the name.")
    private String name;

    @NotNull(message = "Choose a cuisine.")
    @Positive(message = "Choose a cuisine.")
    private Long cuisineId;

    @NotNull(message = "Enter the prep time.")
    @Min(value = 0, message = "Prep time cannot be negative.")
    @Max(value = 1440, message = "Prep time cannot exceed 1440 minutes.")
    private Integer prepMinutes;

    @NotNull(message = "Enter the cook time.")
    @Min(value = 0, message = "Cook time cannot be negative.")
    @Max(value = 1440, message = "Cook time cannot exceed 1440 minutes.")
    private Integer cookMinutes;

    @NotNull(message = "Enter the extra time, or zero.")
    @Min(value = 0, message = "Extra time cannot be negative.")
    @Max(value = 10080, message = "Extra time cannot exceed one week.")
    private Integer extraMinutes;

    @NotNull(message = "Enter the number of servings.")
    @Min(value = 1, message = "Servings must be at least 1.")
    @Max(value = 100, message = "Servings cannot exceed 100.")
    private Integer servings;

    @NotEmpty(message = "Add at least one ingredient.")
    @Size(max = 60, message = "Use no more than 60 ingredient lines.")
    private List<@NotBlank(message = "Ingredient lines cannot be blank.")
            @Size(max = 300, message = "Keep each ingredient under 300 characters.") String> ingredients;

    @NotBlank(message = "Enter the cooking instructions.")
    @Size(max = 20000, message = "Keep instructions under 20,000 characters.")
    private String instructions;

    @NotNull(message = "Include a tag selection, even if empty.")
    @Size(max = 12, message = "Choose no more than 12 tags.")
    private List<@NotNull @Positive Long> tagIds;

    private boolean tried;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getCuisineId() {
        return cuisineId;
    }

    public void setCuisineId(Long cuisineId) {
        this.cuisineId = cuisineId;
    }

    public Integer getPrepMinutes() {
        return prepMinutes;
    }

    public void setPrepMinutes(Integer prepMinutes) {
        this.prepMinutes = prepMinutes;
    }

    public Integer getCookMinutes() {
        return cookMinutes;
    }

    public void setCookMinutes(Integer cookMinutes) {
        this.cookMinutes = cookMinutes;
    }

    public Integer getExtraMinutes() {
        return extraMinutes;
    }

    public void setExtraMinutes(Integer extraMinutes) {
        this.extraMinutes = extraMinutes;
    }

    public Integer getServings() {
        return servings;
    }

    public void setServings(Integer servings) {
        this.servings = servings;
    }

    public List<String> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<String> ingredients) {
        this.ingredients = ingredients;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public List<Long> getTagIds() {
        return tagIds;
    }

    public void setTagIds(List<Long> tagIds) {
        this.tagIds = tagIds;
    }

    public boolean isTried() {
        return tried;
    }

    public void setTried(boolean tried) {
        this.tried = tried;
    }

}
