# Complete Setup and Testing Script for Ukrainian Training Courses
# Повний скрипт налаштування та тестування українських навчальних курсів

cat("=== Ukrainian Training Courses Setup ===\n")
cat("=== Налаштування українських навчальних курсів ===\n\n")

# Install and check dependencies
check_dependencies <- function(auto_install = TRUE) {
  cat("Checking dependencies...\nПеревірка залежностей...\n")
  
  required_packages <- c("swirl", "yaml")
  installed_packages <- rownames(installed.packages())
  missing_packages <- required_packages[!required_packages %in% installed_packages]
  
  if (length(missing_packages) > 0) {
    cat("Missing packages / Відсутні пакети:", paste(missing_packages, collapse = ", "), "\n")
    
    if (auto_install) {
      cat("Installing missing packages automatically...\n")
      cat("Автоматично встановлюємо відсутні пакети...\n")
      
      for (pkg in missing_packages) {
        cat("  Installing", pkg, "... ")
        cat("Встановлення", pkg, "... ")
        
        tryCatch({
          install.packages(pkg, repos = "https://cran.r-project.org/", 
                           quiet = TRUE, dependencies = TRUE)
          cat("✓ Success\n")
        }, error = function(e) {
          cat("✗ Failed:", e$message, "\n")
          return(FALSE)
        })
      }
      
      # Verify installation
      still_missing <- required_packages[!sapply(required_packages, requireNamespace, quietly = TRUE)]
      if (length(still_missing) > 0) {
        cat("❌ Some packages failed to install:", paste(still_missing, collapse = ", "), "\n")
        return(FALSE)
      } else {
        cat("✓ All dependencies successfully installed and available\n")
        cat("✓ Всі залежності успішно встановлені та доступні\n")
        return(TRUE)
      }
    } else {
      cat("Install with / Встановіть за допомогою: install.packages(c(", 
          paste('"', missing_packages, '"', sep = "", collapse = ", "), "))\n")
      return(FALSE)
    }
  } else {
    cat("✓ All dependencies available\n✓ Всі залежності доступні\n")
    return(TRUE)
  }
}

# Load Ukrainian translation system
setup_ukrainian_system <- function() {
  cat("\nLoading Ukrainian translation system...\n")
  cat("Завантаження української системи перекладу...\n")
  
  # Load core files
  files_to_load <- c(
    "ukrainian_phrases.R",
    "activate_ukrainian.R", 
    "full_ukrainian_swirl.R"
  )
  
  loaded_files <- c()
  
  for (file in files_to_load) {
    if (file.exists(file)) {
      source(file)
      loaded_files <- c(loaded_files, file)
      cat("✓ Loaded:", file, "\n")
    } else {
      cat("✗ Missing:", file, "\n")
    }
  }
  
  if (length(loaded_files) == length(files_to_load)) {
    cat("✓ Ukrainian system ready\n✓ Українська система готова\n")
    return(TRUE)
  } else {
    cat("⚠ Some files missing, partial functionality available\n")
    cat("⚠ Деякі файли відсутні, доступна часткова функціональність\n")
    return(FALSE)
  }
}

# Test course structure
test_course_structure <- function() {
  cat("\nTesting course structure...\nТестування структури курсу...\n")
  
  # Check for demo course
  demo_course_path <- "swirl-courses/Demo_Course_Ukrainian"
  
  if (dir.exists(demo_course_path)) {
    cat("✓ Demo course found\n✓ Демонстраційний курс знайдено\n")
    
    # Check MANIFEST
    manifest_path <- file.path(demo_course_path, "MANIFEST")
    if (file.exists(manifest_path)) {
      cat("✓ Course manifest exists\n✓ Маніфест курсу існує\n")
    }
    
    # Check lessons
    lessons <- list.dirs(demo_course_path, recursive = FALSE)
    lesson_count <- length(lessons[grepl("lesson", basename(lessons))])
    
    cat("Found", lesson_count, "lessons\nЗнайдено", lesson_count, "уроків\n")
    
    return(TRUE)
  } else {
    cat("✗ Demo course not found\n✗ Демонстраційний курс не знайдено\n")
    return(FALSE)
  }
}

# Test AI framework
test_ai_framework <- function() {
  cat("\nTesting AI framework...\nТестування AI фреймворку...\n")
  
  ai_files <- c("ai/README.md", "ai/FIDES.md", "ai/onboarding-ai.md")
  ai_ready <- TRUE
  
  for (file in ai_files) {
    if (file.exists(file)) {
      cat("✓", file, "\n")
    } else {
      cat("✗", file, "\n")
      ai_ready <- FALSE
    }
  }
  
  if (ai_ready) {
    cat("✓ FIDES AI framework ready\n✓ FIDES AI фреймворк готовий\n")
  }
  
  return(ai_ready)
}

# Main setup function
setup_training_courses <- function(auto_install = TRUE) {
  cat("Starting complete setup...\nПочаток повного налаштування...\n")
  cat(paste(rep("=", 50), collapse = ""), "\n")
  
  results <- list(
    dependencies = check_dependencies(auto_install),
    ukrainian_system = setup_ukrainian_system(),
    course_structure = test_course_structure(),
    ai_framework = test_ai_framework()
  )
  
  cat("\n=== SETUP SUMMARY / ПІДСУМОК НАЛАШТУВАННЯ ===\n")
  
  all_good <- TRUE
  for (item in names(results)) {
    status <- if (results[[item]]) "✓ PASS" else "✗ FAIL"
    cat(item, ":", status, "\n")
    if (!results[[item]]) all_good <- FALSE
  }
  
  if (all_good) {
    cat("\n🎉 Setup complete! Ready to start learning!\n")
    cat("🎉 Налаштування завершено! Готові почати навчання!\n")
    cat("\nTo start:\n1. Run: activate()\n2. Then: swirl()\n")
    cat("Alternatively for quick start: quick_activate()\n")
    cat("\nДля початку:\n1. Виконайте: activate()\n2. Потім: swirl()\n")
    cat("Альтернативно для швидкого старту: quick_activate()\n")
  } else {
    cat("\n⚠ Setup incomplete. Please address the issues above.\n")
    cat("⚠ Налаштування не завершено. Будь ласка, усуньте проблеми вище.\n")
    if (!results$dependencies) {
      cat("\nTo install dependencies manually, run:\n")
      cat("source('install_dependencies.R')\n")
      cat("\nДля ручного встановлення залежностей виконайте:\n")
      cat("source('install_dependencies.R')\n")
    }
  }
  
  return(results)
}

# Run complete setup
if (interactive()) {
  cat("=== Ukrainian Training Courses Setup ===\n")
  cat("=== Налаштування українських навчальних курсів ===\n\n")
  cat("Choose setup mode:\n")
  cat("1) Full setup with automatic dependency installation\n") 
  cat("2) Full setup without automatic installation\n")
  cat("3) Quick activation (assumes dependencies installed)\n")
  cat("\nОберіть режим налаштування:\n")
  cat("1) Повне налаштування з автоматичним встановленням залежностей\n")
  cat("2) Повне налаштування без автоматичного встановлення\n") 
  cat("3) Швидка активація (припускає встановлені залежності)\n")
  
  choice <- readline("Enter choice (1-3): ")
  
  if (choice == "1") {
    setup_results <- setup_training_courses(auto_install = TRUE)
  } else if (choice == "2") {
    setup_results <- setup_training_courses(auto_install = FALSE)
  } else if (choice == "3") {
    cat("Running quick activation...\n")
    cat("Запуск швидкої активації...\n")
    tryCatch({
      source("activate_ukrainian.R")
      quick_activate()
      cat("✓ Quick activation completed!\n")
    }, error = function(e) {
      cat("❌ Quick activation failed:", e$message, "\n")
      cat("Try full setup instead: setup_training_courses()\n")
    })
  } else {
    cat("Invalid choice. Running full setup with auto-install.\n")
    setup_results <- setup_training_courses(auto_install = TRUE)
  }
} else {
  cat("Run setup_training_courses() to begin setup\n")
  cat("Run setup_training_courses(auto_install = FALSE) to setup without auto-installing dependencies\n")
  cat("Виконайте setup_training_courses() для початку налаштування\n")
  cat("Виконайте setup_training_courses(auto_install = FALSE) для налаштування без автовстановлення залежностей\n")
}