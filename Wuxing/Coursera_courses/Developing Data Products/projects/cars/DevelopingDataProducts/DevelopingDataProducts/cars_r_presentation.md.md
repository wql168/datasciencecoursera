The CARS Poject Presentation
========================================================
For Developing Data Products course project

author: WL

date: July-25-2015

Introduction
========================================================

This is a schematic presentation of the CARS project, preparded for the Developing Data Products course project.

The components of this project include:

- Data and algorithm used.
- Example display
- What can be improved

Dataset
========================================================

This dataset cars which gives the speed of cars and the distances taken to stop. For more information refer to: http://www.inside-r.org/r-doc/datasets/cars.


```r
require(stats); require(graphics); summary(cars)
```

```
     speed           dist       
 Min.   : 4.0   Min.   :  2.00  
 1st Qu.:12.0   1st Qu.: 26.00  
 Median :15.0   Median : 36.00  
 Mean   :15.4   Mean   : 42.98  
 3rd Qu.:19.0   3rd Qu.: 56.00  
 Max.   :25.0   Max.   :120.00  
```

App Logics
========================================================

This APP provides a slider to take a input speed value, and returns the records for that speed, and a mean of the stopping distance for that speed.

For example, given a speed value of 4 mph:

```
     speed dist
1        4    2
2        4   10
3 Avg Dist 6.00
```

This APP will also returns the following statement:

```
[1] "The average stopping distance at the speed of 4 mph is: 6.00 feet."
```

What can be Improved
========================================================

1. Planned to implement an if statement to present a 'Data not available' sentence when the input speed is not present in the dataset;

2. In the table displayed in the result section, planned to remove the row numbers.

Overall, this is a simple representation of the shiny functionality with only a very limited available tools being used.
