---
title: "Analysis of the mtcars dataset"
author: "S SRan (A Data Science Student)"
highlighter: highlight.js
output:true
html_document:true
number_sections: true
toc: true
job: Reproducible Pitch Presentation
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: variables and MPG
framework: io2012
widgets: bootstrap
---

391–411.


```r
library(datasets)
head(mtcars, 3)
```

```
##                mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

---

## mtcars dataset - Format

**A data frame with 32 observations on 11 variables.**

| Index | Field | Detail |
------- | ----- | ------ |
| [, 1] | mpg | Miles/(US) gallon |
| [, 2]  | cyl | Number of cylinders |
| [, 3]	| disp | Displacement (cu.in.) |
| [, 4]	| hp | Gross horsepower |
| [, 5]	| drat | Rear axle ratio |
| [, 6]	| wt | Weight (lb/1000) |
| [, 7]	| qsec | 1/4 mile time |
| [, 8]	| vs | V/S |
| [, 9]	| am | Transmission (0 = automatic, 1 = manual) |
| [,10]	| gear | Number of forward gears |
| [,11]	| carb | Number of carburetors |

---

## Analysis - main code

```r
  formulaTextPoint <- reactive({
    paste("mpg ~", "as.integer(", input$variable, ")")  })
  
  fit <- reactive({
    lm(as.formula(formulaTextPoint()), data=mpgData)  })
  ...
  output$fit <- renderPrint({
    summary(fit()) })
  
  output$mpgPlot <- renderPlot({
    with(mpgData, {
      plot(as.formula(formulaTextPoint()))
      abline(fit(), col=2)
    })  })

```
slidify('index.Rmd')


