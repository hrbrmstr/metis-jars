
# metis.jars

Amazon Athena JDBC Driver Wrapper Supporting the ‘metis’ Package

## Description

Contents of the Amazon Athena JDBC Driver
<https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html>
provided to support functions in the ‘metis’ package. Version number
reflects the version number of the included ‘JAR’ file.

## IMPORTANT

Until a release of ‘rJava’ newer than ‘0.9.10’ is on CRAN signals sent
from interrupting Athena JDBC calls crash the R interpreter. You
therefore need to set the `-Xrs` option to avoid signals being passed on
to the JVM owner. That has to be done *before* `rJava` is loaded so you
either need to remember to put it at the top of all scripts *or* stick
this in your local `~/.Rprofile` and/or sitewide `Rprofile`:

``` r
options(
  "java.parameters" = c(getOption("java.parameters", default = NULL), "-Xrs")
)
```

## What’s Inside The Tin?

The following functions are implemented:

  - `athena_supported_types`: Retrieve the current supported type names
    in Athena
  - `metis_jar_path()` : Retrieve the fully-qualified path to the
    included Athena JAR file
  - `simba_driver_version`: Retrieve the version of the Simba Athena
    JDBC driver included with the package

## Installation

``` r
devtools::install_git("https://git.sr.ht/~hrbrmstr/metis-jars")
# OR
devtools::install_gitlab("hrbrmstr/metis-jars")
# OR
devtools::install_github("hrbrmstr/metis-jars")
```

## Usage

``` r
library(metis.jars)

# current verison
packageVersion("metis.jars")
```

    ## [1] '2.0.6'

``` r
simba_driver_version()
```

    ## [1] "02.00.06.1008"

``` r
athena_supported_types()
```

    ##  [1] "BOOLEAN"   "TINYINT"   "SMALLINT"  "INT"       "INTEGER"   "BIGINT"    "REAL"      "FLOAT"     "DOUBLE"   
    ## [10] "DECIMAL"   "DATE"      "TIMESTAMP" "BINARY"    "VARBINARY" "CHAR"      "VARCHAR"   "STRING"    "ARRAY"    
    ## [19] "MAP"       "ROW"       "STRUCT"

``` r
metis_jar_path()
```

    ## [1] "/Library/Frameworks/R.framework/Versions/3.5/Resources/library/metis.jars/java/AthenaJDBC42_2.0.6.jar"

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
