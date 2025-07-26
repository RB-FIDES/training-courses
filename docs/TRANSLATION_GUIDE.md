# Translation Guide for Ukrainian Swirl Courses

This guide outlines the process for translating swirl courses to Ukrainian, combining AI assistance with human validation and editing.

## Overview

The translation workflow follows a two-phase approach:
1. **AI-Assisted Translation**: Use Copilot/ChatGPT for initial translation
2. **Human Validation**: Manual review, editing, and cultural adaptation

## Phase 1: AI-Assisted Translation

### Setting Up AI Translation

1. **Prepare the source content**:
   ```r
   # Extract text content from swirl lesson files
   source("scripts/extract_lesson_text.R")
   extract_translatable_content("course_name")
   ```

2. **Use AI translation prompts**:
   ```
   Translate the following swirl course content to Ukrainian. 
   Maintain:
   - Technical accuracy
   - Educational tone
   - R code examples unchanged
   - Consistent terminology
   
   Content: [paste content here]
   ```

3. **Batch processing**:
   - Process lesson by lesson
   - Maintain file structure
   - Keep variable names in English
   - Preserve R code blocks

### AI Translation Prompts

#### For Course Descriptions
```
Translate this swirl course description to Ukrainian for educational use:
- Keep technical terms clear
- Maintain engaging tone
- Adapt cultural references appropriately

[description text]
```

#### For Interactive Lessons
```
Translate this swirl lesson to Ukrainian:
- Preserve all R code exactly
- Keep function names in English
- Translate explanatory text naturally
- Maintain educational progression

[lesson content]
```

#### For Error Messages and Feedback
```
Translate these swirl feedback messages to Ukrainian:
- Keep encouraging tone
- Make culturally appropriate
- Maintain clarity for beginners

[feedback messages]
```

## Phase 2: Human Validation

### Review Checklist

#### Content Accuracy
- [ ] Technical terms correctly translated
- [ ] Statistical concepts properly explained
- [ ] R code unchanged and functional
- [ ] Examples culturally relevant

#### Language Quality
- [ ] Natural Ukrainian phrasing
- [ ] Consistent terminology throughout
- [ ] Appropriate educational register
- [ ] Grammar and spelling correct

#### Cultural Adaptation
- [ ] Examples relevant to Ukrainian context
- [ ] Currency, measurements adapted
- [ ] Cultural references appropriate
- [ ] Names and scenarios localized

### Editing Process

1. **Initial Review**:
   - Read through AI translation
   - Mark unclear or awkward phrases
   - Check technical accuracy

2. **Content Editing**:
   - Improve naturalness of language
   - Ensure consistency with established terms
   - Verify educational effectiveness

3. **Final Validation**:
   - Test interactive elements
   - Verify all code still works
   - Check lesson flow and progression

## Tools and Resources

### Translation Tools
- GitHub Copilot for inline translation
- ChatGPT for batch translation
- DeepL for reference checking
- Google Translate for quick lookups

### Ukrainian R Resources
- [Ukrainian R Terminology](docs/ukrainian_r_terms.md)
- [Statistical Terms Dictionary](docs/stats_terms_ua.md)
- [Common Phrases Reference](docs/swirl_phrases_ua.md)

### Quality Assurance
- Automated text extraction: `scripts/extract_text.R`
- Translation validation: `scripts/validate_translation.R`
- Interactive testing: `scripts/test_ukrainian_course.R`

## File Organization

```
course_name/
├── original/           # Original English files
├── translation/        # AI-generated translations
├── validated/          # Human-validated content
└── final/             # Production-ready Ukrainian course
```

## Quality Standards

### Translation Quality Metrics
- **Accuracy**: 95%+ technical correctness
- **Naturalness**: Native speaker fluency
- **Consistency**: Uniform terminology usage
- **Completeness**: All content translated

### Review Process
1. AI generates initial translation
2. Technical review by R/statistics expert
3. Language review by Ukrainian native speaker
4. Educational review by instructor
5. Student testing and feedback
6. Final approval and publication

## Common Translation Patterns

### Technical Terms
- `data frame` → `фрейм даних`
- `variable` → `змінна`
- `function` → `функція`
- `object` → `об'єкт`
- `assignment` → `присвоєння`

### Educational Phrases
- "Let's try..." → "Спробуємо..."
- "Great job!" → "Чудова робота!"
- "Try again" → "Спробуйте ще раз"
- "Correct!" → "Правильно!"

### Interactive Elements
- "Type your answer" → "Введіть вашу відповідь"
- "Press Enter to continue" → "Натисніть Enter для продовження"
- "Skip this question" → "Пропустити це питання"

## Automation Scripts

### Extract Text for Translation
```r
source("scripts/extract_translatable_text.R")
course_text <- extract_course_text("R_Programming")
write_for_translation(course_text, "translation/r_programming_text.txt")
```

### Apply Translations
```r
source("scripts/apply_translations.R")
apply_translation_file("course_name", "translation/translated_text.txt")
```

### Validate Translation
```r
source("scripts/validate_translation.R")
validation_report <- validate_course("ukrainian_course_name")
print(validation_report)
```

## Best Practices

### For AI Translation
1. Provide context about the educational level
2. Specify technical field (statistics/R programming)
3. Request consistency with previous translations
4. Ask for alternative translations when uncertain

### For Human Editing
1. Read entire lesson before making changes
2. Test interactive elements after editing
3. Maintain beginner-friendly language
4. Preserve instructor's teaching style

### For Quality Control
1. Regular terminology consistency checks
2. Student feedback integration
3. Continuous improvement of translation patterns
4. Documentation of translation decisions

## Issue Tracking

Use GitHub issues to track translation work:
- `translation:new` - New course needs translation
- `translation:review` - Translation ready for human review
- `translation:update` - Existing translation needs updates
- `translation:complete` - Translation validated and ready

## Examples

See `examples/` directory for:
- Sample AI translation prompts
- Before/after translation examples
- Quality review templates
- Student feedback forms

---

*This guide is continuously updated based on translation experience and feedback.*