
data1<-data.frame(island = c("A", "B", "B", "A", "A"), count = c(2, 5, 12, 2, 3))
g1<-ggplot(data1) +  geom_boxplot(aes(x = factor(island), y = count))
g1 + geom_path(x = c(1, 1, 2, 2), y = c(25, 26, 26, 25))

data2 <- data.frame(x = c(1, 1, 2, 2), y = c(25, 26, 26, 25))

ggplot(data = data1, aes(x = factor(island), y = count)) +
  geom_boxplot() +
  geom_path(data = data2, aes(x = x, y = y))

#+++++++++++++++
A = c(1, 5, 8, 17, 16, 3, 24, 19, 6)
B = c(2, 16, 5, 7, 4, 7, 3)
C = c(1, 1, 3, 7, 9, 6, 10, 13)
D = c(2, 15, 2, 9, 7)
junk = list(g1=A, g2=B, g3=C, g4=D)
boxplot(junk)
