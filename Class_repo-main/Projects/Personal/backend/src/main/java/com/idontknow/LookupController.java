package com.idontknow;

import com.idontknow.cuisine.Cuisine;
import com.idontknow.cuisine.CuisineRepository;
import com.idontknow.tag.Tag;
import com.idontknow.tag.TagRepository;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LookupController {
    private final CuisineRepository cuisineRepository;
    private final TagRepository tagRepository;

    public LookupController(CuisineRepository cuisineRepository, TagRepository tagRepository) {
        this.cuisineRepository = cuisineRepository;
        this.tagRepository = tagRepository;
    }

    @GetMapping("/api/cuisines")
    public List<Cuisine> getCuisines() {
        return cuisineRepository.findAllByOrderByNameAsc();
    }

    @GetMapping("/api/tags")
    public List<Tag> getTags() {
        return tagRepository.findAllByOrderByNameAsc();
    }
}
