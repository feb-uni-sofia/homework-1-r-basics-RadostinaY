#a
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#b
d <- c(xmax - xmin)

#c
averageMin <- mean(xmin)
averageMax <- mean(xmax)

#d
belowAvg <- xmin[xmin < 21.4]

## It's more informative to write
xmin[xmin < mean(xmin)]
## or
xmin[xmin < averageMin]

## than typing the result. Besides being easier to read it has the advantage
## that your programm will continue to work even if you change xmin or xmax...

#e

## Same comment as above.
aboveAvg <- xmin[xmin > 21.4]

#f
## Nicely done
dayNames <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
names(xmin) <- dayNames
names(xmax) <- dayNames

#g + h
temperatures <- data.frame(xmin = xmin, xmax = xmax, xminFahrenheit = 9 / 5 * xmin + 32)

#i
temperaturesFahrenheit <- data.frame(xmin = 9 / 5 * xmin + 32, xmax = 9 / 5 * xmax + 32)

#j
## This works but you are missing the second part, i.e. ii)
temperaturesFirstFiveDays <- data.frame(xmin = xmin[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')], xmax = xmax[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')])

## Easier way to do this:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]

