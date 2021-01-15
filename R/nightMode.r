#' Night mode style plots
#'
#' @export
nightModeOn <- function() {
    par(col.axis="white", col.main="white", col.lab="white", col.sub="white", 
    bg="black", col="white")
}

#' Night mode style plots
#'
#' @export
nightModeOff <- function() {
    par(col.axis="black", col.main="black", col.lab="black", col.sub="black", 
    bg="white", col="black")
}

