# Quick Start Guide / Швидкий посібник з початку роботи

## English Instructions

### Step 1: Install Dependencies
Before using the Ukrainian training courses, you need to install the required R packages:

```r
# Install required packages
install.packages(c("swirl", "yaml"))

# Or use the provided script
source("install_dependencies.R")
```

### Step 2: Run Setup
Once dependencies are installed, run the complete setup:

```r
source("setup_complete.R")
setup_training_courses()
```

### Step 3: Test Everything Works
Run the validation tests to ensure everything is properly configured:

```r
source("test_setup.R")
```

### Step 4: Start Learning
If everything is working properly:

```r
source("activate_ukrainian.R")
activate()
```

---

## Українські інструкції

### Крок 1: Встановлення залежностей
Перед використанням українських навчальних курсів потрібно встановити необхідні пакети R:

```r
# Встановити необхідні пакети
install.packages(c("swirl", "yaml"))

# Або використовувати наданий скрипт
source("install_dependencies.R")
```

### Крок 2: Запуск налаштування
Після встановлення залежностей запустіть повне налаштування:

```r
source("setup_complete.R")
setup_training_courses()
```

### Крок 3: Тестування
Запустіть тести валідації, щоб переконатися, що все правильно налаштовано:

```r
source("test_setup.R")
```

### Крок 4: Початок навчання
Якщо все працює правильно:

```r
source("activate_ukrainian.R")
activate()
```

---

## Troubleshooting / Усунення неполадок

### If tests fail / Якщо тести не проходять:

1. **Dependencies missing**: Install using `install.packages(c("swirl", "yaml"))`
2. **File structure issues**: Ensure you're in the correct directory and all files are present
3. **Permission issues**: Make sure you have write permissions in your R library directory

### Testing Mode / Режим тестування

If you cannot install swirl, the system will work in testing mode with limited functionality. All Ukrainian phrase functions will be available for testing, but the full swirl integration will not work.

---

## Files Overview / Огляд файлів

- `setup_complete.R` - Complete setup and validation script
- `test_setup.R` - Validation tests for repository structure
- `install_dependencies.R` - Dependency installation helper
- `ukrainian_phrases.R` - Ukrainian language phrases for swirl
- `activate_ukrainian.R` - Main Ukrainian activation system
- `full_ukrainian_swirl.R` - Complete Ukrainian swirl integration