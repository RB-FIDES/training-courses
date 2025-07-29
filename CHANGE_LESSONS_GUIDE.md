# This `.md` file created to help you understand how to change versions of `.yaml.` files in the lessons

## THIS IS TUTORIAL OF USAGE `change_lesson_interactive()` FUNCTION

### How to activate `change_lessson_interactive()` function?

To activate the `change_lesson_interactive()` function, you need to run the `activate_ukrainian.R` script. This script sets up the Ukrainian interface for swirl and includes the necessary functions for changing lessons interactively.

```r
source("activate_ukrainian.R")
```

### What does `change_lesson_interactive()` do?

This function allow you to change the active lesson in swirl interactively. 


It prompts you to select a course and then a specific lesson within that course. This is useful for switching between different lessons without having to manually edit YAML files.

#### Why it is useful?

- allows to you to change the current `lesson.yaml` file interactively
- you won't need to manually edit the YAML files\

### Why you might need to change the lesson?

For example, you might want to switch the lesson`s language version and if you have several versions of the lesson (e.g., English, Ukrainian), you can easily switch between them using this function.

### Step-by-step instructions:

1. **Run the activation script**:
   ```r
   source("activate_ukrainian.R")
   ```

2. **Call the function**:
   ```r
   change_lesson_interactive()
   ```

3. **Follow the prompts**:
   - Select the course you want to work with. *# This will list all available courses in your swirl setup.*
   - Choose the lesson you want to change. *# This will display all lessons available in the selected course.*
   - The function will automatically update the active lesson in swirl.
   - You need to update the course where you did changes, so the changes will be applied.


4. **Update the course**

In the end of the function you will be prompted to update the course to apply the changes made in the lesson. This is necessary to ensure that the new lesson configuration is loaded correctly.

***OR***
   ```r
   update_course_interactive()
   ```
Also allows you to update the course interactively, which will apply any changes made to the lesson YAML files.
   
### How it works?

The `change_lesson_interactive()` function uses the `swirl` package's internal functions to list available `.yaml` files, allowing you to select them interactively. It modifies the active lesson's YAML file based on your selection.

In the lesson's file it creates several copies of your `.yaml` files. If you check your directory after running this function you will see such files:
```r
lesson.yaml # the current using version of lesson
lesson_original.yaml # copy of original version of lesson
*.yaml # other yaml files that you can use to change the lesson
```
After running the function again, you can choose the lesson from `lesson_original.yaml` or any other `*.yaml` file that you created.


In addition, you noticed that you have such files:
```r
*-ACTIVE.yaml # this prefix indicates that this is the currently active lesson version
*-DISABLED.yaml # this prefix indicates that this lesson version is disabled
```

### Example Usage

I would like to change the language in "R_Programming_ALT" course in the lesson "Basic_Building_Blocks" from Ukrainian to English.

After activate the main script (`source("activate_Ukrainian.R")), I run the function:
```r
change_lesson_interactive()
```
(change_lessons_guide-1.jpg)
