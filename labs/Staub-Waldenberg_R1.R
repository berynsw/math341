#R Assignment 1 is due Monday, October 7th. Please submit the modified script ONLY via Canvas.
#I encourage you to do your work in R Studio!

"---Exercise 1---
This code generates a sample of 100 random 
digits and displays the sample data in several histograms.
Add your own comments to fully explain what each line of code does.
Each of the histograms that are created below are based on the same sample data, 
but they do not look quite the same.
Explain how and why the graphs differ."

#create a set of digits, c=combine values into list
x<-c(0,1,2,3,4,5,6,7,8,9) 
#new variable called x100, created by sampling elements of x 100 times with replacement
x100<-sample(x,100, replace=TRUE) 
#generic func used to produce result summaries
summary(x100) 
#the set (or sample space) x100 represented as a table
table(x100) 
#pink histogram (or bar graph) of set
hist(x100,col="pink")
#histogram with break points specified
hist(x100,breaks=c(-1,0,1,2,3,4,5,6,7,8,9),col="orange")
#breaks on sequence of halves, prob=t : bars represent density instead of frequency
hist(x100,breaks=seq(-0.5,9.5, by=1), prob=T,col="light yellow")
#same as previous but with axis added for labeling
{hist(x100,breaks=seq(-0.5,9.5, by=1), prob=T,col="light green")
    axis(1, at=seq(0,9, by=1))}

"---Exercise 2---
Copy and modify the code in Exercise 1 above as needed simulate the experiment described in Ercise 2 on the handout
1000 times, and generate an appropriate histogram."
#
# q<-c(one, one, two, two, two, three, three, three, four, four)
#s<-c(1,2,3,4)
#am I using probability correctly?
x1000<-sample(1:4, 1000, replace=TRUE, prob=c(.2, .3, .3, .2))
summary(x1000)
table(x1000)
hist(x1000,breaks=seq(.5, 4.5, by=1),col="purple")
#
"---Exercise 3---
Here's how I made a frequency distribution table from a random sample of size n.
Run the following lines of code and add copious comments to explain what each command does."
#sample num between 200 and 10000 one time
n<-sample(200:10000, 1)
#list of length n of sampled birds with different probabilities assigned to them
y<-sample(c("duck","hawk","eagle", "goose","heron", "owl"), n, replace=T,prob=c(.15, .2, .1, .25, .05, .25))
summary(y)
#makes y into a factor
summary(as.factor(y))
#makes table, like before
table(y)
#length of y = n, or total number of birds being sampled
length(y)
#converts table values from frequency to density (dividing frequencies of each bird by n)
table(y)/length(y)
#saving table(y) as a variable
bird.freq<-table(y)
#sums up all values in argument, saves in variable named sum.bird. this is also n.
sum.bird<-sum(bird.freq)
sum.bird
#table of y / n, bird frequency relative to 1
bird.relfreq<-table(y)/length(y)
b=table(y)
b
#left assignment can be done with <- or =
#digits controls number of significant digits to print
old=options(digits = 5)
#combines like sets of data
cbind(bird.freq, bird.relfreq)

"---Exercise 4---
Create a frequency distribution table for the sample data you generated in Exercise 2.
Include frequency and relative frequency."
#
x1000<-sample(1:4, 1000, replace=TRUE, prob=c(.2, .3, .3, .2))
summary(x1000)

num.freq=table(x1000)
num.relfreq=table(x1000)/length(x1000)
options(digits = 2)
cbind(num.freq, num.relfreq)
#
"Save your modified script as Lastname _R1 and submit it to the Canvas site."