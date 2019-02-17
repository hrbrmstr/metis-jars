#' Retrieve the version of the Simba Athena JDBC driver included with the package
#'
#' @export
#' @examples
#' simba_driver_version()
simba_driver_version <- function() {
  rJava::J("com.simba.athena.athena.core.AJDriver")$AJ_DRIVER_VERSION
}
