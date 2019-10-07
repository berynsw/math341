#R Assignment 1 is due Monday, October 7th. Please submit the modified script ONLY via Canvas.
#I encourage you to do your work in R Studio!

"---Exercise 1---
This code generates a sample of 100 random 
digits and displays the sample data in several histograms.
Add your own comments to fully explain what each line of code does.
Each of the histograms that are created below are based on the same sample data, 
but they do not look quite the same.
Explain how and why the graphs differ."

x<-c(0,1,2,3,4,5,6,7,8,9) #You can add a comment at the end of a line.
x100<-sample(x,100, replace=TRUE)
#Or you can add comments between lines.
summary(x100)
table(x100)
hist(x100,col="pink")
hist(x100,breaks=c(-1,0,1,2,3,4,5,6,7,8,9), col="orange")
hist(x100,breaks=seq(-0.5,9.5, by=1), prob=T,col="light yellow")
{hist(x100,breaks=seq(-0.5,9.5, by=1), prob=T,col="light green")
    axis(1, at=seq(0,9, by=1))}

"---Exercise 2---
Copy and modify the code in Exercise 1 above as needed simulate the experiment described in Ercise 2 on the handout
1000 times, and generate an appropriate histogram."
#
#INSERT YOUR CODE HERE
#
"---Exercise 3---
Here's how I made a frequency distribution table from a random sample of size n.
Run the following lines of code and add copious comments to explain what each command does."
n<-sample(200:10000,1)
y<-sample(c("duck","hawk","eagle", "goose","heron", "owl"), n, replace=T,prob=c(.15, .2, .1, .25, .05, .25))
summary(y)
summary(as.factor(y))
table(y)
length(y)
table(y)/length(y)
bird.freq<-table(y)
sum.bird<-sum(bird.freq)
sum.bird
bird.relfreq<-table(y)/length(y)
old=options(digits=2)
cbind(bird.freq, bird.relfreq)

"---Exercise 4---
Create a frequency distribution table for the sample data you generated in Exercise 2.
Include frequency and relative frequency."
#
#INSERT YOUR CODE HERE
#
"Save your modified script as Lastname _R1 and submit it to the Canvas site."