// Constants and Variables
let label = "The width is: "
let width: Double = 59.51

let widthLabel = label + String(width)
print(widthLabel)

/*
 Use \() to include a floating-point calculation
 in a string and to include someone’s name in a greeting.
 */
let apples = 3, oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// print texts
print("\n")
print(appleSummary)
print(fruitSummary)

// Use three double quotation marks (""")
//for strings that take up multiple lines
let quotation = """
    I said "I have \(apples) apples."
    And then I said "I have \(apples + oranges) pieces of fruit."
    """

print(quotation)


// Creating arrays
var shoppingList = ["brush", "water", "tulips"]
shoppingList[1] = "Bottle of Water" // Change the value of Index 1

print("\n")
print(shoppingList)

var occupations = [
    "Malcolm" : "Backend Software Developer",
    "Kaylee" : "Frontend Software Developer"
]
// Print default added occupations
print(occupations)

// Print array with a new element
occupations["Marcus"] = "HHRR"
print(occupations)

// Arrays automatically grow as elements are added
shoppingList.append("Blue paint")
print(shoppingList)

// To create an empty array or dictionary, use initializer syntax
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// Control Flow statements
let individualScores = [1, 85, 100, 87, 12]
var teamScore = 0

for score in individualScores{
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
}
//Prints "11"
print("\nThe team score is: \(teamScore).")

//Optional values
var optionalString: String? = "Hello"
print(optionalString == nil)

/*
 If the optional value is nil, the conditional is false and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after let, which makes the unwrapped value available inside the block of code.
 */
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "\nHello, \(name)"
    print(greeting)
}

let nickName: String? = nil
let fullName: String = "Steve Wozniak"

// Provide a default value if nickName is set as nil
let informalGreeting = "\nHi, \(nickName ?? fullName)!"
print(informalGreeting)

// Switch comparison
// Prints "Is it a spicy red pepper?"
let vegetable = "Red Pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("Pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]
//  Dictionaries are an unordered collection
// so their keys and values are iterated over in an arbitrary order.
var typeOfNumber = ""
var largest = 0
for (numberType, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest{
            largest = number
            typeOfNumber  = numberType
        }
    }
}
print(typeOfNumber) // prints "Square"
print(largest) // prints "25"

// Use "while" to repeat a block of code until a condition changes
var n = 2
while n < 100 {
    n *= 2
}
print(n) // prints "128"

var m = 2
repeat {
    m *= 2
}while m < 150
print(m) // prints "256"


    // Functions and Closures
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day).";
}

print(greet(person: "Bob", day: "Thursday"))
