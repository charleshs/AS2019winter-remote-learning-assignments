/// Assignment 2: Object-Oriented Swift


/* 1. Declare a class Animal with property gender and method eat() . The data type of
gender should be enum Gender as below and when you call eat() method, it will print
I eat everything! */

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender = .undefined) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}


/* 2. Declare three classes: Elephant , Tiger , Horse that inheriting from Animal and
override the eat method to print what they usually eat. */

class Elephant: Animal {
    override func eat() {
        print("I eat grasses and small plants!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat other animals!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grasses and hay!")
    }
}


/* 3. Declare a class Zoo with a property weeklyHot which means the most popular one in
the zoo this week. The codes below can’t work correctly, please find what data type
should A be and solve the problem. Be noticed that tiger , elephant , horse are
instances of class Tiger, Elephant and Horse. */

class Zoo {
    // Class Tiger, Elephant and Horse inherit from Animal.
    // To assign these 3 types to weeklyHot property, define weeklyHot as type Animal will solve the problem.
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())
zoo.weeklyHot = Horse()
zoo.weeklyHot = Elephant()


/* 4. What’s the difference between Struct and Class ? */
let answerToQ4 = """
Struct is value type and immutable.
Class is reference type and mutable.
A class can take the characteristics of another class by inheritance.
Inheritance also enables type casting to check and interpret the type of a class instance at runtime.
"""


/* 5. What’s the difference between instance method and type method ? */

let answerToQ5 = """
Instance methods are functions that belong to the instances of a particular class, structure, or enumeration.
Type methods are functions that are called on the type itself, not by the instance of that particular type.

To define a type method, use `static func` instead of `func` keyword.
For classes, `class func` can be used to define type methods, to allow subclasses to override this method.
"""

/* 6. What does Initilizer do in class and struct ? */

let answerToQ6 = """
Initializers are called to create a new instance of a particular type.
Implementing the method `init()` of a class or struct to define what will be executed when a new instance of the class or struct is created.
"""

/* 7. What does self mean in an instance method and a type method ? */

let answerToQ7 = """
`self` in an instance method refers to the instance that calls this method.

In another situaion, when the parameter name of a method and the property name are the same,
`self.propertyName` is used to distinguish between property and parameter names.
"""

/* 8. What’s the difference between reference type and value type ? */
let answerToQ8 = """
Instances of value types are copied when they are assigned to a variable or constant, or being passed to a function (method).
Unlike value types, reference types pass a reference (i.e. pointer) to the instance when being assigned.
"""
