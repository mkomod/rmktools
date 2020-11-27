
#' @export
nightModeOn <- function() {
    par(col.axis="white", col.main="white", col.lab="white", col.sub="white", 
    bg="black", col="white")
}

#' @export
nightModeOff <- function() {
    par(col.axis="black", col.main="black", col.lab="black", col.sub="black", 
    bg="white", col="black")
}

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

#' @export
showLty <-function(){
  oldPar<-par()
  par(font=2, mar=c(0,0,0,0))
  plot(1, pch="", ylim=c(0,6), xlim=c(0,0.7),  axes=FALSE,xlab="", ylab="")
  for(i in 0:6) lines(c(0.3,0.7), c(i,i), lty=i, lwd=3)
  text(rep(0.1,6), 0:6, labels=c("0.'blank'", "1.'solid'", "2.'dashed'", "3.'dotted'",
                                 "4.'dotdash'", "5.'longdash'", "6.'twodash'"))
  par(mar=oldPar$mar,font=oldPar$font )
}

#' @export
colorRange <- function() {
    colfunc <- colorRampPalette(c("black", "white"))
    plot(rep(1,10),col=colfunc(10),pch=19,cex=3)
}
