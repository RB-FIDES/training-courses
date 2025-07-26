# Ukrainian Course Installation Script
# Скрипт встановлення українських курсів

install_ukrainian_course <- function(course_name) {
  cat("Installing Ukrainian course:", course_name, "\n")
  cat("Встановлення українського курсу:", course_name, "\n")
  
  # Check if swirl is loaded
  if (!require(swirl, quietly = TRUE)) {
    stop("Please install and load swirl package first.\nБудь ласка, встановіть та завантажте пакет swirl спочатку.")
  }
  
  course_path <- file.path("swirl-courses", course_name)
  
  if (!dir.exists(course_path)) {
    stop("Course not found: ", course_path, "\nКурс не знайдено: ", course_path)
  }
  
  # Install course to swirl
  swirl::install_course_directory(course_path)
  
  cat("Course installed successfully!\nКурс успішно встановлено!\n")
  cat("To start, run: swirl()\nДля запуску виконайте: swirl()\n")
}

# List available Ukrainian courses
# Список доступних українських курсів
list_ukrainian_courses <- function() {
  cat("Available Ukrainian courses:\nДоступні українські курси:\n")
  
  courses_dir <- "swirl-courses"
  if (dir.exists(courses_dir)) {
    courses <- list.dirs(courses_dir, recursive = FALSE, full.names = FALSE)
    for (i in seq_along(courses)) {
      cat(i, ".", courses[i], "\n")
    }
  } else {
    cat("No courses directory found.\nТека курсів не знайдена.\n")
  }
}

# Quick setup function
# Функція швидкого налаштування
quick_setup_ukrainian <- function() {
  cat("Quick Ukrainian Setup\nШвидке налаштування українською\n")
  cat("====================\n")
  
  # Load Ukrainian phrases
  if (file.exists("ukrainian_phrases.R")) {
    source("ukrainian_phrases.R")
    cat("✓ Ukrainian phrases loaded\n✓ Українські фрази завантажені\n")
  }
  
  # Load activation script
  if (file.exists("activate_ukrainian.R")) {
    source("activate_ukrainian.R")
    cat("✓ Activation script loaded\n✓ Скрипт активації завантажений\n")
  }
  
  cat("\nRun activate() to start Ukrainian interface\n")
  cat("Виконайте activate() для запуску українського інтерфейсу\n")
}

# Example usage:
# install_ukrainian_course("Demo_Course_Ukrainian")
# list_ukrainian_courses()
# quick_setup_ukrainian()