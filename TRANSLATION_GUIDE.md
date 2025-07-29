# THIS `.md` FILE IS A TRANSLATION GUIDE FOR DEVELOPERS AND TRANSLATORS

## If you want to translate swirl courses into Ukrainian, there are few ways to do it:

### 1. Change `lesson.yaml` by hand 

If you want to translate specific lesson, you can do the copy of this file, change this file according to your translation and chnage the name of you translated file to `lesson.yaml`. After it you need to commit your change and update the course.

**By steps:**
```r
# Complete activation
```

```r
# do the new version of the  lesson.yaml 
```

```r
# change the name of you .yaml file to "lesson.yaml"
```

```
update_course_interactive() #update the file 
```

### 2. Use `change_lessons-interactive()` function

To be more prepared of using this function check the `CHANGE_LESSONS_GUIDE.md` file. Then return to this `.md`.

### 3. Creating new course

As a alternative way to do a translation you can create a new course with the same name as the original course, but with the `**` suffix. For example, if you want to translate `R_Programming` course, you can create a new course with the name `R_Programming_UA`. After it you need to commit your change and update the course.

***P.s:*** using this way might be easier then both above, but it requires more time to do it.

### INFRORMATION FOR DEVELOPERS AND TRANSLATORS

If you want to know more about this repository and the rest of the files please check [FILES_DESCRIBER.md](FILES_DESCRIBER.md). **- ENGLISH ONLY**

If you want to know how to activate the script check the [ACTIVATION_UKRAINIAN_GUIDE.md](ACTIVATION_UKRAINIAN_GUIDE.md). **- UKRAINIAN ONLY**