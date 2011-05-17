# Read CSV files
eager <- read.csv(file="goldbach-eager.csv", header=FALSE)
lazy <- read.csv(file="goldbach-lazy.csv", header=FALSE)

totals <- c(eager$V2, lazy$V2)
min <- min(totals)
max <- max(totals)

pdf("benchmarks.pdf")
plot(eager, type="n", xlab="Input size (N)",
        ylab="Time (in s)", ylim=c(min, max))
legend("topleft", c("eager", "lazy"), fill=c("red", "green"))
points(eager, col="red")
points(lazy, col="green")
