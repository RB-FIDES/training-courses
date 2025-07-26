# Ukrainian Activation Script for Swirl
# Скрипт активації української мови для Swirl

# Load required functions
if (file.exists("ukrainian_phrases.R")) {
  source("ukrainian_phrases.R")
} else {
  stop("ukrainian_phrases.R not found!")
}

# Main activation function
activate <- function(demo = FALSE) {
  cat("=== Ukrainian Swirl Activation ===\n")
  cat("=== Активація української версії Swirl ===\n\n")
  
  # Demo mode
  if (demo) {
    cat("Demo mode activated!\n")
    cat("Демо режим активовано!\n")
    quick_test()
    return(invisible(TRUE))
  }
  
  # Check if swirl is available
  if (!require(swirl, quietly = TRUE)) {
    cat("Swirl package not found. Installing...\n")
    cat("Пакет swirl не знайдено. Встановлення...\n")
    
    tryCatch({
      install.packages("swirl")
      library(swirl)
    }, error = function(e) {
      cat("Failed to install swirl:", e$message, "\n")
      cat("Не вдалося встановити swirl:", e$message, "\n")
      return(FALSE)
    })
  }
  
  # Language selection
  cat("Interface language? / Мова інтерфейсу?\n")
  cat("1) Українська\n")
  cat("2) English\n")
  
  choice <- readline("Select / Оберіть (1-2): ")
  
  if (choice == "1") {
    cat("Ukrainian interface selected.\n")
    cat("Обрано український інтерфейс.\n")
    
    # Activate Ukrainian phrases
    success <- activate_ukrainian_phrases_only()
    
    if (success) {
      cat("\n✓ Ukrainian interface ready!\n")
      cat("✓ Український інтерфейс готовий!\n")
      
      # Ask to start swirl
      cat("\nStart swirl? / Запустити swirl?\n")
      cat("1) Так / Yes\n")
      cat("2) Ні / No\n")
      
      start_choice <- readline("Select / Оберіть (1-2): ")
      
      if (start_choice == "1") {
        cat("Starting swirl...\n")
        cat("Запуск swirl...\n")
        swirl()
      } else {
        cat("You can start swirl later with: swirl()\n")
        cat("Ви можете запустити swirl пізніше командою: swirl()\n")
      }
    }
  } else {
    cat("English interface selected. Starting standard swirl...\n")
    swirl()
  }
  
  invisible(TRUE)
}

# Interactive course installation
install_course_interactive <- function() {
  cat("Interactive Course Installation\n")
  cat("Інтерактивне встановлення курсу\n")
  
  # Check for available courses
  courses_dir <- "swirl-courses"
  if (dir.exists(courses_dir)) {
    courses <- list.dirs(courses_dir, recursive = FALSE, full.names = FALSE)
    
    if (length(courses) > 0) {
      cat("\nAvailable courses / Доступні курси:\n")
      for (i in seq_along(courses)) {
        cat(i, ")", courses[i], "\n")
      }
      
      choice <- readline("Select course number / Оберіть номер курсу: ")
      choice_num <- as.numeric(choice)
      
      if (!is.na(choice_num) && choice_num >= 1 && choice_num <= length(courses)) {
        selected_course <- courses[choice_num]
        
        if (require(swirl, quietly = TRUE)) {
          course_path <- file.path(courses_dir, selected_course)
          swirl::install_course_directory(course_path)
          cat("Course installed:", selected_course, "\n")
          cat("Курс встановлено:", selected_course, "\n")
        } else {
          cat("Swirl package required for installation.\n")
          cat("Для встановлення потрібен пакет swirl.\n")
        }
      } else {
        cat("Invalid selection.\n")
        cat("Невірний вибір.\n")
      }
    } else {
      cat("No courses found in", courses_dir, "\n")
      cat("Курси не знайдено в", courses_dir, "\n")
    }
  } else {
    cat("Courses directory not found:", courses_dir, "\n")
    cat("Директорію курсів не знайдено:", courses_dir, "\n")
  }
}

# Welcome message
cat("Ukrainian Swirl Activation Script Loaded\n")
cat("Скрипт активації української версії Swirl завантажено\n")
cat("Run activate() to start / Виконайте activate() для початку\n")