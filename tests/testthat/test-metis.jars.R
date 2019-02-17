options(
  "java.parameters" = unique(
    c(getOption("java.parameters", default = NULL), "-Xrs")
  )
)

context("JAR loads; classes available")

expect_is(simba_driver_version(), "character")
expect_is(athena_supported_types(), "character")
expect_is(metis_jar_path(), "character")
