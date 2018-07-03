import Foundation

// variable

let myName = "I Putu Roby Irawan"
let myNickname = "omrobbie"
let myCurrentAge: Int = 22

var myOrigin = "Denpasar, Bali"

var myCurrentHeight: Float = 183.5
var myCurrentWeight: Float = 65

var myFeelToday: String = "Joy"
var myReasonHere: String = "To be ther world class developer, and facilitate others to achieve the same"
var myGoal: String = "Create a better world"

print("My name is", myName)
print("You can call me", myNickname)
print("My current age is", myCurrentAge)

print("I'm from \(myOrigin)\n")
print("My height \(myCurrentHeight) and weight \(myCurrentWeight)\n")

print("What I feel today?", myFeelToday)
print("And the reason tobe here?", myReasonHere)
print("My goal is to \(myGoal)")

print("\n")

// conditional statement

if(myCurrentAge < 17) {
    print("You cannot take your driver license")
} else if myCurrentHeight > 170 && myCurrentAge > 17 {
    print("You may take your driver license at SAMSAT")
}

print("\n")

var argentinaGoals: Int = 0
var franceGoals: Int = 0

argentinaGoals += 1
franceGoals += 1
print("First Match Score")
print("France = \(franceGoals)")
print("Argentina = \(argentinaGoals)\n")

argentinaGoals += 2
franceGoals += 3
print("Second Match Score")
print("France = \(franceGoals)")
print("Argentina = \(argentinaGoals)\n")

if argentinaGoals == franceGoals {
    print("It's tie.. What a game!")
} else if argentinaGoals > franceGoals {
    print("WINNER WINNER CHICKEN DINNER")
} else {
    print("France is cheating!!")
}

print("\n")

// looping

print("Menggunakan for index in 1..5")
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

print("\n")

print("Menggunakan for index in stride")
for index in stride(from: 0, to: 5, by: 2) {
    print("\(index)")
}

print("\n")

print("Menggunakan while condition")
var index = 0
while index < 5 {
    index += 1
    if index % 2 == 0 {
        print("\(index) is even")
    } else {
        print("\(index) is odd")
    }
}

print("\n")
