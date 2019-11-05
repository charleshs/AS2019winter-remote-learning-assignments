// Assignment 1: Control Flow

// Q1
let lottoNumbers = [10, 9, 8, 7, 6, 5]
print("print the last 3 elements of the array:")
for index in (3...5) {
    print(lottoNumbers[index])
}

// Q2
print("index decreasing by 1")
for index in (0...5).reversed() {
    print(lottoNumbers[index])
}
print("index increasing by 2")
for index in stride(from: 0, through: 5, by: 2) {
    print(lottoNumbers[index])
}

// Q3
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

// Q5 - Differences between while loop and repeat-while loop
/*
 In a while loop, the condition is checked BEFORE the execution of the statements.
 In a repeat-while loop, the condition is checked AFTER the execution of the statements
 */

// Q6
var isRaining = true
if isRaining {
    print("It's raining, I don't want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}
// using ternary operator
print(isRaining ? "It's raining, I don't want to work today." : "Although it’s sunny, I still don’t want to work today.")

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

