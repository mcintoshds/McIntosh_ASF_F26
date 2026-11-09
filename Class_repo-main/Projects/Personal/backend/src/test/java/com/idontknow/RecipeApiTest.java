package com.idontknow;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.List;
import java.util.Map;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.hasSize;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@MockitoBean
@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
class RecipeApiTest {
    @Autowired MockMvc mvc;
    @Autowired ObjectMapper json;
    @Autowired JdbcTemplate jdbc;

    private Map<String, Object> validRecipe() {
        Long cuisineId = jdbc.queryForObject("select id from cuisines where name = 'Thai'", Long.class);
        Long tagId = jdbc.queryForObject("select id from tags where name = 'Spicy'", Long.class);
        return new java.util.HashMap<>(Map.of(
                "name", "Test chili rice", "cuisineId", cuisineId,
                "prepMinutes", 5, "cookMinutes", 10, "extraMinutes", 0,
                "servings", 2, "ingredients", List.of("2 cups rice", "1 chili"),
                "instructions", "Cook rice.\nAdd chili.", "tagIds", List.of(tagId), "tried", true));
    }

    @Test
    void catalogLoadsOneHundredRecipesWithRelatedCuisineAndIngredients() throws Exception {
        mvc.perform(get("/api/recipes"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", hasSize(100)))
                .andExpect(jsonPath("$[0].cuisine.name").value("Thai"))
                .andExpect(jsonPath("$[0].ingredients[0]").value("2 cups shredded green papaya"));
        assertEquals(13, jdbc.queryForObject(
                "select count(*) from recipes r join cuisines c on r.cuisine_id = c.id where c.name = 'Thai'", Integer.class));
        mvc.perform(get("/api/cuisines")).andExpect(status().isOk()).andExpect(jsonPath("$", hasSize(25)));
        mvc.perform(get("/api/tags")).andExpect(status().isOk()).andExpect(jsonPath("$", hasSize(39)));
    }

    @Test
    void createReadUpdateNotesAndDeletePersistThroughTheApi() throws Exception {
        Map<String, Object> body = validRecipe();
        String response = mvc.perform(post("/api/recipes").contentType(MediaType.APPLICATION_JSON)
                        .content(json.writeValueAsString(body)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.cuisine.name").value("Thai"))
                .andExpect(jsonPath("$.tags[0].name").value("Spicy"))
                .andReturn().getResponse().getContentAsString();
        long id = json.readTree(response).get("id").asLong();

        mvc.perform(patch("/api/recipes/" + id + "/notes").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"notes\":\"Use less chili next time.\"}"))
                .andExpect(status().isOk());
        body.put("name", "Updated chili rice");
        body.put("ingredients", List.of("3 cups rice", "1 chili", "1 tsp salt"));
        mvc.perform(put("/api/recipes/" + id).contentType(MediaType.APPLICATION_JSON)
                        .content(json.writeValueAsString(body)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.notes").value("Use less chili next time."));
        mvc.perform(get("/api/recipes/" + id))
                .andExpect(jsonPath("$.name").value("Updated chili rice"))
                .andExpect(jsonPath("$.ingredients", hasSize(3)))
                .andExpect(jsonPath("$.tried").value(true));
        mvc.perform(delete("/api/recipes/" + id)).andExpect(status().isNoContent());
        mvc.perform(get("/api/recipes/" + id)).andExpect(status().isNotFound());
        assertEquals(0, jdbc.queryForObject("select count(*) from recipe_tags where recipe_id = ?", Integer.class, id));
        assertEquals(0, jdbc.queryForObject("select count(*) from recipe_ingredients where recipe_id = ?", Integer.class, id));
    }

    @Test
    void rejectsBlankNameInvalidServingsAndUnknownCuisine() throws Exception {
        Map<String, Object> body = validRecipe();
        body.put("name", "   ");
        mvc.perform(post("/api/recipes").contentType(MediaType.APPLICATION_JSON).content(json.writeValueAsString(body)))
                .andExpect(status().isBadRequest()).andExpect(jsonPath("$.message").exists());
        body = validRecipe();
        body.put("servings", 0);
        mvc.perform(post("/api/recipes").contentType(MediaType.APPLICATION_JSON).content(json.writeValueAsString(body)))
                .andExpect(status().isBadRequest());
        body = validRecipe();
        body.put("cuisineId", 999999);
        mvc.perform(post("/api/recipes").contentType(MediaType.APPLICATION_JSON).content(json.writeValueAsString(body)))
                .andExpect(status().isBadRequest());
        }

    @Test
    void missingRecipeReturns404AndNotesCanBeCleared() throws Exception {
        mvc.perform(get("/api/recipes/999999")).andExpect(status().isNotFound());
        mvc.perform(patch("/api/recipes/1/notes").contentType(MediaType.APPLICATION_JSON)
                .content("{\"notes\":\"\"}"))
                .andExpect(status().isOk()).andExpect(jsonPath("$.notes").value(""));
    }
}
