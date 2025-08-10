# This `.md` file contain the description of the files in the repository

## It would be useful for people who have some knowledge of swirl and R (the English base level is requiered)

### .R files (in main directory)

#### - `activate_ukrainian.R`: Main script to activate Ukrainian interface for swirl courses
 - contain almost all function to activate Ukrainian interface for swirl courses 
 - contain functions that are responsible for:
   - deleting/installing courses
   - updating courses and lessons
   - restarting `activate()`function 
 - combined with `activate_ukrainian_labels.R`, `full_ukrainian_swirl.R` and `ukrainian_phrases_only.R` files
 
 
#### - `activate_ukrainian_labels.R`: Contain labels for Ukrainian and English interface activation (for `activate()` function and other functions)
 - contain labels for:
   - activation proess in `activate()`
   - course selection in `install_course_interactive()` and `update_course_interactive()` and `delete_course_interactive()`
   - lesson selection in `change_lesson_interactive()`
 - used in `activate_ukrainian.R` to provide Ukrainian/English labels for the interface
 - used as a container 

#### - `full_ukrainian_swirl.R`: Contains full Ukrainian translation of swirl interface
 - contains full Ukrainian translation of swirl interface
 - used in `activate_ukrainian.R` to provide full Ukrainian translation of swirl interface
 - create a "sub_functions" for `activate_ukrainian.R` to provide full Ukrainian translation of swirl interface
 - used as a container
 
#### - `ukrainian_phrases_only.R`: Contains only Ukrainian phrases for swirl
 - contains only Ukrainian phrases for swirl
 - used in `activate_ukrainian.R` to provide only Ukrainian phrases for swirl
 - create a "sub_functions" for `activate_ukrainian.R` to provide only Ukrainian phrases for swirl
 - used as a container
 
#### - `setup_ukrainian.R`: Contains setup functions for Ukrainian interface 
 - contains setup functions for Ukrainian interface
 - exists as a alternative way to run Ukrainian interface (not used in `activate_ukrainian.R`)
 - used as a second way to use activate translation 
 - have very similar functions to function `quick_activate()` in `activate_ukrainian.R`

### .R files (`training-courses/scripts/` file)

#### - `extract_tranlatable_text.R` : Contains functions to extract translatable text from swirl courses (demo version)  ***FOR DEVELOPERS OR TRANSLATORS ONLY***
 - extracts translatable text from swirl courses
 - used to extract text from swirl courses for translation
 - used as a container for text extraction functions
 - not prepared for all users
 
#### - `install_dependencies.R` : Contains functions to install dependencies ***FOR DEVELOPERS ONLY***
 - installs dependencies for Ukrainian interface
 - used to install dependencies for Ukrainian interface
 - used as a container for dependency installation functions
 - not prepared for all users
 - not used in `activate_ukrainian.R`
 - can be useful for handy work with repository
 
#### - `test_setup.R` : Contains functions to test Ukrainian interface setup ***FOR DEVELOPERS OR TRANSLATORS ONLY***
 - tests Ukrainian interface setup
 - used to test Ukrainian interface setup
 - used as a container for setup testing functions
 - not prepared for all users
 - can be useful for handy work with repository
 
 
### .md files 

#### - `ACTIVATION_UKRAINIAN_GUIDE.md`: Contains guide for Ukrainian interface activation
 - contains guide for Ukrainian interface activation
 - used to provide instructions for Ukrainian interface activation
 - used as a container for activation instructions 
 - can be useful for all users (Ukrainian only)
 
#### - `README.md`: Contains general information about the repository

#### - `FILES_DESCRIBER.md` : Contains description of the files in the repository
 - contains description of the files in the repository
 - used to provide information about the files in the repository
 - can be useful for developers or translators (English only)
 
#### - `FIDES.md`, `logbook.md`, `onboarding-ai.md` : Specific files for ai 

 
#### - `TRANSLATION_GUIDE_UA.md`: Contains guide for Ukrainian translation
 - contains guide for Ukrainian translation
 - used to provide instructions for Ukrainian translation
 - used as a container for translation instructions 
 - can be useful for translators (Ukrainian only)

#### -  `CHANGE_LESSONS_GUIDE.md` : Contains guide for `change_lessons_interactive()` function
 - used to provide instructions how to use function
 - describe what function do
 - can be useful for all users (ENGLISH ONLY)
 
#### - `TRANSLATION_GUIDE.md`: Contains guide for English translation
- contains guide for English translation
 - used to provide instructions for English translation
 - used as a container for translation instructions 
 - can be useful for translators (English only)
 
#### - `TRANSLATION_GUIDE_UA.md`: Contains guide fortranslation
 - used to provide instructions for  translation
 - used as a container for translation instructions 
 - can be useful for translators (ENGLISH AND UKRAINIAN)
 
#### - `PROJECT_ORGANIZATION.md` : Describes the infrustructre of project (ENGLISH ONLY)
