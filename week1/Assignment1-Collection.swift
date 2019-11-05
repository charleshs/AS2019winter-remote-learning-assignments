// Assignment 1: Collection

// Q1
// create an empty array with String data type, and named as myFriends
var myFriends: [String] = []

// Q2
myFriends.append(contentsOf: ["Ian", "Bomi", "Kevin"])

// Q3
myFriends.append("Michael")

// Q4
// move "Kevin" to the first element
let element = myFriends.remove(at: 2)
myFriends.insert(element, at: 0)

// Q5
for friend in myFriends {
    print(friend)
}

// Q6
// try to find element at index 5
/*
 Because the array contains only 4 elements and the maximum index is 3,
 "Index out of range" error will occur when trying to fetch myFriends[5].
 */

// Q7
let firstElement = myFriends[0]

// Q8
let lastElement = myFriends.last

// Q9
var myCountryNumber: [String: Int]

// Q10
myCountryNumber = ["US": 1, "GB": 44, "JP": 81]

// Q11
myCountryNumber.updateValue(0, forKey: "GB")

// Q12
// declare an empty dictionary
var emptyDictionary: [String: String] = [:]

// Q13
myCountryNumber.removeValue(forKey: "US")
myCountryNumber["JP"] = nil
// setting the value of a key to nil is the same as removing a key-value pair
print(myCountryNumber)
