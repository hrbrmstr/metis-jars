#' Retrieve the fully-qualified path to the included Athena JAR file
#'
#' @export
#' @examples
#' metis_jar_path()
metis_jar_path <- function() {

  list.files(
    path = system.file("java", package = "metis.jars"),
    pattern = "Ath.*jar$",
    full.names = TRUE
  )[1]

}

