---
title       : Car Chooser
subtitle    : Coursera Developing Data Products Project
author      : Kevin Dyke
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background

This data product was developed as the project for the **Coursera Developing Data Products** course.

The project selects a range of cars from the R built-in dataset *mtcars*.


```r
data(mtcars)
head(mtcars,5)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
```


--- .class #id 

## Data Entry

The user is required to enter:

* The required number of cylinders
* The maximum required displacement
* The maximum required horse power
* The required number of gears
* The type of transmission required
 
In a checkbox group the user may enter as many options as required but must enter at least _one_ option. For the slider the value shown on the slider represents the _maximum_ required value.

After entering the data the user should press the *Select Car Models!* button.

--- .class #id

## Output

The applications has three outputs

* If any checkbox group is left empty the applications displays _Please enter more data choices_
* If no models match the users requirements the applications displays _Sorry there are zero matches for your data_
* Otherwise the car models matching the user requirements are displayed.

--- .class #id

## Project Details

The source for the project can be found on GitHub at:
https://github.com/kjd58/Coursera-Develop-Data-Products-Project.git

The live version is located at:
https://kjd58.shinyapps.io/CarChooser/

This presentation is located at:



