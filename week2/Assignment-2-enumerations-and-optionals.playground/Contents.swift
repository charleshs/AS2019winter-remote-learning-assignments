/// Assignment 2: Enumerations and Optionals


/* 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to
model them.
● Please create enum named Gasoline to model gasoline.
● Every kind of gasoline has its price. Please create a method named getPrice
in Gasoline enum that will return different price depending on different
gasoline.
● Please establish raw values for Gasoline . The data type of raw value should
be String. For example, Gasoline.oil92.rawValue should be “92”.
● Please explain what is enum associate value and how it works */

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel
    
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return 26.6
        case .oil95:
            return 28.1
        case .oil98:
            return 30.1
        case .diesel:
            return 24.4
        }
    }
}

let answerToQ1_4 = "`enum associated values` are additional values (of any types) being stored in enum cases. It can be used to store additional information alongside the case values"

// How it works...
enum Address {
    // for case ipv4, one can store the ip address in a tuple with UInt8 values
    case ipv4(UInt8, UInt8, UInt8, UInt8)
    // for case url, one can store the url as a string value
    case url(String)
}

let myAddress = Address.ipv4(192, 168, 1, 1)

switch myAddress {
// define 4 constant to store each element in the tuple
case .ipv4(let part1, let part2, let part3, let part4):
    print("The IPv4 address is: \(part1).\(part2).\(part3).\(part4)")
case .url(let url):
    print("The url is: \(url)")
}


/* 2. Optional is a very special data type in Swift. Take var a: Int ? = 10 for example, the
value of a will be nil or Int . You should learn how to deal with optional data type.
● People would like to have pets, but not everyone could have one. Declare a
class Pet with name property and a class People with pet property which will
store a Pet instance or nil . Please try to figure out what data type is suitable
for these properties in Pet and People.
● Please create a People instance and use guard let to unwrap the pet
property.
● Please create another People instance and use if let to unwrap the pet
property. */

class Pet {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}

class People {
    var name: String
    var pet: Pet?
    init(name: String, pet: Pet? = nil) {
        self.name = name
        self.pet = pet
    }
}

let alex = People(name: "Alex", pet: Pet("Kitty"))

func getPetNameOfPerson(person: People) -> String {
    // use `guard let` to unwrap pet property
    guard let pet = person.pet else { return "" }
    return pet.name
}

let alexPetName = getPetNameOfPerson(person: alex)
if alexPetName != "" {
    print("Alex has a pet named \(alexPetName).")
}

let chris = People(name: "Chris")
// use `if let` to unwrap pet property
if let chrisPet = chris.pet {
    print("Chris has a pet named \(chrisPet.name).")
} else {
    print("Chris does not have a pet.")
}

