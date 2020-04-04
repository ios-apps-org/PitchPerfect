//: ## Collections
//: Array - ordered list of items
//:
//: Dictionary - collection of key-value pairs
//:
//: Set - unordered list of distinct values
//:
//: ## Initializing Arrays
//: The verbose way
var numbers = Array<Double>()

//: More often you will see ...
var moreNumbers = [Double]()
moreNumbers = [85.0, 90.0, 95.0]

//: Array literal syntax
let differentNumbers = [97.5, 98.5, 99.0]

//: Array concatenation is super convenient in Swift
moreNumbers += differentNumbers

//: ## Swift Arrays have types
//: An array can hold any type of object
struct LightSwitch {
    var on: Bool = true
}

var circuit = [LightSwitch]()

var livingRoomSwitch = LightSwitch()
var kitchenSwitch = LightSwitch()
var bathroomSwitch = LightSwitch()

circuit = [livingRoomSwitch, kitchenSwitch, bathroomSwitch]


// Examples:
var musicians = ["Neil Young", "Kendrick Lamar", "Flo Rida", "Fetty Wap"]
musicians.append("Rae Sremmurd")
musicians.insert("Dej Loaf", at: 2)

let intArray = [7, 21, 25, 13, 1]
var sum = 0
for value in intArray {
    sum += value
}

func removeElements(array: [Int], n: Int) -> [Int] {
    var newArray = array
    for _ in 1...n {
        newArray.remove(at: 0)
    }
    return newArray
}


// Dictionaries
var groupDict = [String:String]()
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions":"pride"]
animalGroupsDict["monkeys"] = "troop"
animalGroupsDict["crows"] = "murder"

animalGroupsDict.count
animalGroupsDict["geese"] = nil

var group = animalGroupsDict.updateValue("barrel", forKey:"monkeys")
type(of: group)

animalGroupsDict.updateValue("crash", forKey: "rhinoceroses")
print(animalGroupsDict)

// returns optional - chance it may not exist in dict
let groupOfWhales = animalGroupsDict["whales"]

// unwrap optional
if let groupOfWhales = animalGroupsDict["whales"] {
    print("We saw a \(groupOfWhales) of whales from the boat.")
} else {
    print("No value found for key!")
}

//: [Next](@next)
