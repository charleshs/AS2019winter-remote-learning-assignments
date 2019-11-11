/// Assignment 2: Error Handling


/* Read the code above first and paste it in the playground file, there is an error inside the
code.Please solve the error by adding additional code in the file. Do not remove or modify
the code above. Call guess(number:) and pass 20 as the argument after you fix the
problem. */

// enum GuessNumberGameError should conform to Error protocol
enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int ) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print ( "Guess the right number: \(targetNumber)" )
    }
}

let game = GuessNumerGame()
do {
    try game.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("Your guess is wrong!")
}
