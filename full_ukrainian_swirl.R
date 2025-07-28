# Full Ukrainian Swirl Implementation
# Повна українська реалізація Swirl

# Load dependencies
if (!require(swirl, quietly = TRUE)) {
  cat("Warning: swirl package not available\n")
  cat("Попередження: пакет swirl недоступний\n")
  cat("Please install manually: install.packages('swirl')\n")
  cat("Будь ласка, встановіть вручну: install.packages('swirl')\n")
  swirl_available <- FALSE
} else {
  swirl_available <- TRUE
}

# Load Ukrainian phrases
if (file.exists("ukrainian_phrases.R")) {
  source("ukrainian_phrases.R")
} else {
  warning("ukrainian_phrases.R not found - some functionality may be limited")
}

# Ukrainian-specific swirl configuration
setup_ukrainian_swirl_environment <- function() {
  cat("Setting up Ukrainian swirl environment...\n")
  cat("Налаштування українського середовища swirl...\n")
  
  # Configure swirl for Ukrainian
  options(
    swirl_language = "ukrainian",
    swirl_is_fun = TRUE,
    swirl_logging = TRUE
  )
  
  # Set encoding for Ukrainian characters
  if (Sys.info()["sysname"] != "Windows") {
    Sys.setlocale("LC_ALL", "uk_UA.UTF-8")
  }
  
  cat("✓ Ukrainian environment configured\n")
  cat("✓ Українське середовище налаштовано\n")
}

# Complete Ukrainian activation
activate_full_ukrainian <- function() {
  cat("=== Full Ukrainian Swirl Activation ===\n")
  cat("=== Повна активація українського Swirl ===\n\n")
  
  # Setup environment
  setup_ukrainian_swirl_environment()
  
  # Load Ukrainian phrases
  if (exists("activate_ukrainian_phrases_only")) {
    result <- activate_ukrainian_phrases_only()
    if (!result) {
      cat("Warning: Could not activate Ukrainian phrases\n")
      cat("Попередження: Не вдалося активувати українські фрази\n")
    }
  } else {
    cat("Warning: Ukrainian phrases functions not available\n")
    cat("Попередження: Функції українських фраз недоступні\n")
  }
  
  # Install Ukrainian courses if available
  if (dir.exists("swirl-courses")) {
    install_available_courses()
  }
  
  cat("\n✓ Full Ukrainian swirl ready!\n")
  cat("✓ Повний український swirl готовий!\n")
  cat("\nTo start learning: swirl()\n")
  cat("Для початку навчання: swirl()\n")
  
  invisible(TRUE)
}

# Install available courses
install_available_courses <- function() {
  cat("Installing available Ukrainian courses...\n")
  cat("Встановлення доступних українських курсів...\n")
  
  if (!swirl_available) {
    cat("Swirl not available - cannot install courses\n")
    cat("Swirl недоступний - неможливо встановити курси\n")
    return(0)
  }
  
  courses_dir <- "swirl-courses"
  courses <- list.dirs(courses_dir, recursive = FALSE, full.names = FALSE)
  
  installed_count <- 0
  
  for (course in courses) {
    course_path <- file.path(courses_dir, course)
    manifest_path <- file.path(course_path, "MANIFEST")
    
    if (file.exists(manifest_path)) {
      tryCatch({
        swirl::install_course_directory(course_path)
        cat("✓ Installed:", course, "\n")
        installed_count <- installed_count + 1
      }, error = function(e) {
        cat("✗ Failed to install:", course, "-", e$message, "\n")
      })
    }
  }
  
  cat("Installed", installed_count, "courses\n")
  cat("Встановлено", installed_count, "курсів\n")
  
  return(installed_count)
}

# Ukrainian course management
list_ukrainian_courses <- function() {
  cat("Available Ukrainian courses:\n")
  cat("Доступні українські курси:\n")
  
  if (!swirl_available) {
    cat("Swirl not available - cannot list courses\n")
    cat("Swirl недоступний - неможливо показати курси\n")
    return()
  }
  
  tryCatch({
    courses <- swirl:::list_courses()
    if (length(courses) > 0) {
      for (i in seq_along(courses)) {
        cat(i, ")", courses[i], "\n")
      }
    } else {
      cat("No courses installed\n")
      cat("Курси не встановлені\n")
    }
  }, error = function(e) {
    cat("Error listing courses:", e$message, "\n")
    cat("Помилка при показі курсів:", e$message, "\n")
  })
}

# Ukrainian progress tracking
show_ukrainian_progress <- function() {
  cat("Learning progress / Прогрес навчання:\n")
  
  if (!swirl_available) {
    cat("Swirl not available - cannot show progress\n")
    cat("Swirl недоступний - неможливо показати прогрес\n")
    return()
  }
  
  # Try to get progress information
  tryCatch({
    progress_file <- file.path(find.package("swirl"), "user_data", "progress.txt")
    if (file.exists(progress_file)) {
      cat("Progress file found at:", progress_file, "\n")
      cat("Файл прогресу знайдено за адресою:", progress_file, "\n")
    } else {
      cat("No progress recorded yet\n")
      cat("Прогрес ще не записаний\n")
    }
  }, error = function(e) {
    cat("Could not retrieve progress information\n")
    cat("Не вдалося отримати інформацію про прогрес\n")
  })
}

# Help function in Ukrainian
ukrainian_help <- function() {
  cat("=== Ukrainian Swirl Help ===\n")
  cat("=== Допомога українського Swirl ===\n\n")
  
  cat("Available functions / Доступні функції:\n")
  cat("- activate_full_ukrainian() - Complete Ukrainian setup\n")
  cat("- list_ukrainian_courses() - Show available courses\n") 
  cat("- show_ukrainian_progress() - Show learning progress\n")
  cat("- ukrainian_help() - Show this help\n")
  cat("- swirl() - Start interactive learning\n\n")
  
  cat("Quick start / Швидкий старт:\n")
  cat("1. activate_full_ukrainian()\n")
  cat("2. swirl()\n\n")
  
  cat("For more help, visit: https://github.com/RB-FIDES/training-courses\n")
  cat("Для додаткової допомоги відвідайте: https://github.com/RB-FIDES/training-courses\n")
}

# Auto-setup on load
cat("Full Ukrainian Swirl loaded!\n")
cat("Повний український Swirl завантажено!\n")
cat("Run activate_full_ukrainian() to begin\n")
cat("Виконайте activate_full_ukrainian() для початку\n")
cat("Run ukrainian_help() for help\n")
cat("Виконайте ukrainian_help() для допомоги\n")