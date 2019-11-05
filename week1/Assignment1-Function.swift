// Assignment 1: Function

// Q1
func greet(person: String) -> String {
    return "Hello, \(person)"
}
print(greet(person: "Celeste"))

// Q2
func multiply(a: Int, b: Int = 10) {
    print(a * b)
}
multiply(a: 8)    // 80
multiply(a: 8, b: 20)    // 160

// Q3
// define a function
func funcName(param1: String, param2: Int) {
    print(param1, param2)
}
let argument1 = "This is an argument."
let argument2 = 1234
// to call a function
funcName(param1: argument1, param2: argument2)
/*
 "Parameters" are values that a function takes as input (when defining the function).
 "Arguments" are values provided to a function (when calling the function).
 */

// Q4
func birthday() -> String {
    return "This function returns a String-typed value."
}

func payment() -> Double {
    return 99.999
    // This function returns a Double-typed value.
}
