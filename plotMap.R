plotMap = function(dataset, title, column, color) {
  plot(dataset, 
       xlim=c(-95.52876, -93.46062),
       ylim=c(38.02297, 39.80301),
       col=color,
       yaxt="n", xaxt="n", border=F)
  title(title)
  segments(-94.80258, 38.81893, -94.31755, 38.81893,  col="black", lwd=2)
  segments(-94.80258, 39.24914, -94.31755, 39.24914,  col="black", lwd=2)
  segments(-94.80258, 38.81893, -94.80258, 39.24914,  col="black", lwd=2)
  segments(-94.31755, 38.81893, -94.31755, 39.24914,  col="black", lwd=2)
}

zoomMap = function(dataset, title, column, color) {
  plot(dataset, 
       xlim=c(-94.80258, -94.31755),
       ylim=c(38.81893, 39.24914),
       col=color, border="black",
       yaxt="n", xaxt="n")
  title(title)
}