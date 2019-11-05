// Assignment 1: Basic


// Q1
/* In swift , we usually define a variable through the syntax as below:
. var x: Int = 10 .
When calculating circle’s area, we use the formula: 2 * radius * Pi to get area. Now,
please define a variable Pi and assign a value to it. You can refer to the syntax
above while do think about using var or let and which data type it should be. */

let Pi = 3.14159
// use "let" to declare Pi because it's a mathematic constant.


// Q2
/* Create two constants x and y of type Int then assign any value to them. After that,
please calculate the average of x and y and store the result in a constant named
average. */

let x: Int = 50
let y: Int = 80
let average = (x + y) / 2


// Q3
/* Following with Q2, now we want to save the average in a record system, but the
system doesn’t accept 65 but 65.0.
● Please solve this problem so that we can put the average in the record
system.
● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ). */

let averageToRecord = Double(average)    // averageToRecord = 65.0
let a = 10 / 3    // a = 3
// This indicates an Int number divides an Int number, which gives a result of a Int number
// In this case, the result is 3. The decimal part of 3.333... is eliminated automatically.
let b = 10.0 / 3.0    // b = 3.333...
// This indicates a Double number dvides a Double number, which gives a result a Double number


// Q4
/* Swift is a very powerful language that it can infer the data type for you ( Type
inference ) while we still need to know the basics well. Please change the following
codes into the one with data type.
Ex: . var x = 10 . => . var x: Int = 10 .
var flag = true
var inputString = "Hello world."
let bitsInBite = 8
let averageScore = 86.8 */

var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8


// Q5
/* Compound assignment operator is very useful when programming. Please create
salary as 22000, and use unary plus operator adding 28000 to salary, and it will be
50000 after this process. */

var salary = 22000
salary += 28000    // salary = 50000


// Q6
/* You should notice that ‘=’ has difference meaning in programming. In real world, ‘=’
means equal while In programming, ‘=’ means assign . You simply put the right hand
side data into left hand side variable or constant.
Now please write down the Equality operator in swift. */

let equality: Bool = 5 == 5    // equality = true
// '=' is an "assign" operator
// '==' is an "equal to" operator


// Q7
/* Declare two constants that values are 10 and 3 each, then please calculate the
remainder and save the result in a constant named remain . */

let c = 10
let d = 3
let remain = 10 % 3    // remain = 1


// Q8
/* Please explain the difference between let and var . */

let answerToQ8 = """
'let' declares a constant, whose value is fixed upon creation and can't be changed during runtime (immutable).
'var' declares a variable, whose value is not fixed and can be changed during runtime (mutable).
"""


// Q9
/* Please write down naming conventions and rules you learned in this session. */

// Using lower camel case for constant, variable, and function names
let myFirstName = "Charles"
var myLastName = "Hsieh"
func printMyName() {
    print("\(myFirstName) \(myLastName)")
}
// Using upper camel case for struct, class, enum, and protocol names, whatever is regarded as a type
struct MyStruct { }
class MyClass { }
enum MyEnum { }
protocol MyProtocal { }


// Q10
/* What is Type Inference in swift? */

let answerToQ10 = """
Type Inference in Swift involves the compiler automatically figuring out the suitable type of a constant or a variable
when the type is not specifically defined by the programmer.
"""
let aString = "This is a string."
let aInt = 1234
let aBool = true
print(type(of: aString))  //  prints out "String"
print(type(of: aInt))     //  prints out "Int"
print(type(of: aBool))    //  prints out "Bool"


// Q11
/* What is the problem about this piece of code?
var phoneNumber = 0987654321
phoneNumber = "Hello world." */

let answerToQ11 = """
phoneNumber is of type Int due to type inferencing by Swift
Therefore, when a value of type String is assigned to phoneNumber,
An error "Cannot assign value of type 'String to type 'Int'" will be thrown.
"""
