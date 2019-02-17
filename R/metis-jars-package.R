#' Amazon Athena JDBC Driver Wrapper Supporting the 'metis' Package
#'
#' Contents of the Amazon Athena JDBC Driver
#' <https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html>
#' provided to support functions in the 'metis' package. Version number
#' reflects the version number of the included 'JAR' file.
#'
#' @name metis.jars
#'
#' @section IMPORTANT:
#'
#' Until a release of 'rJava' newer than '0.9.10' is on CRAN signals sent
#' from interrupting Athena JDBC calls crash the R interpreter. You therefore
#' need to set the `-Xrs` option to avoid signals being passed on to the JVM
#' owner. That has to be done _before_ `rJava` is loaded so you either need
#' to remember to put it at the top of all scripts _or_ stick this
#' in your local  `~/.Rprofile` and/or sitewide `Rprofile`:
#'
#'     options(
#'       "java.parameters" = c(getOption("java.parameters", default = NULL), "-Xrs")
#'     )
#'
#'
#' @md
#' @encoding UTF-8
#' @keywords internal
#' @docType package
#' @author Bob Rudis (bob@@rud.is)
#' @import rJava
#' @importFrom utils packageVersion compareVersion
#' @references [Simba Athena JDBC Driver with SQL Connector Installation and Configuration Guide](https://s3.amazonaws.com/athena-downloads/drivers/JDBC/SimbaAthenaJDBC_2.0.6/docs/Simba+Athena+JDBC+Driver+Install+and+Configuration+Guide.pdf)
NULL
