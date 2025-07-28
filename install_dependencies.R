#!/usr/bin/env Rscript

# Install Dependencies for Ukrainian Training Courses
# Встановлення залежностей для українських навчальних курсів

cat("=== Installing Dependencies ===\n")
cat("=== Встановлення залежностей ===\n\n")

# Required packages
required_packages <- c("swirl", "yaml")

# Function to install packages if they don't exist
install_if_missing <- function(packages) {
  cat("Checking and installing required packages...\n")
  cat("Перевірка та встановлення необхідних пакетів...\n\n")
  
  installed_packages <- rownames(installed.packages())
  missing_packages <- packages[!packages %in% installed_packages]
  
  if (length(missing_packages) > 0) {
    cat("Installing missing packages:", paste(missing_packages, collapse = ", "), "\n")
    cat("Встановлення відсутніх пакетів:", paste(missing_packages, collapse = ", "), "\n")
    
    for (pkg in missing_packages) {
      cat("  Installing", pkg, "... ")
      cat("Встановлення", pkg, "... ")
      
      tryCatch({
        install.packages(pkg, repos = "https://cran.r-project.org/", 
                         quiet = TRUE, dependencies = TRUE)
        cat("✓ Success\n")
      }, error = function(e) {
        cat("✗ Failed:", e$message, "\n")
      })
    }
  } else {
    cat("✓ All required packages are already installed.\n")
    cat("✓ Всі необхідні пакети вже встановлені.\n")
  }
}

# Function to verify installation
verify_installation <- function(packages) {
  cat("\nVerifying installation...\n")
  cat("Перевірка встановлення...\n")
  
  all_good <- TRUE
  for (pkg in packages) {
    cat("  Testing", pkg, "... ")
    
    if (require(pkg, character.only = TRUE, quietly = TRUE)) {
      cat("✓ OK\n")
    } else {
      cat("✗ Failed\n")
      all_good <- FALSE
    }
  }
  
  if (all_good) {
    cat("\n🎉 All dependencies successfully installed!\n")
    cat("🎉 Всі залежності успішно встановлені!\n")
    cat("\nYou can now run: source('setup_complete.R')\n")
    cat("Тепер ви можете запустити: source('setup_complete.R')\n")
  } else {
    cat("\n⚠ Some packages failed to install.\n")
    cat("⚠ Деякі пакети не вдалося встановити.\n")
  }
  
  return(all_good)
}

# Main installation process
cat("Starting dependency installation process...\n")
cat("Починаємо процес встановлення залежностей...\n")
cat(paste(rep("=", 50), collapse = ""), "\n")

install_if_missing(required_packages)
installation_success <- verify_installation(required_packages)

if (installation_success) {
  cat("\n🚀 Ready to proceed with setup!\n")
  cat("🚀 Готові продовжити з налаштуванням!\n")
  cat("\nNext steps:\n")
  cat("1. Run: source('setup_complete.R')\n")
  cat("2. Then: setup_training_courses()\n")
  cat("\nНаступні кроки:\n")
  cat("1. Виконайте: source('setup_complete.R')\n")
  cat("2. Потім: setup_training_courses()\n")
} else {
  cat("\n❌ Installation incomplete. Please check the errors above.\n")
  cat("❌ Встановлення неповне. Будь ласка, перевірте помилки вище.\n")
}