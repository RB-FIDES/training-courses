# Ukrainian Phrases for Swirl
# Українські фрази для Swirl

# Ukrainian praise messages
praise_ua <- function() {
  phrases <- c(
    "Чудова робота!",
    "Відмінно!",
    "Правильно!",
    "Ти зрозуміла!",
    "У тебе дуже добре виходить!",
    "Продовжуй так само добре!",
    "Ти впоралася! Молодець!",
    "Блискуче!",
    "Саме так!",
    "Ідеально!",
    "Ти розумна!",
    "Фантастично!",
    "Чудово!",
    "Дуже добре!"
  )
  sample(phrases, 1)
}

# Ukrainian "try again" messages
tryAgain_ua <- function() {
  phrases <- c(
    "Майже! Спробуй ще раз.",
    "Не зовсім! Спробуй ще раз.",
    "Продовжуй намагатися!",
    "Дай цьому ще один шанс.",
    "Ще один раз. Ти можеш це зробити!",
    "Спробуй інший підхід.",
    "Не здавайся! Спробуй знову.",
    "Ти на правильному шляху. Ще раз!",
    "Майже правильно. Ще одна спроба!",
    "Це нормально. Спробуй ще раз."
  )
  sample(phrases, 1)
}

# Function to activate Ukrainian phrases
activate_ukrainian_phrases_only <- function() {
  cat("Activating Ukrainian phrases only...\n")
  cat("Активація тільки українських фраз...\n")
  
  # Replace swirl's praise and tryAgain functions
  if (require(swirl, quietly = TRUE)) {
    # Override praise function
    assignInNamespace("praise", function() cat(praise_ua(), "\n"), "swirl")
    
    # Override tryAgain function  
    assignInNamespace("tryAgain", function() cat(tryAgain_ua(), "\n"), "swirl")
    
    cat("✓ Ukrainian phrases activated!\n")
    cat("✓ Українські фрази активовані!\n")
    
    return(TRUE)
  } else {
    cat("✗ Swirl package not found. Please install swirl first.\n")
    cat("✗ Пакет swirl не знайдено. Будь ласка, встановіть swirl спочатку.\n")
    return(FALSE)
  }
}

# Function to deactivate Ukrainian translation
deactivate_ukrainian_translation <- function() {
  cat("Deactivating Ukrainian translation...\n")
  cat("Деактивація українського перекладу...\n")
  
  if (require(swirl, quietly = TRUE)) {
    # Restore original functions (requires restart in practice)
    cat("Please restart R to fully restore original swirl functions.\n")
    cat("Будь ласка, перезапустіть R для повного відновлення оригінальних функцій swirl.\n")
  }
}

# Function to check Ukrainian status
check_ukrainian_status <- function() {
  cat("Ukrainian translation status:\n")
  cat("Статус українського перекладу:\n")
  
  # Check if swirl is loaded
  if ("swirl" %in% loadedNamespaces()) {
    cat("✓ Swirl is loaded\n")
    cat("✓ Swirl завантажений\n")
  } else {
    cat("✗ Swirl is not loaded\n")
    cat("✗ Swirl не завантажений\n")
  }
}

# Quick test function
quick_test <- function() {
  cat("Testing Ukrainian phrases...\n")
  cat("Тестування українських фраз...\n")
  
  cat("Sample praise:", praise_ua(), "\n")
  cat("Sample try again:", tryAgain_ua(), "\n")
}

# Quick activation function
quick_activate <- function() {
  cat("Quick Ukrainian activation...\n")
  cat("Швидка активація української мови...\n")
  
  if (!require(swirl, quietly = TRUE)) {
    cat("Installing swirl package...\n")
    install.packages("swirl")
    library(swirl)
  }
  
  activate_ukrainian_phrases_only()
}

# Information function
info_fun <- function() {
  cat("Available Ukrainian functions:\n")
  cat("Доступні українські функції:\n")
  cat("- praise_ua() - Ukrainian praise messages\n")
  cat("- tryAgain_ua() - Ukrainian try again messages\n") 
  cat("- activate_ukrainian_phrases_only() - Activate Ukrainian phrases\n")
  cat("- deactivate_ukrainian_translation() - Deactivate translation\n")
  cat("- check_ukrainian_status() - Check current status\n")
  cat("- quick_test() - Test phrase functions\n")
  cat("- quick_activate() - Quick setup\n")
  cat("- info_fun() - Show this help\n")
}

cat("Ukrainian phrases loaded successfully!\n")
cat("Українські фрази успішно завантажені!\n")
cat("Run info_fun() to see available functions.\n")
cat("Виконайте info_fun() щоб побачити доступні функції.\n")