myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
    x + rnorm(length(x))
}


condition <- function(x) {
  if(x == 0) "zero"
  else if (x == 1) 
    "different of zero"
  
}

loopTest <- function(x) {
 for (i in x:10) {
   print(i)
 }
}

loopTest2 <- function() {
  x <- matrix(1:6,3,2)
  print(seq_len(nrow(x)))
  print(seq_len(ncol(x)))
  for (i in seq_len(nrow(x))) {
    for (j in seq_len(ncol(x))) {
      print(x[i,j])
    }
  }
}

add2 <- function(a, b) {
  a+b
}

above10 <- function(x) {
  use <-  x > 10
  x[use]
}
above <- function( x, n = 10) {
  use <-  x > n
  x[use] 
}

meanByColumn <- function() {
  x <- matrix(1:10, 2, 5)
    for (j in seq_len(ncol(x))) {
      total <- 0
      count <- 0
      mean <- 0
      for (i in seq_len(nrow(x))) {
        total <-  total+ x[i,j]
        count <- count+1
      }
      mean <- total/count
      print(mean)
    }
}


meanByColumnByCoursera <- function(x) {
    nc <-  ncol(x)
    means <- numeric(nc)
    for (i in 1:nc) {
      means[i] <- mean(x[, i])
    }
    print(means)
  
}
  
  