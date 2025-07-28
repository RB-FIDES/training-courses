# Simple Ukrainian Swirl Setup Script
# Простий скрипт налаштування українського Swirl

cat("=== Ukrainian Swirl Setup ===\n")
cat("=== Налаштування українського Swirl ===\n\n")

# Quick setup function
setup_ukrainian <- function() {
  cat("Starting Ukrainian swirl setup...\n")
  cat("Початок налаштування українського swirl...\n")
  
  # Check for swirl
  if (!require(swirl, quietly = TRUE)) {
    cat("Warning: swirl package not available\n")
    cat("Попередження: пакет swirl недоступний\n")
    cat("Please install manually: install.packages('swirl')\n")
    cat("Будь ласка, встановіть вручну: install.packages('swirl')\n")
  } else {
    cat("✓ Swirl package available\n")
    cat("✓ Пакет swirl доступний\n")
  }
  
  # Load Ukrainian support
  cat("\nLoading Ukrainian language support...\n")
  cat("Завантаження підтримки української мови...\n")
  
  files_to_load <- c("ukrainian_phrases.R", "activate_ukrainian.R")
  loaded <- 0
  
  for (file in files_to_load) {
    if (file.exists(file)) {
      tryCatch({
        source(file)
        cat("✓ Loaded:", file, "\n")
        loaded <- loaded + 1
      }, error = function(e) {
        cat("✗ Error loading", file, ":", e$message, "\n")
      })
    } else {
      cat("✗ Missing:", file, "\n")
    }
  }
  
  # Check for courses
  cat("\nChecking for Ukrainian courses...\n")
  cat("Перевірка українських курсів...\n")
  
  if (dir.exists("swirl-courses")) {
    courses <- list.dirs("swirl-courses", recursive = FALSE, full.names = FALSE)
    course_count <- length(courses)
    cat("Found", course_count, "course(s)\n")
    cat("Знайдено", course_count, "курс(ів)\n")
    
    for (course in courses) {
      cat("-", course, "\n")
    }
  } else {
    cat("No courses directory found\n")
    cat("Директорію курсів не знайдено\n")
  }
  
  # Final status
  cat("\n=== Setup Summary ===\n")
  cat("=== Підсумок налаштування ===\n")
  
  if (loaded == length(files_to_load)) {
    cat("✓ Ukrainian support ready!\n")
    cat("✓ Підтримка української мови готова!\n")
    cat("\nNext steps:\n")
    cat("1. Run: activate()\n")
    cat("2. Then: swirl()\n")
    cat("\nНаступні кроки:\n")
    cat("1. Виконайте: activate()\n") 
    cat("2. Потім: swirl()\n")
    return(TRUE)
  } else {
    cat("⚠ Partial setup - some files missing\n")
    cat("⚠ Часткове налаштування - деякі файли відсутні\n")
    return(FALSE)
  }
}

# Quick test function
test_ukrainian_setup <- function() {
  cat("Testing Ukrainian setup...\n")
  cat("Тестування українського налаштування...\n")
  
  # Test Ukrainian phrases
  if (exists("praise_ua")) {
    cat("✓ Ukrainian phrases available\n")
    cat("Sample praise:", praise_ua(), "\n")
  } else {
    cat("✗ Ukrainian phrases not available\n")
  }
  
  # Test activation function
  if (exists("activate")) {
    cat("✓ Activation function available\n")
  } else {
    cat("✗ Activation function not available\n")
  }
  
  # Test swirl
  if (require(swirl, quietly = TRUE)) {
    cat("✓ Swirl package loaded\n")
  } else {
    cat("✗ Swirl package not available\n")
  }
}

# Help function
help_ukrainian_setup <- function() {
  cat("Ukrainian Swirl Setup Help\n")
  cat("Допомога з налаштування українського Swirl\n\n")
  
  cat("Available functions:\n")
  cat("- setup_ukrainian() - Complete setup\n")
  cat("- test_ukrainian_setup() - Test current setup\n") 
  cat("- help_ukrainian_setup() - Show this help\n\n")
  
  cat("Доступні функції:\n")
  cat("- setup_ukrainian() - Повне налаштування\n")
  cat("- test_ukrainian_setup() - Тест поточного налаштування\n")
  cat("- help_ukrainian_setup() - Показати цю допомогу\n")
}

# Auto-run setup if interactive
if (interactive()) {
  cat("Run setup_ukrainian() to begin setup\n")
  cat("Виконайте setup_ukrainian() для початку налаштування\n")
  cat("Run help_ukrainian_setup() for help\n")
  cat("Виконайте help_ukrainian_setup() для допомоги\n")
}