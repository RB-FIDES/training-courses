# Training Courses / Навчальні Курси

Interactive courses for learning statistics and data analysis with full Ukrainian language support.

Інтерактивні курси для вивчення статистики та аналізу даних з повною підтримкою української мови.

## 🇺🇦 Quick Start Ukrainian / Швидкий старт українською

### Method 1: Complete Setup (Recommended for first-time users)
### Метод 1: Повне налаштування (Рекомендується для нових користувачів)

```r
# Complete setup with validation and dependency installation
# Повне налаштування з валідацією та встановленням залежностей
source("setup_complete.R")
# Follow the interactive prompts
```

### Method 2: Quick Activation (For experienced users)
### Метод 2: Швидка активація (Для досвідчених користувачів)

```r
# Assumes dependencies are already installed
# Припускає, що залежності вже встановлені
install.packages("swirl")  # If not already installed / Якщо ще не встановлено
source("activate_ukrainian.R")
quick_activate()
```

### Method 3: Full Interactive Setup (Classic approach)
### Метод 3: Повне інтерактивне налаштування (Класичний підхід)

```r
# Interactive setup with language selection
# Інтерактивне налаштування з вибором мови
source("activate_ukrainian.R")
activate()
```

## 📚 Available Courses / Доступні курси

This repository hosts interactive swirl courses with Ukrainian translation support. Each course includes:

Цей репозиторій містить інтерактивні курси swirl з підтримкою українського перекладу. Кожен курс включає:

- English infrastructure code / Англійський код інфраструктури
- Ukrainian documentation and narration / Українська документація та пояснення
- Interactive exercises / Інтерактивні вправи
- Progress tracking / Відстеження прогресу

## 🔄 Translation Workflow / Робочий процес перекладу

See [Translation Guide](docs/TRANSLATION_GUIDE.md) for detailed instructions on:

Дивіться [Посібник з перекладу](docs/TRANSLATION_GUIDE_UA.md) для детальних інструкцій щодо:

- AI-assisted translation process / Процес перекладу за допомогою AI
- Human validation and editing / Валідація та редагування людиною
- Course localization standards / Стандарти локалізації курсів

## 🤖 AI Collaboration / Співпраця з AI

This project uses the [FIDES framework](ai/FIDES.md) for human-AI collaborative course development.

Цей проект використовує [фреймворк FIDES](ai/FIDES.md) для спільної розробки курсів людина-AI.

## 📖 Documentation / Документація

- [English Documentation](docs/) - Infrastructure and development guides
- [Українська документація](docs/) - Посібники для користувачів та розробників

## 🚀 Getting Started / Початок роботи

1. Clone this repository / Клонуйте цей репозиторій
2. Install R and required packages / Встановіть R та необхідні пакети
3. Follow the Ukrainian activation guide / Дотримуйтесь посібника з активації української версії
4. Start learning! / Почніть навчання!

## 📄 License / Ліцензія

MIT License - see [LICENSE](LICENSE) file for details

---

**AI-Human Symbiosis Acknowledgment**  
Ukrainian language support and course development through AI-human collaboration.  
*Framework:* FIDES - Framework for Interpretive Dialogue and Epistemic Symbiosis
