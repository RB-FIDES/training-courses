#!/usr/bin/env Rscript

# Simple validation test for the training-courses setup
# Простий тест валідації для налаштування training-courses

cat("=== Training Courses Validation Test ===\n")
cat("=== Тест валідації навчальних курсів ===\n\n")

test_results <- list()

# Test 1: Check file structure
cat("Test 1: File structure... ")
expected_files <- c(
  "README.md",
  "LICENSE", 
  ".gitignore",
  "ukrainian_phrases.R",
  "activate_ukrainian.R",
  "setup_complete.R"
)

expected_dirs <- c(
  "ai",
  "docs", 
  "scripts",
  "swirl-courses"
)

files_exist <- all(file.exists(expected_files))
dirs_exist <- all(dir.exists(expected_dirs))

if (files_exist && dirs_exist) {
  cat("✓ PASS\n")
  test_results$file_structure <- TRUE
} else {
  cat("✗ FAIL\n")
  test_results$file_structure <- FALSE
}

# Test 2: Check Ukrainian phrases file
cat("Test 2: Ukrainian phrases... ")
tryCatch({
  source("ukrainian_phrases.R", local = TRUE)
  if (exists("praise_ua", envir = .GlobalEnv) || exists("praise_ua")) {
    cat("✓ PASS\n")
    test_results$ukrainian_phrases <- TRUE
  } else {
    cat("✗ FAIL (function not found)\n")
    test_results$ukrainian_phrases <- FALSE
  }
}, error = function(e) {
  cat("✗ FAIL (", e$message, ")\n")
  test_results$ukrainian_phrases <- FALSE
})

# Test 3: Check demo course
cat("Test 3: Demo course structure... ")
demo_path <- "swirl-courses/Demo_Course_Ukrainian"
manifest_path <- file.path(demo_path, "MANIFEST")
lesson_path <- file.path(demo_path, "lesson1", "lesson.yaml")

if (dir.exists(demo_path) && file.exists(manifest_path) && file.exists(lesson_path)) {
  cat("✓ PASS\n")
  test_results$demo_course <- TRUE
} else {
  cat("✗ FAIL\n")
  test_results$demo_course <- FALSE
}

# Test 4: Check documentation
cat("Test 4: Documentation... ")
doc_files <- c(
  "docs/TRANSLATION_GUIDE.md",
  "docs/TRANSLATION_GUIDE_UA.md",
  "docs/PROJECT_ORGANIZATION.md"
)

if (all(file.exists(doc_files))) {
  cat("✓ PASS\n")
  test_results$documentation <- TRUE
} else {
  cat("✗ FAIL\n")
  test_results$documentation <- FALSE
}

# Test 5: Check AI framework
cat("Test 5: AI framework... ")
ai_files <- c(
  "ai/README.md",
  "ai/FIDES.md",
  "ai/onboarding-ai.md"
)

if (all(file.exists(ai_files))) {
  cat("✓ PASS\n")
  test_results$ai_framework <- TRUE
} else {
  cat("✗ FAIL\n")
  test_results$ai_framework <- FALSE
}

# Summary
cat("\n=== SUMMARY / ПІДСУМОК ===\n")
total_tests <- length(test_results)
passed_tests <- sum(unlist(test_results))

cat("Tests passed:", passed_tests, "/", total_tests, "\n")
cat("Тестів пройшло:", passed_tests, "/", total_tests, "\n")

if (passed_tests == total_tests) {
  cat("\n🎉 All tests passed! Repository is ready for use.\n")
  cat("🎉 Всі тести пройшли! Репозиторій готовий до використання.\n")
  exit_code <- 0
} else {
  cat("\n⚠ Some tests failed. Please check the setup.\n")
  cat("⚠ Деякі тести провалилися. Будь ласка, перевірте налаштування.\n")
  exit_code <- 1
}

# Exit with appropriate code
quit(status = exit_code)