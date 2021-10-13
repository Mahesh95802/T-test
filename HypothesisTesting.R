library(utils)
library(stats)
library(webr)

alpha = 0.05
X <- as.data.frame(read.csv("https://raw.githubusercontent.com/Mahesh95802/T-test/main/players_fifa22.csv"))
X <- X[c("PreferredFoot","BallControl")]
LX <- subset(X,PreferredFoot == "Left")
RX <- subset(X,PreferredFoot == "Right")

#Declaring the Hypothesis
H0 <- "There is no significant difference in their Ball Control Skil between the Right-footed and Left-footed Players"
HA <- "There is a significant difference in their Ball Control Skil between the Right-footed and Left-footed Players"

#Performing the t-test
result <- t.test(sample(LX$BallControl,1000),sample(RX$BallControl,1000),var.equal=T)
print(result)
plot(result)

if (result$p.value < alpha) {
  print("H0 is rejected and HA is accepted")
  print(paste0("HA: ",HA))
} else {
  print("H0 is rejected and HA is accepted")
  print(paste0("HA: ",HA))
}
