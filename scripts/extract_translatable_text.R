# Text Extraction for Translation
# Витягування тексту для перекладу

library(yaml)

extract_lesson_text <- function(lesson_file) {
  
  if (!file.exists(lesson_file)) {
    stop("Lesson file not found: ", lesson_file)
  }
  
  # Read YAML content
  lesson_content <- yaml::read_yaml(lesson_file)
  
  # Extract translatable fields
  translatable_text <- list()
  
  for (i in seq_along(lesson_content)) {
    item <- lesson_content[[i]]
    
    # Extract text that needs translation
    if (!is.null(item$Output)) {
      translatable_text[[paste0("item_", i, "_output")]] <- item$Output
    }
    
    if (!is.null(item$Hint)) {
      translatable_text[[paste0("item_", i, "_hint")]] <- item$Hint
    }
    
    # Add other translatable fields as needed
  }
  
  return(translatable_text)
}

extract_course_text <- function(course_name) {
  
  course_path <- file.path("swirl-courses", course_name)
  
  if (!dir.exists(course_path)) {
    stop("Course not found: ", course_path)
  }
  
  # Find all lesson files
  lesson_files <- list.files(course_path, 
                            pattern = "lesson\\.yaml$", 
                            recursive = TRUE, 
                            full.names = TRUE)
  
  all_text <- list()
  
  for (lesson_file in lesson_files) {
    lesson_name <- basename(dirname(lesson_file))
    cat("Processing lesson:", lesson_name, "\n")
    
    lesson_text <- extract_lesson_text(lesson_file)
    all_text[[lesson_name]] <- lesson_text
  }
  
  return(all_text)
}

write_for_translation <- function(course_text, output_file) {
  
  cat("# Swirl Course Translation File\n", file = output_file)
  cat("# Generated on:", Sys.time(), "\n\n", file = output_file, append = TRUE)
  
  for (lesson_name in names(course_text)) {
    cat("## Lesson:", lesson_name, "\n", file = output_file, append = TRUE)
    
    lesson_text <- course_text[[lesson_name]]
    
    for (text_id in names(lesson_text)) {
      cat("### ", text_id, "\n", file = output_file, append = TRUE)
      cat("**English:**\n", file = output_file, append = TRUE)
      cat(lesson_text[[text_id]], "\n\n", file = output_file, append = TRUE)
      cat("**Ukrainian:**\n", file = output_file, append = TRUE)
      cat("[TRANSLATE THIS]\n\n", file = output_file, append = TRUE)
      cat("---\n\n", file = output_file, append = TRUE)
    }
  }
  
  cat("Translation file written to:", output_file, "\n")
}

# Example usage:
# course_text <- extract_course_text("Demo_Course_Ukrainian")
# write_for_translation(course_text, "translation_work.txt")