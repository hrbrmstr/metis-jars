#' Retrieve the current supported type names in Athena
#'
#' @export
#' @examples
#' athena_supported_types()
athena_supported_types <- function() {
  gsub(
    "^AJ_|_TYPE_NAME$", "",
    grep(
      "^AJ_",
      names(rJava::J("com.simba.athena.athena.AthenaTypes")),
      value=TRUE
    )
  )
}