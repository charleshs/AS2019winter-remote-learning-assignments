//  Assignment 1: Collection
/* You should know how to declare an array in swift, and also how to add, remove, insert,
read object in an array. You should be familiar with the following syntax : append , insert ,
remove.
Array is a dangerous stuff in swift. If you access the array with index which is out of range,
your app will crash with fatal error. Please interact with array very carefully. */


// Q1
/* Please create an empty array with String data type and save it in a variable named
myFriends . */

var myFriends: [String] = []


// Q2
/* According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me
to add their name in to myFriends array. */

myFriends.append(contentsOf: ["Ian", "Bomi", "Kevin"])

// Q3
/* Oops,I forget to add ‘Michael’ who is one of my best friend, please help me to add
Michael to the end of myFriends array. */
myFriends.append("Michael")


// Q4
/* Because I usually hang out with Kevin, please move Kevin to the beginning of the
myFriends array. */

let element = myFriends.remove(at: 2)
myFriends.insert(element, at: 0)


// Q5
/* Use for…each to print all the friend in myFriends array. */

for friend in myFriends {
    print(friend)
}


// Q6
/* Now I want to know who is at index 5 in the myFriends array, try to find the answer
for me. Please explain how did you get the answer and why the answer is it. */

let answerToQ6 = """
Because the array contains only 4 elements and the maximum index is 3,
"Index out of range" error was thrown when trying to fetch myFriends[5].
"""


// Q7
/* How to get the first element in an array? */
let firstElement = myFriends[0]


// Q8
/* How to get the last element in an array? */
let lastElement = myFriends.last


// Q9
/* Please create an dictionary with keys of type String, value of type Int, and save it in a
variable named myCountryNumber . */

var myCountryNumber: [String: Int]


// Q10
/* Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81. */

myCountryNumber = ["US": 1, "GB": 44, "JP": 81]

// Q11
/* Change the ‘GB’ value from 44 to 0. */

myCountryNumber.updateValue(0, forKey: "GB")


// Q12
/* How to declare a empty dictionary? */

var emptyDictionary: [String: String] = [:]


// Q13
/* How to remove a key-value pair in a dictionary? */

myCountryNumber.removeValue(forKey: "US")
myCountryNumber["JP"] = nil
// setting the value of a key to nil is the same as removing a key-value pair
print(myCountryNumber)    // ["GB": 44]
