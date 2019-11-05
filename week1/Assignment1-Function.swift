// Assignment 1: Function


// Q1
/* Please declare a function named greet with person as argument label and name as
parameter name. This greet function will return a String. For example, if you call the
function greet like this:
greet (person: "Celeste" )
It will return string: “Hello, Celeste” . */

func greet(person: String) -> String {
    return "Hello, \(person)"
}
print(greet(person: "Celeste"))


// Q2
/* Please declare a function named multiply with two argument a , b , and with no return
value that when you call this function, compiler will print out the result of a * b . Be
noticed that we want to give argument b with a default value 10. */

func multiply(a: Int, b: Int = 10) {
    print(a * b)
}
multiply(a: 8)    // 80
multiply(a: 8, b: 20)    // 160


// Q3
/* What’s the difference between argument label and pararmeter label in function ? */

// define a function
func funcName(param1: String, param2: Int) {
    print(param1, param2)
}
let argument1 = "This is an argument."
let argument2 = 1234
// to call a function
funcName(param1: argument1, param2: argument2)

let answerToQ3 = """
"Parameters" are values that a function takes as input (when defining the function).
"Arguments" are values provided to a function (when calling the function).
"""


// Q4
/* What are the return type in the following statements?
func birthday( ) -> String {
}
func payment( ) -> Double {
} */

func birthday() -> String {
    return "This function returns a String-typed value."
}

func payment() -> Double {
    return 99.999
    // This function returns a Double-typed value.
}
