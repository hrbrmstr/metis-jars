options(
  "java.parameters" = unique(
    c(getOption("java.parameters", default = NULL), "-Xrs")
  )
)

library(testthat)
test_check("metis.jars")
