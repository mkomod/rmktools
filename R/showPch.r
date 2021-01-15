#' Show the point character types
#'
#' @export
showPch <-function() {
  oldPar<-par()
  par(font=2, mar=c(1.2,1,1.5,0))

  y=rev(c(rep(1,6),rep(2,5), rep(3,5), rep(4,5), rep(5,5)))
  x=c(rep(1:5,5),6)
  plot(x, y, pch = 0:25, cex=1.5, ylim=c(1,5.5), xlim=c(1,6.5), 
       axes=FALSE, xlab="", ylab="", bg="blue", main="pch")
  text(x, y, labels=0:25, pos=3)

  par(mar=oldPar$mar,font=oldPar$font )
}
