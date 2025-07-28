#!/usr/bin/env Rscript
# Demo Script for Ukrainian Training Courses
# Демонстраційний скрипт для українських навчальних курсів

cat("=== Ukrainian Training Courses Demo ===\n")
cat("=== Демонстрація українських навчальних курсів ===\n\n")

# Load all components
cat("Loading core components...\n")
cat("Завантаження основних компонентів...\n")

# Test Ukrainian phrases
cat("\n1. Testing Ukrainian phrases / Тестування українських фраз:\n")
source("ukrainian_phrases.R")
cat("   Sample praise:", praise_ua(), "\n")
cat("   Sample try again:", tryAgain_ua(), "\n")

# Test activation script
cat("\n2. Testing activation script / Тестування скрипту активації:\n")
source("activate_ukrainian.R")
cat("   ✓ Activation functions loaded\n")

# Test full Ukrainian system
cat("\n3. Testing full Ukrainian system / Тестування повної української системи:\n")
source("full_ukrainian_swirl.R")
cat("   ✓ Full system loaded\n")

# Test simple setup
cat("\n4. Testing setup script / Тестування скрипту налаштування:\n")
source("setup_ukrainian_swirl.R")

# Test complete setup
cat("\n5. Running complete setup / Запуск повного налаштування:\n")
source("setup_complete.R")
setup_results <- setup_training_courses()

# Summary
cat("\n=== DEMO SUMMARY / ПІДСУМОК ДЕМОНСТРАЦІЇ ===\n")
cat("✓ All core files successfully loaded and tested\n")
cat("✓ Всі основні файли успішно завантажені та протестовані\n")
cat("✓ Ukrainian language support is functional\n")
cat("✓ Підтримка української мови функціональна\n")
cat("✓ Setup system is ready for use\n")
cat("✓ Система налаштування готова до використання\n")

cat("\n=== NEXT STEPS / НАСТУПНІ КРОКИ ===\n")
cat("1. Install swirl package: install.packages('swirl')\n")
cat("2. Run: source('activate_ukrainian.R'); activate()\n")
cat("3. Start learning: swirl()\n")
cat("\n1. Встановіть пакет swirl: install.packages('swirl')\n")
cat("2. Виконайте: source('activate_ukrainian.R'); activate()\n")
cat("3. Почніть навчання: swirl()\n")

cat("\nDemo completed successfully! / Демонстрація завершена успішно!\n")