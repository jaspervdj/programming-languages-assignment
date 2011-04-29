parallel <- read.csv(file="parallel.csv")
sequential <- read.csv(file="sequential.csv")

xs <- 1:nrow(parallel)

colors <- c("red", "green")

pdf("benchmarks.pdf")
barplot(rbind(sequential$Mean, parallel$Mean), col=colors,
    names.arg=sequential$Name, beside=TRUE, ylab="Time (in s)", log="y")
legend("topleft", c("sequential", "parallel"), fill=colors)
dev.off()
