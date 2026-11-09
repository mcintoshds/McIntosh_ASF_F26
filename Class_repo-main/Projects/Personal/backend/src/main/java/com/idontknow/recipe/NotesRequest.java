package com.idontknow.recipe;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class NotesRequest {
    @NotNull(message = "Include the notes, even if emty.")
    @Size(max = 5000, message = "Keep cooking notes under 5,000 characters.")
    private String notes;

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

}
