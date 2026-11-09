INSERT INTO cuisines (id, name) VALUES (1, 'American');
INSERT INTO cuisines (id, name) VALUES (2, 'Brazilian');
INSERT INTO cuisines (id, name) VALUES (3, 'British');
INSERT INTO cuisines (id, name) VALUES (4, 'Chinese');
INSERT INTO cuisines (id, name) VALUES (5, 'Cuban');
INSERT INTO cuisines (id, name) VALUES (6, 'Ethiopian');
INSERT INTO cuisines (id, name) VALUES (7, 'French');
INSERT INTO cuisines (id, name) VALUES (8, 'German');
INSERT INTO cuisines (id, name) VALUES (9, 'Greek');
INSERT INTO cuisines (id, name) VALUES (10, 'Indian');
INSERT INTO cuisines (id, name) VALUES (11, 'Irish');
INSERT INTO cuisines (id, name) VALUES (12, 'Italian');
INSERT INTO cuisines (id, name) VALUES (13, 'Jamaican');
INSERT INTO cuisines (id, name) VALUES (14, 'Japanese');
INSERT INTO cuisines (id, name) VALUES (15, 'Korean');
INSERT INTO cuisines (id, name) VALUES (16, 'Mexican');
INSERT INTO cuisines (id, name) VALUES (17, 'Moroccan');
INSERT INTO cuisines (id, name) VALUES (18, 'Other');
INSERT INTO cuisines (id, name) VALUES (19, 'Peruvian');
INSERT INTO cuisines (id, name) VALUES (20, 'Puerto Rican');
INSERT INTO cuisines (id, name) VALUES (21, 'Spanish');
INSERT INTO cuisines (id, name) VALUES (22, 'Swedish');
INSERT INTO cuisines (id, name) VALUES (23, 'Thai');
INSERT INTO cuisines (id, name) VALUES (24, 'Trinidadian');
INSERT INTO cuisines (id, name) VALUES (25, 'Vietnamese');
INSERT INTO tags (id, name) VALUES (1, 'Aromatic');
INSERT INTO tags (id, name) VALUES (2, 'Brothy');
INSERT INTO tags (id, name) VALUES (3, 'Buttery');
INSERT INTO tags (id, name) VALUES (4, 'Cheesy');
INSERT INTO tags (id, name) VALUES (5, 'Chewy');
INSERT INTO tags (id, name) VALUES (6, 'Citrusy');
INSERT INTO tags (id, name) VALUES (7, 'Cold');
INSERT INTO tags (id, name) VALUES (8, 'Creamy');
INSERT INTO tags (id, name) VALUES (9, 'Crispy');
INSERT INTO tags (id, name) VALUES (10, 'Crunchy');
INSERT INTO tags (id, name) VALUES (11, 'Earthy');
INSERT INTO tags (id, name) VALUES (12, 'Flaky');
INSERT INTO tags (id, name) VALUES (13, 'Fluffy');
INSERT INTO tags (id, name) VALUES (14, 'Fresh');
INSERT INTO tags (id, name) VALUES (15, 'Fruity');
INSERT INTO tags (id, name) VALUES (16, 'Garlicky');
INSERT INTO tags (id, name) VALUES (17, 'Hearty');
INSERT INTO tags (id, name) VALUES (18, 'Herbal');
INSERT INTO tags (id, name) VALUES (19, 'Hot');
INSERT INTO tags (id, name) VALUES (20, 'Juicy');
INSERT INTO tags (id, name) VALUES (21, 'Mild');
INSERT INTO tags (id, name) VALUES (22, 'Nutty');
INSERT INTO tags (id, name) VALUES (23, 'Refreshing');
INSERT INTO tags (id, name) VALUES (24, 'Room temperature');
INSERT INTO tags (id, name) VALUES (25, 'Salty');
INSERT INTO tags (id, name) VALUES (26, 'Saucy');
INSERT INTO tags (id, name) VALUES (27, 'Savory');
INSERT INTO tags (id, name) VALUES (28, 'Smoky');
INSERT INTO tags (id, name) VALUES (29, 'Soft');
INSERT INTO tags (id, name) VALUES (30, 'Spiced');
INSERT INTO tags (id, name) VALUES (31, 'Spicy');
INSERT INTO tags (id, name) VALUES (32, 'Sticky');
INSERT INTO tags (id, name) VALUES (33, 'Sweet');
INSERT INTO tags (id, name) VALUES (34, 'Tangy');
INSERT INTO tags (id, name) VALUES (35, 'Tender');
INSERT INTO tags (id, name) VALUES (36, 'Toasty');
INSERT INTO tags (id, name) VALUES (37, 'Tomatoey');
INSERT INTO tags (id, name) VALUES (38, 'Umami');
INSERT INTO tags (id, name) VALUES (39, 'Warm');
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (1, 'Som Tum (Green Papaya Salad)', 23, 20, 0, 0, 2, 'Pound garlic and chili lightly, then mix with lime juice, fish sauce, and sugar.
Gently bruise the beans and tomatoes; toss with shredded papaya.
Top with peanuts and serve immediately using chilled vegetables.', '/images/recipe-001.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 0, '2 cups shredded green papaya');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 1, '6 halved cherry tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 2, '4 chopped green bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 3, '1 clove garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 4, '1 Thai chili');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 5, '2 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 6, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 7, '2 tsp palm sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (1, 8, '2 tbsp roasted peanut');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (1, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (1, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (1, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (1, 7);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (1, 34);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (2, 'Pad Thai with Tofu', 23, 20, 15, 0, 2, 'Soak noodles according to package instructions; drain.
Mix tamarind, fish sauce, and sugar with 2 tbsp water.
Fry tofu and garlic in oil, scramble eggs beside them, then toss in noodles and sauce until tender; finish with sprouts and peanuts.', '/images/recipe-002.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 0, '150 g dried rice noodle');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 1, '200 g cubed firm tofu');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 2, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 3, '1 cup bean sprout');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 4, '2 cloves garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 5, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 6, '2 tbsp tamarind paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 7, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 8, '1 tbsp palm sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (2, 9, '2 tbsp roasted peanut');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (2, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (2, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (2, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (2, 22);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (2, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (3, 'Tom Yum Goong', 23, 15, 15, 0, 2, 'Simmer stock with lemongrass, galangal, and lime leaves for 8 minutes.
Add mushrooms and chili; simmer 4 minutes, then add shrimp and cook until opaque.
Remove tough aromatics and stir in fish sauce and lime juice off the heat.', '/images/recipe-003.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 0, '250 g peeled shrimp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 1, '3 cups chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 2, '1 stalk bruised lemongrass');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 3, '4 slices galangal');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 4, '3 makrut lime leaf');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 5, '150 g mushroom');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 6, '1 Thai chili');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 7, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (3, 8, '2 tbsp lime juice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (3, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (3, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (3, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (3, 2);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (3, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (4, 'Tom Kha Gai', 23, 15, 20, 0, 2, 'Gently simmer stock, coconut milk, and aromatics for 8 minutes.
Add chicken and mushrooms and simmer until chicken is fully cooked.
Remove tough aromatics and finish with fish sauce and lime juice.', '/images/recipe-004.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 0, '250 g thinly sliced chicken breast');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 1, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 2, '1 cup chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 3, '5 slices galangal');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 4, '1 stalk bruised lemongrass');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 5, '3 makrut lime leaf');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 6, '100 g mushroom');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 7, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (4, 8, '2 tbsp lime juice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (4, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (4, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (4, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (4, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (4, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (5, 'Green Chicken Curry', 23, 15, 25, 0, 3, 'Fry curry paste in oil for 1 minute.
Add coconut milk, chicken, eggplant, and beans; simmer 20 minutes or until chicken is cooked and vegetables are tender.
Season with fish sauce and sugar, then fold in basil.', '/images/recipe-005.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 0, '400 g sliced chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 1, '2 tbsp green curry paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 2, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 3, '250 g cubed eggplant');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 4, '100 g green bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 5, '1 handful Thai basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 6, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 7, '1 tsp palm sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (5, 8, '1 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (5, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (5, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (5, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (5, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (5, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (6, 'Red Chicken Curry', 23, 15, 25, 0, 3, 'Fry curry paste in oil, then stir in coconut milk.
Add chicken, pepper, and bamboo shoots and simmer until chicken is fully cooked.
Add fish sauce, sugar, and basil before serving.', '/images/recipe-006.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 0, '400 g sliced chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 1, '2 tbsp red curry paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 2, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 3, '1 sliced red bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 4, '150 g drained bamboo shoot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 5, '1 handful Thai basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 6, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 7, '1 tsp palm sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (6, 8, '1 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (6, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (6, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (6, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (6, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (6, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (7, 'Massaman Chicken Curry', 23, 15, 40, 0, 4, 'Fry curry paste in oil, then add coconut milk and 1 cup water.
Add chicken, potato, and onion and simmer gently for 30–35 minutes until tender and cooked.
Stir in peanuts, tamarind, fish sauce, and sugar.', '/images/recipe-007.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 0, '500 g boneless chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 1, '3 tbsp massaman curry paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 2, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 3, '300 g cubed potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 4, '1 sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 5, '3 tbsp roasted peanut');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 6, '1 tbsp tamarind paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 7, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 8, '1 tbsp palm sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (7, 9, '1 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (7, 22);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (7, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (7, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (7, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (7, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (8, 'Pad Kra Pao (Basil Pork)', 23, 10, 15, 0, 2, 'Chop garlic and chilies and fry briefly in oil.
Add pork and stir-fry until cooked; add sauces and 2 tbsp water.
Fold in basil until wilted and serve over rice.', '/images/recipe-008.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 0, '300 g ground pork');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 1, '1 handful holy basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 2, '3 cloves garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 3, '2 Thai chili');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 4, '2 tsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 5, '2 tsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 6, '1 tbsp oyster sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 7, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (8, 8, '2 cups cooked jasmine rice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (8, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (8, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (8, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (8, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (9, 'Larb Gai', 23, 15, 10, 0, 2, 'Cook chicken in a skillet with 3 tbsp water, breaking it apart until fully cooked.
Remove from heat and stir in shallot, lime, fish sauce, chili, and toasted rice powder.
Fold in herbs and serve warm with lettuce.', '/images/recipe-009.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 0, '300 g ground chicken');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 1, '1 thinly sliced shallot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 2, '2 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 3, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 4, '1 tsp chili flake');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 5, '1 tbsp toasted rice powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 6, '1 handful mint');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 7, '1 handful cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (9, 8, '4 leaves lettuce');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (9, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (9, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (9, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (9, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (9, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (10, 'Thai Pineapple Fried Rice', 23, 15, 15, 0, 3, 'Stir-fry onion and carrot in oil until softened, then scramble eggs in the pan.
Add rice, curry powder, and soy sauce and fry until hot.
Toss in pineapple and cashews and cook 2 minutes more.', '/images/recipe-010.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 0, '3 cups chilled cooked jasmine rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 1, '1 cup diced pineapple');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 2, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 3, '3 tbsp cashew');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 4, '0.5 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 5, '1 diced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 6, '1.5 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 7, '1 tsp curry powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (10, 8, '2 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (10, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (10, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (10, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (10, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (10, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (11, 'Pad See Ew', 23, 15, 15, 0, 2, 'Fry garlic and chicken in oil until chicken is cooked, then add broccoli.
Push aside and scramble eggs.
Add noodles, sauces, and sugar and toss until hot, letting the noodles briefly sear between tosses.', '/images/recipe-011.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 0, '250 g fresh wide rice noodle');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 1, '200 g thinly sliced chicken breast');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 2, '200 g chopped Chinese broccoli');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 3, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 4, '2 cloves garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 5, '1 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 6, '1 tsp dark soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 7, '1 tbsp oyster sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 8, '1 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (11, 9, '2 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (11, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (11, 5);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (11, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (11, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (12, 'Thai Cucumber Salad', 23, 15, 0, 15, 3, 'Stir vinegar, sugar, salt, and 2 tbsp water until dissolved.
Toss with cucumber, shallot, chili, and cilantro.
Chill for 15 minutes before serving.', '/images/recipe-012.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 0, '2 sliced cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 1, '1 sliced shallot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 2, '3 tbsp rice vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 3, '1 tbsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 4, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 5, '1 sliced Thai chili');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (12, 6, '2 tbsp chopped cilantro');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (12, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (12, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (12, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (12, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (12, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (13, 'Mango Sticky Rice', 23, 15, 30, 250, 4, 'Soak rice in water for at least 4 hours, drain, and steam in a lined steamer for 25–30 minutes until tender.
Warm coconut milk with sugar and salt; fold two-thirds into the rice and rest 10 minutes.
Serve warm with mango, remaining coconut sauce, and sesame.', '/images/recipe-013.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (13, 0, '1 cup dry glutinous rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (13, 1, '2 sliced mango');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (13, 2, '300 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (13, 3, '3 tbsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (13, 4, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (13, 5, '1 tsp sesame seed');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (13, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (13, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (13, 5);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (13, 15);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (13, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (14, 'Chicken Teriyaki', 14, 10, 20, 0, 2, 'Pan-fry chicken in oil until browned and fully cooked.
Add soy sauce, mirin, sugar, ginger, and 2 tbsp water and simmer until glossy.
Slice chicken and serve over rice with scallion.', '/images/recipe-014.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 0, '350 g boneless chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 1, '2 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 2, '2 tbsp mirin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 3, '1 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 4, '1 tsp grated ginger');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 5, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 6, '1 sliced scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (14, 7, '2 cups cooked rice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (14, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (14, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (14, 32);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (14, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (15, 'Miso Tofu Soup', 14, 10, 10, 0, 2, 'Warm dashi and add tofu and wakame; simmer gently for 3 minutes.
Turn off heat and dissolve miso in a ladleful of broth before stirring it back in.
Add scallion and serve.', '/images/recipe-015.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (15, 0, '3 cups dashi');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (15, 1, '150 g cubed silken tofu');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (15, 2, '2 tbsp miso');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (15, 3, '1 tsp dried wakame');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (15, 4, '1 sliced scallion');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (15, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (15, 38);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (15, 2);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (15, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (15, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (16, 'Vegetable Okonomiyaki', 14, 15, 15, 0, 2, 'Mix flour, eggs, water, and soy sauce, then fold in cabbage and scallions.
Divide into two thick pancakes and cook in oil over medium-low heat for 5–7 minutes per side until set.
Top with okonomiyaki sauce and mayonnaise.', '/images/recipe-016.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 0, '3 cups shredded green cabbage');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 1, '0.75 cup all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 2, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 3, '0.5 cup water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 4, '2 sliced scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 5, '1 tsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 6, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 7, '2 tbsp okonomiyaki sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (16, 8, '1 tbsp mayonnaise');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (16, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (16, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (16, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (16, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (17, 'Kung Pao Chicken', 4, 15, 15, 0, 2, 'Mix soy sauce, vinegar, sugar, cornstarch, and 3 tbsp water.
Stir-fry chicken in oil until cooked; add chilies, garlic, and ginger briefly.
Add sauce and stir until thickened, then fold in peanuts and scallions.', '/images/recipe-017.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 0, '300 g diced chicken breast');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 1, '3 tbsp roasted peanut');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 2, '4 dried red chili');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 3, '2 cloves garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 4, '1 tsp minced ginger');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 5, '1.5 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 6, '1 tbsp rice vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 7, '1 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 8, '1 tsp cornstarch');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 9, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (17, 10, '2 chopped scallion');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (17, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (17, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (17, 22);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (17, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (17, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (18, 'Tomato and Egg Stir-Fry', 4, 10, 10, 0, 2, 'Softly scramble eggs in half the oil and remove.
Cook tomatoes in remaining oil with salt and sugar until juicy.
Return eggs, fold together until set, and serve with scallion and rice.', '/images/recipe-018.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 0, '3 chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 1, '4 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 2, '2 sliced scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 3, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 4, '0.5 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 5, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (18, 6, '2 cups cooked rice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (18, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (18, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (18, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (18, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (18, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (19, 'Smashed Cucumber Salad', 4, 15, 0, 10, 2, 'Lightly smash cucumbers, cut into chunks, and salt for 10 minutes; drain.
Mix garlic, soy sauce, vinegar, oils, and sugar.
Toss with cucumber and serve chilled.', '/images/recipe-019.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 0, '2 cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 1, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 2, '1 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 3, '1 tbsp rice vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 4, '1 tsp sesame oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 5, '1 tsp chili oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 6, '0.5 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (19, 7, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (19, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (19, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (19, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (19, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (19, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (20, 'Beef Bulgogi', 15, 15, 10, 30, 3, 'Mix pear, soy sauce, sugar, sesame oil, and garlic; coat beef and onion and refrigerate 30 minutes.
Sear in small batches in a hot oiled skillet until cooked.
Finish with scallions.', '/images/recipe-020.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 0, '400 g thinly sliced beef sirloin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 1, '0.5 grated pear');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 2, '3 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 3, '1 tbsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 4, '1 tbsp sesame oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 5, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 6, '0.5 sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 7, '2 sliced scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (20, 8, '1 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (20, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (20, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (20, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (20, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (20, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (21, 'Kimchi Fried Rice', 15, 10, 15, 0, 2, 'Fry kimchi in neutral oil for 3 minutes.
Add rice, kimchi juice, gochujang, and soy sauce and stir-fry until piping hot.
Finish with sesame oil and scallion; top each serving with a separately cooked egg.', '/images/recipe-021.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 0, '2 cups chilled cooked rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 1, '1 cup chopped kimchi');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 2, '2 tbsp kimchi juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 3, '1 tbsp gochujang');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 4, '1 tsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 5, '1 tsp sesame oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 6, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 7, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (21, 8, '1 sliced scallion');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (21, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (21, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (21, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (21, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (21, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (22, 'Shrimp Summer Rolls', 25, 25, 5, 0, 2, 'Cook noodles according to package directions and cool; poach shrimp until opaque, then chill.
Briefly soften each wrapper in water and roll tightly around lettuce, noodles, shrimp, mint, and cucumber.
Mix hoisin, peanut butter, lime juice, and enough water for a dipping sauce.', '/images/recipe-022.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 0, '6 sheets rice paper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 1, '60 g dry rice vermicelli');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 2, '180 g peeled shrimp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 3, '6 leaves lettuce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 4, '1 handful mint');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 5, '0.5 cut into strips cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 6, '2 tbsp hoisin sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 7, '1 tbsp peanut butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (22, 8, '1 tbsp lime juice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (22, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (22, 5);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (22, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (22, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (23, 'Lemongrass Chicken Rice Bowls', 25, 15, 20, 30, 2, 'Coat chicken in lemongrass, garlic, fish sauce, sugar, and oil; refrigerate 30 minutes.
Pan-cook until browned and fully cooked, then slice.
Serve over rice with cucumber, carrot, and lime wedges.', '/images/recipe-023.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 0, '350 g boneless chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 1, '1 stalk tender center minced lemongrass');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 2, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 3, '1 tbsp fish sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 4, '2 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 5, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 6, '2 cups cooked rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 7, '0.5 sliced cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 8, '1 shredded carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (23, 9, '1 lime');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (23, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (23, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (23, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (23, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (24, 'Chana Masala', 10, 15, 25, 0, 3, 'Soften onion in oil; add garlic, ginger, and spices and cook 1 minute.
Add tomatoes, chickpeas, salt, and 0.5 cup water and simmer 20 minutes.
Finish with lemon juice.', '/images/recipe-024.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 0, '2 cans of 400 g drained chickpea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 1, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 2, '400 g chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 3, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 4, '1 tbsp grated ginger');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 5, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 6, '1 tsp garam masala');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 7, '1 tsp ground coriander');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 8, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 9, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (24, 10, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (24, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (24, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (24, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (24, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (25, 'Red Lentil Dal', 10, 10, 30, 0, 4, 'Rinse lentils and simmer in water with turmeric for 20–25 minutes until soft.
In a skillet cook onion in oil, then add garlic, ginger, cumin, and tomato and cook until softened.
Stir into lentils with salt and lemon, adding water to adjust thickness.', '/images/recipe-025.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 0, '1 cup dry red lentil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 1, '3 cups water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 2, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 3, '1 chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 4, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 5, '1 tsp grated ginger');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 6, '0.5 tsp turmeric');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 7, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 8, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 9, '0.75 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (25, 10, '1 tbsp lemon juice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (25, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (25, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (25, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (25, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (26, 'Spaghetti al Pomodoro', 12, 10, 25, 0, 2, 'Gently cook garlic in oil, add tomatoes and salt, and simmer 20 minutes.
Cook pasta according to package directions, reserving a little cooking water.
Toss pasta with sauce and basil, loosening with pasta water as needed.', '/images/recipe-026.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (26, 0, '180 g spaghetti');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (26, 1, '400 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (26, 2, '2 cloves sliced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (26, 3, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (26, 4, '1 handful basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (26, 5, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (26, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (26, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (26, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (26, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (27, 'Pasta with Basil Pesto', 12, 15, 12, 0, 2, 'Blend basil, nuts, Parmesan, garlic, oil, lemon, and salt into pesto.
Cook pasta and reserve 0.5 cup cooking water.
Toss drained pasta with pesto off the heat, adding cooking water a little at a time.', '/images/recipe-027.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 0, '180 g pasta');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 1, '2 cups loosely packed basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 2, '2 tbsp pine nut');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 3, '30 g grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 4, '1 clove garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 5, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 6, '1 tsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (27, 7, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (27, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (27, 22);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (27, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (27, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (28, 'Mushroom Risotto', 12, 15, 35, 0, 3, 'Brown mushrooms in oil and set aside.
Soften onion in butter, add rice, and stir 1 minute.
Add warm stock a ladle at a time, stirring until absorbed, until rice is tender with a slight bite; stir in mushrooms, Parmesan, and salt.', '/images/recipe-028.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 0, '1 cup arborio rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 1, '250 g sliced mushroom');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 2, '0.5 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 3, '4 cups warm vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 4, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 5, '1 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 6, '40 g grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (28, 7, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (28, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (28, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (28, 38);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (28, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (29, 'Caprese Salad', 12, 10, 0, 0, 2, 'Arrange tomato and mozzarella slices on a plate.
Tuck basil between slices and drizzle with oil.
Season with salt and pepper and serve promptly.', '/images/recipe-029.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (29, 0, '2 large sliced tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (29, 1, '150 g sliced fresh mozzarella');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (29, 2, '1 handful basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (29, 3, '1 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (29, 4, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (29, 5, '0.125 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (29, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (29, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (29, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (29, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (29, 24);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (30, 'Minestrone', 12, 20, 35, 0, 4, 'Soften onion, carrot, and celery in oil.
Add zucchini, tomatoes, stock, seasoning, and salt and simmer 20 minutes.
Add beans and pasta and cook until pasta is tender.', '/images/recipe-030.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 0, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 1, '2 diced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 2, '2 stalks diced celery');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 3, '1 diced zucchini');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 4, '400 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 5, '1 can of 400 g drained cannellini bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 6, '75 g small pasta');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 7, '4 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 8, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 9, '1 tsp Italian seasoning');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (30, 10, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (30, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (30, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (30, 2);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (30, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (31, 'Eggplant Parmigiana', 12, 20, 50, 0, 4, 'Brush eggplant with oil, season with salt, and roast at 425°F for 20 minutes, turning once.
Layer in a baking dish with tomato sauce, cheeses, and basil.
Bake at 375°F for 25–30 minutes until bubbling.', '/images/recipe-031.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 0, '2 sliced eggplant');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 1, '2 cups tomato sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 2, '200 g grated mozzarella');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 3, '40 g grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 4, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 5, '1 handful basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (31, 6, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (31, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (31, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (31, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (31, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (32, 'Bruschetta with Tomato', 12, 15, 8, 0, 4, 'Toast bread at 400°F for 6–8 minutes.
Toss tomato with basil, oil, and salt.
Rub toast with the cut garlic clove and spoon tomatoes on top immediately before serving.', '/images/recipe-032.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (32, 0, '8 slices baguette');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (32, 1, '3 diced tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (32, 2, '2 tbsp chopped basil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (32, 3, '1 clove garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (32, 4, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (32, 5, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (32, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (32, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (32, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (32, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (32, 24);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (33, 'Gnocchi with Brown Butter and Sage', 12, 10, 15, 0, 2, 'Cook gnocchi according to package directions and drain.
Heat butter until golden and nutty, then briefly fry sage leaves.
Toss gnocchi in the butter and finish with Parmesan, pepper, and salt.', '/images/recipe-033.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (33, 0, '400 g potato gnocchi');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (33, 1, '3 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (33, 2, '8 leaves sage');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (33, 3, '25 g grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (33, 4, '0.25 tsp black pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (33, 5, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (33, 3);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (33, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (33, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (33, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (33, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (34, 'White Bean and Rosemary Stew', 12, 10, 25, 0, 3, 'Soften onion and carrot in oil, then add garlic and rosemary.
Add beans, stock, and salt and simmer 20 minutes.
Mash a portion of the beans to thicken and finish with lemon.', '/images/recipe-034.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 0, '2 cans of 400 g drained cannellini bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 1, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 2, '1 diced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 3, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 4, '1 tsp chopped rosemary');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 5, '2 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 6, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 7, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (34, 8, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (34, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (34, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (34, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (34, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (35, 'Lemon Ricotta Pasta', 12, 10, 12, 0, 2, 'Cook pasta and reserve 0.5 cup cooking water.
Mix ricotta, lemon zest, 1 tbsp lemon juice, Parmesan, oil, salt, and pepper.
Toss with hot pasta off the heat, adding cooking water until creamy.', '/images/recipe-035.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 0, '180 g pasta');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 1, '150 g ricotta');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 2, '1 zest and juice lemon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 3, '25 g grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 4, '1 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 5, '0.25 tsp black pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (35, 6, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (35, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (35, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (35, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (35, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (36, 'Chicken Tinga Tacos', 16, 15, 25, 0, 3, 'Soften onion in oil, then add garlic, tomatoes, chipotle, and salt; simmer 15 minutes.
Stir in chicken and heat thoroughly.
Serve in warmed tortillas with cilantro and lime.', '/images/recipe-036.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 0, '350 g cooked shredded chicken');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 1, '1 sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 2, '400 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 3, '1 chopped chipotle in adobo');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 4, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 5, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 6, '9 corn tortilla');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 7, '2 tbsp chopped cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 8, '1 lime');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (36, 9, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (36, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (36, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (36, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (36, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (37, 'Black Bean Tacos', 16, 10, 15, 0, 2, 'Soften onion in oil, then add beans, cumin, salt, and 0.25 cup water.
Simmer 8 minutes and lightly mash.
Fill warm tortillas with beans, avocado, salsa, and lime juice.', '/images/recipe-037.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 0, '1 can of 400 g drained black bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 1, '0.5 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 2, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 3, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 4, '6 corn tortilla');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 5, '1 sliced avocado');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 6, '0.5 cup salsa');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 7, '1 lime');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (37, 8, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (37, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (37, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (37, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (37, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (38, 'Chicken Enchiladas Rojas', 16, 20, 25, 0, 4, 'Warm tortillas in a lightly oiled skillet until pliable.
Fill with chicken and onion, roll, and place seam-side down over a little sauce in a baking dish.
Cover with remaining sauce and cheese and bake at 375°F for 20–25 minutes until hot throughout.', '/images/recipe-038.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (38, 0, '12 corn tortilla');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (38, 1, '400 g cooked shredded chicken');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (38, 2, '2.5 cups red enchilada sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (38, 3, '150 g grated Monterey Jack');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (38, 4, '0.5 finely diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (38, 5, '1 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (38, 26);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (38, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (38, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (38, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (39, 'Chilaquiles Rojos', 16, 10, 15, 0, 2, 'Simmer salsa with 0.25 cup water for 5 minutes.
Separately cook eggs in oil.
Fold chips into hot salsa just until coated, then top with eggs, cheese, crema, and onion and serve immediately.', '/images/recipe-039.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 0, '150 g thick tortilla chip');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 1, '1.5 cups red salsa');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 2, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 3, '40 g crumbled queso fresco');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 4, '2 tbsp crema');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 5, '2 tbsp sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (39, 6, '1 tsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (39, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (39, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (39, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (39, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (39, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (40, 'Calabacitas', 16, 15, 20, 0, 3, 'Soften onion and garlic in oil.
Add zucchini, corn, tomatoes, and salt and cook, stirring, for 12–15 minutes until vegetables are tender.
Top with crumbled cheese.', '/images/recipe-040.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 0, '3 diced zucchini');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 1, '1 cup corn');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 2, '2 chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 3, '0.5 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 4, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 5, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 6, '50 g queso fresco');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (40, 7, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (40, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (40, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (40, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (40, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (41, 'Sopa de Fideo', 16, 10, 20, 0, 3, 'Blend tomatoes, onion, and garlic with 0.5 cup of the stock.
Toast noodles in oil until golden, then carefully add blended sauce and cook 3 minutes.
Add remaining stock and salt and simmer until noodles are tender.', '/images/recipe-041.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 0, '100 g fideo noodle');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 1, '3 chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 2, '0.25 onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 3, '1 clove garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 4, '4 cups chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 5, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (41, 6, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (41, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (41, 37);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (41, 2);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (41, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (42, 'Guacamole', 16, 15, 0, 0, 4, 'Mash avocado with lime and salt.
Fold in onion, tomato, jalapeno, and cilantro.
Serve promptly or cover the surface directly and refrigerate.', '/images/recipe-042.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 0, '2 avocado');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 1, '2 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 2, '2 tbsp finely diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 3, '1 diced tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 4, '0.5 minced jalapeno');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 5, '2 tbsp chopped cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (42, 6, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (42, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (42, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (42, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (42, 24);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (43, 'Esquites', 16, 10, 15, 0, 3, 'Cook corn in butter over medium-high heat until tender with browned spots.
Remove from heat and stir in mayonnaise and lime juice.
Top with cotija, chili powder, and cilantro.', '/images/recipe-043.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 0, '3 cups corn');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 1, '1 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 2, '2 tbsp mayonnaise');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 3, '1 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 4, '40 g crumbled cotija');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 5, '0.5 tsp chili powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (43, 6, '1 tbsp chopped cilantro');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (43, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (43, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (43, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (43, 36);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (43, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (44, 'Pinto Bean Tostadas', 16, 15, 10, 0, 2, 'Warm beans, thinning with water if needed.
Spread over tostada shells.
Top with lettuce, tomato, avocado, cheese, and salsa and serve immediately.', '/images/recipe-044.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 0, '6 tostada shell');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 1, '1.5 cups refried pinto bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 2, '1 cup shredded lettuce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 3, '1 diced tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 4, '1 sliced avocado');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 5, '40 g queso fresco');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (44, 6, '0.5 cup salsa');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (44, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (44, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (44, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (44, 14);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (45, 'Pico de Gallo', 16, 15, 0, 15, 4, 'Combine tomato, onion, jalapeno, and cilantro.
Stir in lime juice and salt.
Chill for 15 minutes, then stir before serving.', '/images/recipe-045.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (45, 0, '3 diced tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (45, 1, '0.5 finely diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (45, 2, '1 minced jalapeno');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (45, 3, '0.25 cup chopped cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (45, 4, '2 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (45, 5, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (45, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (45, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (45, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (45, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (45, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (46, 'Ratatouille', 7, 20, 45, 0, 4, 'Brown eggplant in half the oil and set aside.
Soften onion and pepper in remaining oil; add garlic, zucchini, tomatoes, thyme, salt, and eggplant.
Cover and simmer 30 minutes, then uncover briefly to reduce excess liquid.', '/images/recipe-046.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 0, '1 cubed eggplant');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 1, '2 sliced zucchini');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 2, '1 diced bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 3, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 4, '4 chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 5, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 6, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 7, '1 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (46, 8, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (46, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (46, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (46, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (46, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (47, 'French Onion Soup', 7, 15, 65, 0, 4, 'Cook onions in butter over medium-low heat for 40–45 minutes until deeply golden.
Add stock, thyme, salt, and pepper and simmer 15 minutes.
Ladle into ovenproof bowls, top with toasted bread and cheese, and broil until melted.', '/images/recipe-047.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 0, '4 thinly sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 1, '3 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 2, '5 cups beef stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 3, '0.5 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 4, '4 slices baguette');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 5, '100 g grated Gruyere');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 6, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (47, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (47, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (47, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (47, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (47, 2);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (47, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (48, 'Potato Leek Soup', 7, 15, 30, 0, 4, 'Soften leeks in butter without browning.
Add potatoes, stock, salt, and pepper and simmer until potatoes are tender, about 25 minutes.
Blend carefully, stir in cream, and warm gently.', '/images/recipe-048.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 0, '3 washed and sliced leek');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 1, '500 g peeled and diced potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 2, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 3, '4 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 4, '0.5 cup heavy cream');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 5, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (48, 6, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (48, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (48, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (48, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (48, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (49, 'Chicken with Mushroom Cream Sauce', 7, 15, 25, 0, 3, 'Season chicken with salt and brown in half the butter; remove.
Cook mushrooms and shallot in remaining butter, then add stock, cream, and thyme.
Return chicken and simmer until fully cooked and sauce has thickened.', '/images/recipe-049.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 0, '450 g cut into thin cutlets chicken breast');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 1, '250 g sliced mushroom');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 2, '1 diced shallot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 3, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 4, '0.75 cup chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 5, '0.5 cup heavy cream');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 6, '0.5 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (49, 7, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (49, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (49, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (49, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (49, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (50, 'Carrot Salad with Lemon', 7, 15, 0, 15, 3, 'Whisk lemon juice, oil, salt, and pepper.
Toss with carrots and parsley.
Chill for 15 minutes before serving.', '/images/recipe-050.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (50, 0, '4 grated carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (50, 1, '2 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (50, 2, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (50, 3, '2 tbsp chopped parsley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (50, 4, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (50, 5, '0.125 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (50, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (50, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (50, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (50, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (50, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (51, 'Mushroom and Cheese Crepes', 7, 20, 25, 20, 4, 'Whisk flour, eggs, milk, half the salt, and 1 tbsp melted butter; rest 20 minutes.
Cook mushrooms in 1 tbsp butter with remaining salt and parsley.
Make thin crepes in a skillet greased with remaining butter, fill with mushrooms and cheese, and warm until cheese melts.', '/images/recipe-051.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 0, '1 cup all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 1, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 2, '1.5 cups milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 3, '3 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 4, '300 g sliced mushroom');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 5, '100 g grated Gruyere');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 6, '2 tbsp chopped parsley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (51, 7, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (51, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (51, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (51, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (51, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (51, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (52, 'Herb-Roasted Chicken Thighs', 7, 15, 40, 5, 4, 'Mix butter, garlic, herbs, salt, and pepper and rub over chicken.
Place in a roasting dish with lemon wedges.
Roast at 425°F for about 35–40 minutes until chicken is fully cooked and skin is browned; rest 5 minutes.', '/images/recipe-052.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 0, '4 bone-in skin-on chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 1, '2 tbsp softened butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 2, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 3, '1 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 4, '1 tsp chopped rosemary');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 5, '1 cut into wedges lemon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 6, '0.75 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (52, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (52, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (52, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (52, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (52, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (52, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (53, 'Apple Clafoutis', 7, 20, 35, 0, 6, 'Grease a baking dish with butter and arrange apple slices inside.
Whisk eggs, milk, flour, sugar, vanilla, and salt into a smooth batter and pour over apples.
Bake at 350°F for 30–35 minutes until puffed and set.', '/images/recipe-053.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 0, '2 thinly sliced apple');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 1, '3 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 2, '1 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 3, '0.5 cup all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 4, '0.33 cup sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 5, '1 tsp vanilla extract');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 6, '1 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (53, 7, '1 pinch salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (53, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (53, 15);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (53, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (53, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (54, 'Greek Village Salad', 9, 15, 0, 0, 3, 'Combine tomatoes, cucumber, onion, pepper, and olives.
Dress with oil and vinegar.
Top with feta and oregano and serve.', '/images/recipe-054.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 0, '3 chopped tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 1, '1 sliced cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 2, '0.25 sliced red onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 3, '1 sliced green bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 4, '100 g feta');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 5, '0.33 cup Kalamata olive');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 6, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 7, '1 tbsp red wine vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (54, 8, '1 tsp oregano');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (54, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (54, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (54, 25);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (54, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (54, 24);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (55, 'Chicken Souvlaki', 9, 15, 15, 30, 3, 'Marinate chicken in oil, lemon, garlic, oregano, and salt in the refrigerator for 30 minutes.
Thread onto skewers and grill, turning, until fully cooked.
Serve with warmed pita and tzatziki.', '/images/recipe-055.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 0, '450 g cubed chicken breast');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 1, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 2, '2 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 3, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 4, '1 tsp oregano');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 5, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 6, '3 pita');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (55, 7, '0.5 cup tzatziki');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (55, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (55, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (55, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (55, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (55, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (56, 'Tzatziki', 9, 15, 0, 20, 4, 'Squeeze excess liquid from cucumber.
Mix with yogurt, garlic, oil, lemon, dill, and salt.
Chill for 20 minutes before serving.', '/images/recipe-056.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 0, '1 cup Greek yogurt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 1, '0.5 grated cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 2, '1 clove minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 3, '1 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 4, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 5, '1 tbsp chopped dill');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (56, 6, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (56, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (56, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (56, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (56, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (56, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (57, 'Spinach and Feta Pie', 9, 25, 40, 0, 6, 'Squeeze spinach very dry and mix with feta, eggs, scallions, dill, and pepper.
Layer four oiled phyllo sheets in a baking dish, add filling, and cover with four more oiled sheets.
Tuck edges and bake at 375°F for 35–40 minutes until golden and set.', '/images/recipe-057.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 0, '500 g thawed frozen spinach');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 1, '200 g crumbled feta');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 2, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 3, '3 sliced scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 4, '2 tbsp chopped dill');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 5, '8 sheets phyllo dough');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 6, '4 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (57, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (57, 12);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (57, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (57, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (57, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (57, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (58, 'Lemon Potatoes', 9, 15, 60, 0, 4, 'Toss potatoes with all remaining ingredients in a roasting dish.
Roast at 400°F for 50–60 minutes, turning twice.
Add a splash of water if the pan dries before potatoes are tender.', '/images/recipe-058.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 0, '800 g cut into wedges potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 1, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 2, '0.25 cup lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 3, '0.75 cup vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 4, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 5, '1 tsp oregano');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (58, 6, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (58, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (58, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (58, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (58, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (58, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (59, 'Chickpea and Tomato Stew', 9, 15, 30, 0, 4, 'Soften onion and garlic in oil.
Add chickpeas, tomatoes, oregano, stock, and salt and simmer 25 minutes.
Finish with lemon juice and lightly mash a few chickpeas if a thicker stew is desired.', '/images/recipe-059.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 0, '2 cans of 400 g drained chickpea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 1, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 2, '400 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 3, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 4, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 5, '1 tsp oregano');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 6, '1 cup vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 7, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (59, 8, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (59, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (59, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (59, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (59, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (60, 'Gazpacho', 21, 20, 0, 60, 4, 'Soak bread briefly in water and squeeze out excess.
Blend with chopped vegetables, garlic, oil, vinegar, and salt until smooth, adding water to thin.
Refrigerate at least 1 hour before serving.', '/images/recipe-060.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 0, '700 g tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 1, '0.5 cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 2, '1 red bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 3, '1 clove garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 4, '40 g stale bread');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 5, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 6, '2 tbsp sherry vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (60, 7, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (60, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (60, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (60, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (60, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (61, 'Tortilla Espanola', 21, 15, 35, 0, 4, 'Cook potatoes and onion gently in oil in an ovenproof skillet until tender; drain excess oil.
Mix with beaten eggs and salt and return to the skillet.
Cook over low heat until edges set, then finish under the broiler until the center is set.', '/images/recipe-061.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (61, 0, '500 g thinly sliced potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (61, 1, '1 thinly sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (61, 2, '6 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (61, 3, '0.25 cup olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (61, 4, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (61, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (61, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (61, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (61, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (62, 'Gambas al Ajillo', 21, 10, 10, 0, 2, 'Warm garlic and chili in oil until fragrant without burning.
Add shrimp and salt and cook until opaque.
Finish with parsley and lemon and serve with bread.', '/images/recipe-062.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 0, '300 g peeled shrimp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 1, '4 cloves sliced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 2, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 3, '0.5 tsp chili flake');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 4, '1 tbsp chopped parsley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 5, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 6, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (62, 7, '4 slices baguette');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (62, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (62, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (62, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (62, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (63, 'Patatas Bravas with Quick Tomato Sauce', 21, 15, 40, 0, 4, 'Toss potatoes with 2 tbsp oil and half the salt and roast at 425°F for 35–40 minutes, turning once.
Cook garlic in remaining oil, add tomato, spices, remaining salt, and vinegar, and simmer 10 minutes.
Spoon sauce over potatoes just before serving.', '/images/recipe-063.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 0, '700 g cubed potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 1, '3 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 2, '200 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 3, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 4, '1 tsp smoked paprika');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 5, '0.5 tsp chili powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 6, '1 tsp sherry vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (63, 7, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (63, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (63, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (63, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (63, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (64, 'Chickpeas with Spinach', 21, 10, 20, 0, 3, 'Warm garlic in oil, then add paprika and cumin briefly.
Add chickpeas, stock, and salt and simmer 10 minutes.
Fold in spinach until wilted and finish with vinegar.', '/images/recipe-064.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 0, '1 can of 400 g drained chickpea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 1, '200 g spinach');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 2, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 3, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 4, '1 tsp smoked paprika');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 5, '0.5 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 6, '1 tbsp sherry vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 7, '0.5 cup vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (64, 8, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (64, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (64, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (64, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (64, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (65, 'Baked Macaroni and Cheese', 1, 15, 30, 0, 4, 'Cook macaroni just short of tender.
Cook flour in 2 tbsp butter for 1 minute, gradually whisk in milk, and simmer until thick; stir in cheese, salt, and pepper off heat.
Combine with pasta, top with crumbs mixed with remaining melted butter, and bake at 375°F for 20 minutes.', '/images/recipe-065.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 0, '250 g elbow macaroni');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 1, '3 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 2, '2 tbsp all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 3, '2 cups milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 4, '200 g grated cheddar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 5, '0.5 cup breadcrumb');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 6, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (65, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (65, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (65, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (65, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (65, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (66, 'Turkey Chili', 1, 15, 40, 0, 4, 'Soften onion and pepper in oil, then add turkey and cook through.
Stir in spices, beans, tomatoes, stock, and salt.
Simmer 25–30 minutes, stirring occasionally.', '/images/recipe-066.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 0, '450 g ground turkey');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 1, '1 can of 400 g drained kidney bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 2, '400 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 3, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 4, '1 diced bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 5, '1 tbsp chili powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 6, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 7, '1 cup chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 8, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (66, 9, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (66, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (66, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (66, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (66, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (67, 'BBQ Pulled Chicken Sandwiches', 1, 10, 25, 0, 4, 'Gently simmer chicken in stock until fully cooked, then shred and mix with barbecue sauce and a little stock.
Toss cabbage with mayonnaise, vinegar, and salt.
Fill buns with hot chicken and slaw.', '/images/recipe-067.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 0, '500 g chicken breast');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 1, '1 cup chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 2, '0.75 cup barbecue sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 3, '4 burger bun');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 4, '2 cups shredded green cabbage');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 5, '2 tbsp mayonnaise');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 6, '1 tbsp apple cider vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (67, 7, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (67, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (67, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (67, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (67, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (68, 'Cajun Shrimp and Rice', 1, 15, 30, 0, 3, 'Soften vegetables in butter, stir in rice and half the seasoning, then add stock.
Cover and simmer until rice is nearly tender, about 15–18 minutes.
Place shrimp seasoned with remaining spice on top, cover, and cook until shrimp are opaque and rice is tender.', '/images/recipe-068.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 0, '350 g peeled shrimp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 1, '1 cup dry long-grain rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 2, '1 diced bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 3, '0.5 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 4, '1 stalk diced celery');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 5, '2 cups chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 6, '2 tsp Cajun seasoning');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (68, 7, '2 tbsp butter');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (68, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (68, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (68, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (68, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (69, 'Corn Chowder', 1, 15, 30, 0, 4, 'Soften onion and celery in butter.
Add potatoes, corn, stock, salt, and pepper and simmer until potatoes are tender.
Mash some potato to thicken, add milk, and warm gently.', '/images/recipe-069.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 0, '3 cups corn');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 1, '300 g diced potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 2, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 3, '2 stalks diced celery');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 4, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 5, '3 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 6, '1 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 7, '0.75 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (69, 8, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (69, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (69, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (69, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (69, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (70, 'Chicken Noodle Soup', 1, 15, 30, 0, 4, 'Soften onion, carrot, and celery in oil.
Add stock, thyme, and salt and simmer 15 minutes.
Add noodles and cook until tender, then stir in chicken and heat through.', '/images/recipe-070.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 0, '300 g cooked shredded chicken');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 1, '120 g egg noodle');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 2, '2 sliced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 3, '2 stalks sliced celery');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 4, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 5, '6 cups chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 6, '1 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 7, '0.5 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (70, 8, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (70, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (70, 2);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (70, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (70, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (71, 'Buttermilk Pancakes', 1, 10, 15, 0, 4, 'Mix dry ingredients, then gently fold in buttermilk, egg, and 2 tbsp butter.
Cook small rounds on a griddle greased with remaining butter, flipping when bubbles appear and cooking until set.
Serve with syrup.', '/images/recipe-071.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 0, '1.5 cups all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 1, '1.25 cups buttermilk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 2, '1 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 3, '3 tbsp melted butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 4, '2 tbsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 5, '1 tsp baking powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 6, '0.5 tsp baking soda');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 7, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (71, 8, '0.25 cup maple syrup');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (71, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (71, 13);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (71, 3);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (71, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (72, 'Apple Crisp', 1, 20, 40, 0, 6, 'Toss apples with lemon, cinnamon, and 2 tbsp of the sugar in a baking dish.
Rub butter into oats, flour, remaining sugar, and salt and scatter over apples.
Bake at 375°F for 35–40 minutes until bubbling and golden.', '/images/recipe-072.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 0, '5 sliced apple');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 1, '1 cup rolled oat');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 2, '0.5 cup all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 3, '0.5 cup brown sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 4, '6 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 5, '1 tsp cinnamon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 6, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (72, 7, '1 pinch salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (72, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (72, 15);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (72, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (72, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (73, 'Buffalo Cauliflower Wraps', 1, 15, 30, 0, 3, 'Toss cauliflower with oil and salt and roast at 425°F for 25 minutes.
Coat with buffalo sauce and roast 5 minutes more.
Wrap in tortillas with lettuce, carrot, and ranch.', '/images/recipe-073.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 0, '1 small head in florets cauliflower');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 1, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 2, '0.33 cup buffalo sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 3, '3 flour tortilla');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 4, '1 cup shredded lettuce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 5, '1 shredded carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 6, '3 tbsp ranch dressing');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (73, 7, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (73, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (73, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (73, 10);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (73, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (74, 'Southern-Style Black-Eyed Peas', 1, 15, 30, 0, 4, 'Soften onion and celery in oil, then add garlic and paprika.
Add peas, stock, collards, and salt and simmer 25 minutes until greens are tender.
Mash a few peas for a thicker broth.', '/images/recipe-074.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 0, '2 cans of 400 g drained black-eyed pea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 1, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 2, '1 stalk diced celery');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 3, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 4, '2 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 5, '1 tsp smoked paprika');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 6, '2 cups chopped collard green');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 7, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (74, 8, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (74, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (74, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (74, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (74, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (75, 'Jerk-Inspired Chicken Thighs', 13, 20, 40, 125, 4, 'Blend all ingredients except chicken into a paste and coat chicken; refrigerate 2 hours.
Roast at 425°F for 35–40 minutes until fully cooked.
Rest 5 minutes before serving.', '/images/recipe-075.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 0, '4 bone-in chicken thigh');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 1, '3 scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 2, '3 cloves garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 3, '1 tbsp grated ginger');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 4, '0.5 Scotch bonnet chili');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 5, '1 tsp ground allspice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 6, '1 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 7, '1 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 8, '2 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 9, '1 tbsp brown sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 10, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (75, 11, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (75, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (75, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (75, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (75, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (76, 'Rice and Peas', 13, 10, 30, 10, 4, 'Rinse rice and combine with all remaining ingredients in a saucepan.
Bring to a gentle boil, cover, and cook over low heat for 18–22 minutes until liquid is absorbed.
Remove from heat and rest covered for 10 minutes, then fluff.', '/images/recipe-076.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 0, '1.5 cups dry long-grain rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 1, '1 can of 400 g drained kidney bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 2, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 3, '1 cup water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 4, '2 chopped scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 5, '1 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 6, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 7, '0.25 tsp ground allspice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (76, 8, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (76, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (76, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (76, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (76, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (77, 'Cuban-Style Black Beans', 5, 15, 30, 0, 4, 'Soften onion and pepper in oil, then add garlic and spices.
Add beans, stock, and salt and simmer 25 minutes.
Mash a few beans and stir in vinegar.', '/images/recipe-077.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 0, '2 cans of 400 g drained black bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 1, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 2, '1 diced green bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 3, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 4, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 5, '0.5 tsp oregano');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 6, '1.5 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 7, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 8, '1 tbsp red wine vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (77, 9, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (77, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (77, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (77, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (77, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (78, 'Arroz con Gandules', 20, 15, 30, 10, 4, 'Cook sofrito in oil for 3 minutes and stir in tomato sauce and sazon.
Add rinsed rice, pigeon peas, olives, and stock and bring to a boil.
Cover and cook on low for about 20 minutes until rice is tender; rest covered 10 minutes.', '/images/recipe-078.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 0, '1.5 cups dry long-grain rice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 1, '1 can of 400 g drained pigeon pea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 2, '0.33 cup sofrito');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 3, '0.25 cup tomato sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 4, '0.25 cup sliced green olive');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 5, '1 tsp sazon seasoning');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 6, '2.25 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (78, 7, '2 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (78, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (78, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (78, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (78, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (79, 'Coconut Chickpea Curry', 24, 15, 25, 0, 4, 'Soften onion in oil, then add garlic and curry powder for 1 minute.
Add chickpeas, potato, coconut milk, stock, and salt and simmer until potatoes are tender.
Finish with lime juice.', '/images/recipe-079.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 0, '2 cans of 400 g drained chickpea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 1, '250 g diced potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 2, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 3, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 4, '1 tbsp curry powder');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 5, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 6, '1 cup vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 7, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 8, '1 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (79, 9, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (79, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (79, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (79, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (79, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (80, 'Moqueca-Inspired Fish Stew', 2, 15, 25, 0, 4, 'Season fish with half the lime juice and salt.
Soften onion and garlic in oil, then add pepper, tomatoes, and coconut milk and simmer 15 minutes.
Add fish and gently cook until opaque and flaky; finish with remaining lime and cilantro.', '/images/recipe-080.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 0, '500 g in chunks firm white fish');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 1, '400 ml coconut milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 2, '3 sliced tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 3, '1 sliced bell pepper');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 4, '1 sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 5, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 6, '2 tbsp lime juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 7, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 8, '0.25 cup chopped cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (80, 9, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (80, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (80, 14);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (80, 1);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (80, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (81, 'Brazilian-Style Black Bean Stew', 2, 15, 35, 0, 4, 'Brown sausage in oil, then soften onion and garlic in the same pan.
Add beans, bay leaf, water, and salt and simmer 25–30 minutes.
Remove bay leaf, mash a few beans to thicken, and serve with orange wedges.', '/images/recipe-081.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 0, '2 cans of 400 g drained black bean');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 1, '200 g sliced smoked sausage');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 2, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 3, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 4, '1 bay leaf');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 5, '2 cups water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 6, '1 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 7, '1 cut into wedges orange');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (81, 8, '0.25 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (81, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (81, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (81, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (81, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (82, 'Pao de Queijo', 2, 15, 25, 15, 12, 'Heat milk, oil, and salt just to a boil and stir into tapioca starch.
Let cool until warm, then knead in egg and cheese to form sticky dough.
With oiled hands shape 12 balls and bake at 400°F for 20–25 minutes until puffed and lightly golden.', '/images/recipe-082.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (82, 0, '2 cups tapioca starch');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (82, 1, '0.75 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (82, 2, '0.25 cup neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (82, 3, '1 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (82, 4, '0.75 cup finely grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (82, 5, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (82, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (82, 5);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (82, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (82, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (83, 'Lomo Saltado', 19, 20, 25, 0, 3, 'Bake fries according to package directions.
Sear beef in hot oil in batches, then quickly stir-fry onion, tomato, and garlic.
Return beef, add soy sauce and vinegar, and toss with fries and cilantro; serve alongside rice.', '/images/recipe-083.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 0, '400 g strips beef sirloin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 1, '1 in wedges red onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 2, '2 in wedges tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 3, '2 tbsp soy sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 4, '1 tbsp red wine vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 5, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 6, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 7, '250 g frozen french fries');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 8, '2 tbsp chopped cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (83, 9, '2 cups cooked rice');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (83, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (83, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (83, 20);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (83, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (84, 'Aji de Gallina-Inspired Chicken', 19, 20, 25, 0, 4, 'Soak bread in evaporated milk and blend smooth.
Soften onion and garlic in oil, then add chili paste and cook briefly.
Stir in bread mixture, stock, walnuts, and chicken and simmer 10 minutes; finish with Parmesan.', '/images/recipe-084.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 0, '400 g cooked shredded chicken');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 1, '3 slices white bread');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 2, '1 cup evaporated milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 3, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 4, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 5, '2 tbsp aji amarillo paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 6, '0.25 cup ground walnut');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 7, '25 g grated Parmesan');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 8, '1 cup chicken stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (84, 9, '1 tbsp neutral oil');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (84, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (84, 22);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (84, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (84, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (85, 'Chickpea and Apricot Tagine', 17, 15, 30, 0, 4, 'Soften onion and carrot in oil and stir in spices.
Add chickpeas, apricots, tomatoes, stock, and salt.
Cover and simmer 25 minutes until carrots are tender.', '/images/recipe-085.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 0, '2 cans of 400 g drained chickpea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 1, '0.5 cup chopped dried apricot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 2, '2 sliced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 3, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 4, '400 g crushed tomato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 5, '1 cup vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 6, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 7, '0.5 tsp cinnamon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 8, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (85, 9, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (85, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (85, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (85, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (85, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (86, 'Chermoula Baked Fish', 17, 15, 20, 0, 3, 'Mix herbs, garlic, lemon, oil, spices, and salt.
Spread over fish in a baking dish.
Bake at 400°F for 15–20 minutes depending on thickness, until opaque and flaky.', '/images/recipe-086.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 0, '450 g fillets firm white fish');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 1, '0.25 cup chopped cilantro');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 2, '0.25 cup chopped parsley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 3, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 4, '2 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 5, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 6, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 7, '1 tsp paprika');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (86, 8, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (86, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (86, 16);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (86, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (86, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (87, 'Moroccan Carrot Salad', 17, 15, 10, 20, 4, 'Boil carrots until just tender, about 8–10 minutes, and drain.
Toss while warm with oil, lemon, spices, garlic, and salt.
Cool to room temperature and fold in parsley.', '/images/recipe-087.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 0, '500 g sliced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 1, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 2, '2 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 3, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 4, '0.5 tsp paprika');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 5, '1 clove minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 6, '2 tbsp chopped parsley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (87, 7, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (87, 33);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (87, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (87, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (87, 24);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (88, 'Vegetable Couscous', 17, 15, 25, 0, 4, 'Soften onion and carrot in oil, then add zucchini, chickpeas, spices, salt, and 1 cup stock; simmer until tender.
Bring remaining stock to a boil, pour over couscous, cover, and rest 5 minutes or follow package liquid ratio.
Fluff and serve with vegetables and their broth.', '/images/recipe-088.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 0, '1 cup dry couscous');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 1, '1 can of 400 g drained chickpea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 2, '1 diced zucchini');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 3, '2 diced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 4, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 5, '2.5 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 6, '1 tsp cumin');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 7, '0.5 tsp turmeric');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 8, '2 tbsp olive oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (88, 9, '0.5 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (88, 13);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (88, 30);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (88, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (88, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (89, 'Misir Wot', 6, 15, 35, 0, 4, 'Cook onion gently in oil until soft, then add garlic, ginger, berbere, and tomato paste.
Add rinsed lentils, water, and salt and simmer 25–30 minutes until soft, stirring often.
Add a little water as needed for a thick stew.', '/images/recipe-089.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 0, '1 cup dry red lentil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 1, '1 finely diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 2, '3 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 3, '1 tbsp grated ginger');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 4, '1 tbsp berbere');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 5, '1 tbsp tomato paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 6, '3 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 7, '3 cups water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (89, 8, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (89, 31);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (89, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (89, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (89, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (90, 'Tikil Gomen', 6, 15, 35, 0, 4, 'Soften onion and carrot in oil, then add garlic and turmeric.
Add cabbage, potatoes, water, and salt and cover.
Cook gently for 25–30 minutes, stirring occasionally, until vegetables are tender.', '/images/recipe-090.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 0, '0.5 head sliced green cabbage');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 1, '300 g diced potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 2, '2 sliced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 3, '1 sliced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 4, '2 cloves minced garlic');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 5, '0.5 tsp turmeric');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 6, '3 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 7, '0.75 cup water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (90, 8, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (90, 21);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (90, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (90, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (90, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (91, 'Warm German Potato Salad', 8, 15, 25, 0, 4, 'Boil potatoes until tender, drain, and slice.
Crisp bacon, remove, and soften onion in 1 tbsp of the rendered fat.
Add vinegar, water, sugar, salt, and pepper; toss warm potatoes with dressing, bacon, and parsley.', '/images/recipe-091.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 0, '700 g potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 1, '100 g diced bacon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 2, '0.5 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 3, '3 tbsp apple cider vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 4, '3 tbsp water');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 5, '1 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 6, '2 tbsp chopped parsley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 7, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (91, 8, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (91, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (91, 28);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (91, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (91, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (92, 'Cucumber Dill Salad', 8, 15, 0, 25, 4, 'Salt cucumbers and leave 10 minutes, then drain well.
Mix sour cream, vinegar, dill, sugar, and pepper.
Fold in cucumbers and chill before serving.', '/images/recipe-092.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 0, '2 thinly sliced cucumber');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 1, '0.5 cup sour cream');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 2, '1 tbsp white wine vinegar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 3, '2 tbsp chopped dill');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 4, '1 tsp sugar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 5, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (92, 6, '0.125 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (92, 23);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (92, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (92, 34);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (92, 7);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (93, 'Pork Schnitzel', 8, 20, 15, 0, 3, 'Pound pork evenly thin and season.
Coat in flour, beaten egg, and breadcrumbs in that order.
Shallow-fry in hot oil until golden on both sides and cooked through; drain and serve with lemon.', '/images/recipe-093.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 0, '3 boneless thin cutlets pork cutlet');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 1, '0.5 cup all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 2, '2 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 3, '1 cup breadcrumb');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 4, '0.5 cup neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 5, '1 cut into wedges lemon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 6, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (93, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (93, 9);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (93, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (93, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (93, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (94, 'Cottage Pie', 3, 20, 50, 0, 4, 'Boil potatoes and mash with butter, milk, and half the salt.
Brown beef with onion and carrot, add tomato paste, stock, Worcestershire, and remaining salt, and simmer 15 minutes; stir in peas.
Spread filling in a baking dish, top with mash, and bake at 400°F for 20 minutes.', '/images/recipe-094.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 0, '450 g ground beef');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 1, '700 g peeled and cubed potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 2, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 3, '2 diced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 4, '1 cup frozen pea');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 5, '1 cup beef stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 6, '1 tbsp tomato paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 7, '1 tbsp Worcestershire sauce');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 8, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 9, '0.25 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (94, 10, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (94, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (94, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (94, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (94, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (95, 'Leek and Cheddar Tart', 3, 20, 35, 0, 6, 'Line a tart pan with pastry and blind-bake at 375°F for 10 minutes using pie weights.
Soften leeks in butter and mix with eggs, milk, cheese, salt, and pepper.
Remove weights, fill the shell, and bake 25 minutes or until filling is set.', '/images/recipe-095.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 0, '1 sheet about 250 g shortcrust pastry');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 1, '2 washed and sliced leek');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 2, '1 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 3, '3 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 4, '0.75 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 5, '100 g grated cheddar');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 6, '0.25 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (95, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (95, 3);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (95, 4);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (95, 29);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (95, 39);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (96, 'Mushroom and Barley Soup', 3, 15, 45, 0, 4, 'Brown mushrooms in butter, then add onion and carrot and soften.
Stir in barley, stock, thyme, salt, and pepper.
Simmer 35–45 minutes until barley is tender, adding water if needed.', '/images/recipe-096.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 0, '0.75 cup pearl barley');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 1, '300 g sliced mushroom');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 2, '1 diced onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 3, '2 diced carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 4, '6 cups vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 5, '0.5 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 6, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 7, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (96, 8, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (96, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (96, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (96, 5);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (96, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (97, 'Colcannon', 11, 15, 25, 0, 4, 'Boil potatoes until tender and drain.
Cook cabbage and scallions in 1 tbsp butter with a splash of water until tender.
Mash potatoes with warm milk, remaining butter, salt, and pepper, then fold in greens.', '/images/recipe-097.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 0, '700 g peeled and cubed potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 1, '3 cups shredded green cabbage');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 2, '3 sliced scallion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 3, '3 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 4, '0.5 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 5, '0.75 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (97, 6, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (97, 3);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (97, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (97, 11);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (97, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (98, 'Irish Beef Stew', 11, 20, 120, 0, 4, 'Brown beef in oil in batches and remove.
Soften onion, add tomato paste, then return beef with stock, thyme, salt, and pepper; cover and simmer gently for 75 minutes.
Add potatoes and carrots and simmer 35–45 minutes more until meat and vegetables are tender.', '/images/recipe-098.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 0, '600 g cubed beef chuck');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 1, '400 g cubed potato');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 2, '3 chopped carrot');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 3, '1 chopped onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 4, '4 cups beef stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 5, '1 tbsp tomato paste');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 6, '1 tsp thyme');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 7, '2 tbsp neutral oil');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 8, '0.75 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (98, 9, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (98, 17);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (98, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (98, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (98, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (99, 'Swedish-Style Meatballs', 22, 20, 25, 0, 4, 'Soak crumbs in milk, then mix with meats, egg, onion, allspice, and salt; form small meatballs.
Brown in butter and remove.
Stir flour into pan fat, whisk in stock and cream, then return meatballs and simmer until fully cooked.', '/images/recipe-099.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 0, '250 g ground beef');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 1, '250 g ground pork');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 2, '0.5 cup breadcrumb');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 3, '0.25 cup milk');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 4, '1 egg');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 5, '0.5 grated onion');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 6, '0.25 tsp ground allspice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 7, '2 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 8, '2 tbsp all-purpose flour');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 9, '1.5 cups beef stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 10, '0.5 cup heavy cream');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (99, 11, '0.75 tsp salt');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (99, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (99, 27);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (99, 35);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (99, 19);
INSERT INTO recipes (id, name, cuisine_id, prep_minutes, cook_minutes, extra_minutes, servings, instructions, image_path) VALUES (100, 'Creamy Dill Salmon', 22, 10, 20, 0, 3, 'Season salmon with salt and pepper and sear in butter, then remove.
Add stock and cream and simmer briefly.
Return salmon and cook gently until opaque and flaky; finish with dill and lemon.', '/images/recipe-100.webp');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 0, '3 fillets about 150 g each salmon');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 1, '1 tbsp butter');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 2, '0.5 cup heavy cream');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 3, '0.5 cup vegetable stock');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 4, '2 tbsp chopped dill');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 5, '1 tbsp lemon juice');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 6, '0.5 tsp salt');
INSERT INTO recipe_ingredients (recipe_id, position, ingredient) VALUES (100, 7, '0.25 tsp black pepper');
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (100, 8);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (100, 18);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (100, 6);
INSERT INTO recipe_tags (recipe_id, tag_id) VALUES (100, 19);
ALTER TABLE cuisines ALTER COLUMN id RESTART WITH 26;
ALTER TABLE tags ALTER COLUMN id RESTART WITH 40;
ALTER TABLE recipes ALTER COLUMN id RESTART WITH 101;
