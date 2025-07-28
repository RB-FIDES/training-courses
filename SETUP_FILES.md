# Setup Files Overview

This document describes the key setup files in the Ukrainian Training Courses repository.

## Core Setup Files

### 1. `setup_complete.R`
**Purpose**: Comprehensive setup and validation script
**Features**:
- Checks all dependencies (swirl, yaml packages)
- Loads Ukrainian translation system
- Tests course structure
- Validates AI framework
- Provides bilingual feedback (English/Ukrainian)

**Usage**: 
```r
source('setup_complete.R')
setup_training_courses()
```

### 2. `full_ukrainian_swirl.R`
**Purpose**: Complete Ukrainian swirl implementation
**Features**:
- Ukrainian environment configuration
- Course installation functionality
- Progress tracking
- Help system in Ukrainian
- Graceful handling of missing packages

**Usage**:
```r
source('full_ukrainian_swirl.R')
activate_full_ukrainian()
ukrainian_help()
```

### 3. `setup_ukrainian_swirl.R`
**Purpose**: Simple setup script for Ukrainian support
**Features**:
- Basic dependency checking
- Ukrainian language support loading
- Course detection
- Step-by-step guidance

**Usage**:
```r
source('setup_ukrainian_swirl.R')
setup_ukrainian()
```

### 4. `ukrainian_phrases.R`
**Purpose**: Ukrainian language phrases and functions
**Features**:
- Ukrainian praise messages
- Ukrainian "try again" messages
- Phrase activation functions

### 5. `activate_ukrainian.R`
**Purpose**: Interactive Ukrainian activation
**Features**:
- Interactive language selection
- Ukrainian interface activation
- Course installation support

## Supporting Files

### 6. `test_setup.R`
**Purpose**: Validation testing script
**Features**:
- Tests file structure
- Validates Ukrainian phrases
- Checks demo course
- Verifies documentation
- Tests AI framework

### 7. `demo_setup.R`
**Purpose**: Demonstration script showing all functionality
**Features**:
- Loads and tests all components
- Shows integration between files
- Provides usage examples

## Directory Structure

```
├── setup_complete.R      # Main setup script
├── full_ukrainian_swirl.R # Complete Ukrainian system
├── setup_ukrainian_swirl.R # Simple setup
├── ukrainian_phrases.R   # Language phrases
├── activate_ukrainian.R  # Interactive activation
├── test_setup.R         # Validation tests
├── demo_setup.R         # Demo script
├── scripts/
│   ├── install_ukrainian_course.R
│   └── extract_translatable_text.R
├── swirl-courses/
│   └── Demo_Course_Ukrainian/
├── ai/                  # AI framework files
└── docs/               # Documentation
```

## Setup Sequence

1. **Quick Start**: Run `source('demo_setup.R')` to see everything in action
2. **Full Setup**: Run `source('setup_complete.R'); setup_training_courses()`
3. **Simple Setup**: Run `source('setup_ukrainian_swirl.R'); setup_ukrainian()`
4. **Validation**: Run `source('test_setup.R')` to validate installation

## Dependencies

- **Required**: R base installation
- **Recommended**: swirl package (`install.packages('swirl')`)
- **Optional**: yaml package (available as system package)

## File Relationships

All files are designed to work together cohesively:
- `setup_complete.R` uses `ukrainian_phrases.R`, `activate_ukrainian.R`, and `full_ukrainian_swirl.R`
- Each file can also be used independently
- All files handle missing dependencies gracefully
- Bilingual support throughout (English/Ukrainian)