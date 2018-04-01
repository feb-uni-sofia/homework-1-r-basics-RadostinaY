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

#e
aboveAvg <- xmin[xmin > 21.4]

#f
dayNames <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
names(xmin) <- dayNames
names(xmax) <- dayNames

#g + h
temperatures <- data.frame(xmin = xmin, xmax = xmax, xminFahrenheit = 9 / 5 * xmin + 32)

#i
temperaturesFahrenheit <- data.frame(xmin = 9 / 5 * xmin + 32, xmax = 9 / 5 * xmax + 32)

#j
temperaturesFirstFiveDays <- data.frame(xmin = xmin[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')], xmax = xmax[c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')])