#' Displays and returns a colour palette
#' 
#' @export
colorPalette <- function(colors, n, ...) {
    colfunc <- colorRampPalette(colors, ...)
    plot(rep(1, n), col=colfunc(n), pch=19, cex=3)
    return(colfunc)
}
