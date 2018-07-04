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

print()

// conditional statement

if(myCurrentAge < 17) {
    print("You cannot take your driver license")
} else if myCurrentHeight > 170 && myCurrentAge > 17 {
    print("You may take your driver license at SAMSAT")
}

print()

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

print()

// looping

print("Menggunakan for index in 1..5")
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

print()

print("Menggunakan for index in stride")
for index in stride(from: 0, to: 5, by: 2) {
    print("\(index)")
}

print()

print("Menggunakan while condition")
var index = 0
while index < 5 {
    index += 1
    if index % 2 == 0 { print("\(index) is even")
    } else {
        print("\(index) is odd")
    }
}

print()

// switch

print("Switch")

let someChar = "z"
print("Karakter \(someChar): ", terminator: "")
switch someChar {
case "a":
    print("karakter ke-1")
case "b":
    print("karakter ke-2")
case "z":
    print("karakter terakhir")
default:
    print("undefined")
}

let approxCount = 63
print("Approx Count \(approxCount): ", terminator: "")
switch approxCount {
case 0:
    print("no moons orbiting Saturn")
case 1..<5:
    print("a few moons orbiting Saturn")
default:
    print("undefined")
}

let worldcup_group = "A"
print("World Cup Group \(worldcup_group): ", terminator: "")
switch worldcup_group {
case "A":
    print("URU, RUS, KSA, EGY")
case "B":
    print("SPA, POR, IRN, MOR")
case "C":
    print("FRAN, DEN, PER, AUS")
case "D":
    print("CRO, ARG, NGA, ICU")
default:
    print("undefined")
}

print()

// tupple

print("Tupple")

var httpErrorCode: (code: Int, descr: String) = (404, "Not Found!")
httpErrorCode = (200, "OK!")
print(httpErrorCode)

print()

// collections

print("Array")

// array

var techFac = [String]()
techFac.isEmpty
techFac.count
techFac.append("Hello")
techFac.insert("World!", at: 1)
techFac.count
techFac[1] = "omrobbie"

var designFac = ["Rara", "Nanny"]
designFac.count

var businessFac: [String] = ["Henri"]
businessFac.count

print()

// set

print("Set")

var musicGenre = Set<String>()
musicGenre.count

musicGenre.insert("Rock")
musicGenre.insert("Jazz")

if musicGenre.isEmpty {
    print("no music data")
} else {
    print("there is \(musicGenre.count) music data")
    for genre in musicGenre {
        print(genre)
    }
}

print()

// dictionary

print("Dictionary")

var airport = [String:String]()
airport.count
airport["CGK"] = "Jakarta"
airport["DPS"] = "Denpasar"
airport.count

print(airport["CGK"]!)

//if let bandara = airport["CGK"] as? String {
//    print(bandara)
//}

for bandara in airport {
    print(bandara)
}

for bandara in airport {
    print(bandara.value)
}

for bandara in airport.keys {
    print(bandara)
}

for bandara in airport.values {
    print(bandara)
}

print("\nNano Challange")

let makhluk: [String:[String]] = [
    "hewan":["kambing", "kucing"],
    "unggas":["ayam", "bebek", "angsa"],
    "serangga": ["nyamuk", "lalat", "lebah", "laron"]
]

print("\nCara 1")
print("Hewan    = \(makhluk["hewan"]!.count)")
print("Unggas   = \(makhluk["unggas"]!.count)")
print("Serangga = \(makhluk["serangga"]!.count)")

print("\nCara 2")
var count_makhluk = 0
for (key, value) in makhluk {
    let cnt = makhluk[key]!.count
    count_makhluk += cnt
    print("\(key) = \(cnt) -> \(value)")
}
print("Total makhluk = \(count_makhluk)")

print("\nCara 3")
var total_makhluk = 0
for jenis in makhluk.keys {
    if let arrMacam = makhluk[jenis] {
        print("Jenis \(jenis) terdapat \(arrMacam.count) macam")
        total_makhluk += arrMacam.count
    }
}
print("Total makhluk = \(total_makhluk)")

print()

// function

print("Function")

func menyapa(siapa: String) {
    print("Hallo \(siapa)!")
}

func ramahMenyapa(_ siapa: String) -> String {
    return "Hallo, \(siapa)! Apa kabar?"
}

menyapa(siapa: "omrobbie")
let kata = ramahMenyapa("omrobbie")
print(kata)

func tambah(_ a:Int = 0, _ b:Int = 0) -> Int {
    return a + b
}
let angka1 = 2
let angka2 = 3
print("\(angka1) + \(angka2) = \(tambah(angka1, angka2))")

func cekGenap(_ a:Int) -> Bool {
    return a % 2 == 0
}
let angka = 4
print("Apakah \(angka) adalah bilangan genap? \(cekGenap(angka))")

func tempCheck(_ suhu:Int) -> String {
    switch suhu {
    case 0...28:
        return "Suhu normal"
    case 29...48:
        return "Suhu hangat"
    case 49...100:
        return "Suhu panas"
    default:
        return "Undefined"
    }
}
let suhu = 28
print("Suhu \(suhu) derajat celcius = \(tempCheck(suhu))")

enum TempName {
    case Celcius, Farenheit, Kelvin
}

func tempConversion(_ suhu:Float, _ awal:TempName, _ tujuan:TempName ) -> Float {
    switch awal {
    case .Celcius:
        switch tujuan {
        case .Celcius:
            return suhu
        case .Farenheit:
            return (suhu * 9/5) + 32
        case .Kelvin:
            return suhu + 273.15
        }
    case .Farenheit:
        switch tujuan {
        case .Celcius:
            return (suhu - 32) * 5/9
        case .Farenheit:
            return suhu
        case .Kelvin:
            return (suhu - 32) * 5/9 + 273.15
        }
    case .Kelvin:
        switch tujuan {
        case .Celcius:
            return suhu - 273.15
        case .Farenheit:
            return (suhu - 273.15) * 9/5 + 32
        case .Kelvin:
            return suhu
        }
    }
}
print(tempConversion(100, .Kelvin, .Celcius))

