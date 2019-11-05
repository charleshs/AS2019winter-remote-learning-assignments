// Q1
let Pi = 3.14159
// use "let" to declare Pi because it's a mathematic constant.

// Q2
let x: Int = 50
let y: Int = 80
let average = (x + y) / 2

// Q3
let averageToRecord = Double(average)    // averageToRecord = 65.0
let a = 10 / 3    // a = 3
// This indicates an Int number divides an Int number, which gives a result of a Int number
// In this case, the result is 3. The decimal part of 3.333... is eliminated automatically.
let b = 10.0 / 3.0    // b = 3.333...
// This indicates a Double number dvides a Double number, which gives a result a Double number

// Q4
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

// Q5
var salary = 22000
salary += 28000    // salary = 50000

// Q6
let equality: Bool = 5 == 5    // equality = true
/*
 '=' is an "assign" operator
 '==' is an "equal to" operator
 */

// Q7
let c = 10
let d = 3
let remain = 10 % 3    // remain = 1

// Q8
/*
 'let' declares a constant, whose value is fixed upon creation and can't be changed during runtime (immutable).
 'var' declares a variable, whose value is not fixed and can be changed during runtime (mutable).
 */

// Q9
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
/*
 Type Inference in Swift involves the compiler automatically figuring out the suitable type of a constant or a variable
 when the type is not specifically defined by the programmer.
 */
let aString = "This is a string."
let aInt = 1234
let aBool = true
print(type(of: aString))  //  prints out "String"
print(type(of: aInt))     //  prints out "Int"
print(type(of: aBool))    //  prints out "Bool"

// Q11
/*
 ``` var phoneNumber = 0987654321 ```
 ``` phoneNumber = "Hello world." ```
 
 phoneNumber is of type Int by Swift's type inference.
 Therefore, when a String is assigned to phoneNumber,
 "Cannot assign value of type 'String to type 'Int'" error will occur
 
 */
