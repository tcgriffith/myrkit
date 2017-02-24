
<!-- README.md is generated from README.Rmd. Please edit that file -->
tcrtoolkit
==========

The goal of tcrtoolkit is to collect standalone & reusable snippets

Installation
------------

You can install tcrtoolkit from github with:

``` r
# install.packages("devtools")
devtools::install_github("tcgriffith/myrkit")
```

Example
-------

``` r
 source("R/transnum.R")
 datasets::CO2->t
 require(dplyr,quietly = TRUE)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
 tbl_df(t) %>% mutate(conc=as.character(conc),uptake=as.character(uptake))->t
 print(t)
#> # A tibble: 84 × 5
#>    Plant   Type  Treatment  conc uptake
#>    <ord> <fctr>     <fctr> <chr>  <chr>
#> 1    Qn1 Quebec nonchilled    95     16
#> 2    Qn1 Quebec nonchilled   175   30.4
#> 3    Qn1 Quebec nonchilled   250   34.8
#> 4    Qn1 Quebec nonchilled   350   37.2
#> 5    Qn1 Quebec nonchilled   500   35.3
#> 6    Qn1 Quebec nonchilled   675   39.2
#> 7    Qn1 Quebec nonchilled  1000   39.7
#> 8    Qn2 Quebec nonchilled    95   13.6
#> 9    Qn2 Quebec nonchilled   175   27.3
#> 10   Qn2 Quebec nonchilled   250   37.1
#> # ... with 74 more rows
 t2<-transnum(t)
 print(t2)
#> # A tibble: 84 × 5
#>    Plant   Type  Treatment  conc uptake
#>    <ord> <fctr>     <fctr> <dbl>  <dbl>
#> 1    Qn1 Quebec nonchilled    95   16.0
#> 2    Qn1 Quebec nonchilled   175   30.4
#> 3    Qn1 Quebec nonchilled   250   34.8
#> 4    Qn1 Quebec nonchilled   350   37.2
#> 5    Qn1 Quebec nonchilled   500   35.3
#> 6    Qn1 Quebec nonchilled   675   39.2
#> 7    Qn1 Quebec nonchilled  1000   39.7
#> 8    Qn2 Quebec nonchilled    95   13.6
#> 9    Qn2 Quebec nonchilled   175   27.3
#> 10   Qn2 Quebec nonchilled   250   37.1
#> # ... with 74 more rows
```
