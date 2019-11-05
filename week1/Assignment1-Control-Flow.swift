// Assignment 1: Control Flow


// Q1
/* Here is an array:
let lottoNumbers = [ 10 , 9 , 8 , 7 , 6 , 5 ]
Please use For-Loop and Range to print the last three members in the lottoNumbers
array. */

let lottoNumbers = [10, 9, 8, 7, 6, 5]
print("print the last 3 elements of the array:")
for index in (3...5) {
    print(lottoNumbers[index])
}


// Q2
/* When use for-in loop, we make the computer do the same thing multiple times. The
index is increasing by 1. What if we want to decreasing by -1 ? What if we want to
increasing by 2 ? Please use swift syntax to get the result as images list below :

5
6
7
8
9
10

10
8
6
Please find a method which can help us complete these requirements. */

print("index decreasing by 1")
for index in (0...5).reversed() {
    print(lottoNumbers[index])
}
print("index increasing by 2")
for index in stride(from: 0, through: 5, by: 2) {
    print(lottoNumbers[index])
}


// Q3
/* Please use while loop to solve above question. */

print("using while: print last 3 elements of the array")
var i = 3
while i < 6 {
    print(lottoNumbers[i])
    i += 1
}
print("using while: index decreasing by 1")
i = 5
while i >= 0 {
    print(lottoNumbers[i])
    i += -1
}
print("using while: index increasing by 2")
i = 0
while i < 6 {
    print(lottoNumbers[i])
    i += 2
}


// Q4
/* Please use repeat-while loop to solve question 2. */

print("using repeat while: index decreasing by 1")
i = 5
repeat {
    print(lottoNumbers[i])
    i += -1
} while i >= 0
print("using repeat while: index increasing by 2")
i = 0
repeat {
    print(lottoNumbers[i])
    i += 2
} while i < 6


// Q5
/* What are the differences between while and repeat-while? */

let answerToQ5 = """
In a while loop, the condition is checked BEFORE the execution of the statements.
In a repeat-while loop, the condition is checked AFTER the execution of the statements
"""


// Q6
/* Here is variable isRaining to record the weather. Please write a statement that if the
weather is raining, print “It’s raining, I don’t want to work today.” , otherwise print
“Although it’s sunny, I still don’t want to work today.” */

var isRaining = true
if isRaining {
    print("It's raining, I don't want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}
// using ternary operator
print(isRaining ? "It's raining, I don't want to work today." : "Although it’s sunny, I still don’t want to work today.")


// Q7
/* In a company, we usually use numbers to represent job levels. Let’s make a
example. We have four job levels : Member, Team Leader, Manager, Director. We
use 1 to present Member, 2 to Team Leader, 3 to Manager, 4 to Director.
Now, create a variable name jobLevel and assign a number to it. If jobLevel number
is in our list, print the relative job title name; if not, just print “We don't have this job” .
Please use switch statement to complete this requirement. */

var jobLevel = 3
var jobTitle: String

switch jobLevel {
case 1:
    jobTitle = "Member"
case 2:
    jobTitle = "Team Leader"
case 3:
    jobTitle = "Manager"
case 4:
    jobTitle = "Director"
default:
    jobTitle = "We don't have this job"
}
print(jobTitle)
