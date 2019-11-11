/// Assignment 2: Protocol in Swift


/* 1. Declare a struct Person with a name property type String and a protocol name
PoliceMan . There is only one method arrestCriminals with no argument and return
void in the protocol. */

protocol PoliceMan {
    func arrestCriminals() -> Void
}

struct Person {
    var name: String
    var toolMan: ToolMan
}


/* 2. Make struct Person conform to PoliceMan protocol. */

extension Person: PoliceMan {
    func arrestCriminals() {
        print("I arrested a criminal, yaaaaaay!")
    }
}


/* 3. Declare a protocol ToolMan with a method fixComputer that no argument and return
void. */

protocol ToolMan {
    func fixComputer() -> Void
}


/* 4. Add a property toolMan to the struct Person with data type ToolMan . */

// completed in line 14


/* 5. Declare a struct named Engineer that conforming to the ToolMan protocol. */

struct Engineer: ToolMan {
    func fixComputer() {
        print("I'm a happy tool man and I fix computers!")
    }
}


/* 6. Create a Person instance with the name Steven and also create the relative data you
need to declare this instance. */
let engineer = Engineer()
let person = Person(name: "Steven", toolMan: engineer)
engineer.fixComputer()
person.arrestCriminals()
