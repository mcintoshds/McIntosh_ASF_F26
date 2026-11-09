package com.idontknow.recipe;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.UUID;
import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

import com.idontknow.recipe.Recipe;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

@RestController
public class RecipeImageController {

    private final RecipeService recipeService;
    private final Path uploadFolder =
            Path.of("uploads", "recipes").toAbsolutePath().normalize();

    public RecipeImageController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @PostMapping(
            value = "/api/recipes/{id}/image",
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE
    )
    public Recipe uploadImage(
            @PathVariable Long id,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        recipeService.getRecipeById(id);

        if (file.isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST, "Choose a picture first.");
        }

        if (file.getSize() > 5L * 1024 * 1024) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Choose a picture no larger than 5 MB.");
        }

        BufferedImage image = readImage(file);
        Files.createDirectories(uploadFolder);

        // Use our own filename and save the decoded picture as PNG.
        String filename = UUID.randomUUID() + ".png";
        Path destination = uploadFolder.resolve(filename);

        try {
            if (!ImageIO.write(image, "png", destination.toFile())) {
                throw new IOException("Could not save the picture.");
            }

            return recipeService.updateImagePath(id, "/api/images/" + filename);
        } catch (IOException | RuntimeException exception) {
            try {
                Files.deleteIfExists(destination);
            } catch (IOException cleanupError) {
                exception.addSuppressed(cleanupError);
            }

            throw exception;
        }
    }

    @GetMapping("/api/images/{filename}")
    public ResponseEntity<Resource> getImage(@PathVariable String filename) {
        if (!filename.matches("[a-f0-9-]{36}\\.png")) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Picture not found.");
        }

        Resource image = new FileSystemResource(uploadFolder.resolve(filename));

        if (!image.exists() || !image.isReadable()) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Picture not found.");
        }

        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_PNG)
                .header("X-Content-Type-Options", "nosniff")
                .body(image);
    }

    private BufferedImage readImage(MultipartFile file) {
        try (
                InputStream input = file.getInputStream();
                ImageInputStream imageInput = ImageIO.createImageInputStream(input)
        ) {
            if (imageInput == null) {
                throw invalidImage();
            }

            Iterator<ImageReader> readers = ImageIO.getImageReaders(imageInput);

            if (!readers.hasNext()) {
                throw invalidImage();
            }

            ImageReader reader = readers.next();

            try {
                String format = reader.getFormatName();

                if (!format.equalsIgnoreCase("JPEG")
                        && !format.equalsIgnoreCase("PNG")) {
                    throw invalidImage();
                }

                reader.setInput(imageInput);

                long pixels = (long) reader.getWidth(0) * reader.getHeight(0);

                if (pixels > 20_000_000) {
                    throw new ResponseStatusException(
                            HttpStatus.BAD_REQUEST,
                            "Resize the picture to 20 megapixels or less.");
                }

                BufferedImage image = reader.read(0);

                if (image == null) {
                    throw invalidImage();
                }

                return image;
            } finally {
                reader.dispose();
            }
        } catch (IOException exception) {
            throw invalidImage();
        }
    }

    private ResponseStatusException invalidImage() {
        return new ResponseStatusException(
                HttpStatus.BAD_REQUEST,
                "Choose a valid JPG or PNG picture.");
    }
}