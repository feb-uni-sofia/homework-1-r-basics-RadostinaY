#a
x <- c(4, 1, 1, 4)

#b
y <- c(1, 4)

#c
diff <- c(x - y) # vector y recycles until it reaches the same length as x

#d
s <- c(x, y)

#e
rep(s, 10)
length(rep(s, 10))

#f
rep(s, each = 3)

#g
seq(7, 21)
rep(7:21)

#h
length(seq(7, 21))