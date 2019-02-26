.onAttach <- function(libname, pkgname) {

  if (interactive()) {
    jv <- utils::packageVersion("rJava")
    if (utils::compareVersion(toString(jv), "0.9.10") < 1) {
      o <- getOption("java.parameters", "")
      if (!any(grepl("\\-Xrs", o))) {
        packageStartupMessage(
          "Did not find '-Xrs' in java.parameters option. Until rJava is updated, ",
          "please set this up in your/an Rprofile or at the start of scripts. ",
          "See the 'IMPORTANT' section under ?`metis.jars-package`."
        )
      }
    }
  }

}

.onLoad <- function(libname, pkgname) {

  rJava::.jpackage(pkgname, jars = "*", lib.loc = libname)
  rJava::.jpackage(pkgname, lib.loc = libname)
  rJava::.jaddClassPath(dir(file.path(getwd(), "inst/java"), full.names = TRUE))

}
