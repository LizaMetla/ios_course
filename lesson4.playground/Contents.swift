//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//work with massives


var constArray: [Int] = [1, 2, 3, 4, 5]
var item = [1, 2, 3]

//iterating through the array
//for item in constArray {
//    //code
//}

//2-d iterating
constArray.forEach{ item in
    print(item)
}

//dictionary
//creating

let constDictionary: Dictionary<String, Int> = [:]

//alternative doesn't work
//var anotherConstDictionary: [String, String] = [:]

//var TVProperties = {
//    "color" : 1
//    "size" : 120
//    "type" : 1
//}

var TV = [String:Int]()
var TVProperties: [String: Int] = ["Apple": 1, "Microsoft": 2, "Google": 3]
//modifiing

var dictItem = TVProperties["color"]
if let nonNilItem =  TVProperties["color"] {
} else {
}

//замыкания

TVProperties["MAXssize"] = 2000
TVProperties

var phones1: Dictionary<String, String> = [:]

if phones1.isEmpty {
    print("Словарь phones пуст")
} else {
    print("В словаре phones есть элементы")
}

var phones: [String: String] = ["Apple": "iPhone 6S", "Microsoft": "Lumia 950", "Google": "Nexus X5"]
// получение элемента по ключу
print(phones["Apple"])      // iPhone 6S
// изменение элемента
phones["Apple"] = "iPhone 5SE"

phones.updateValue("iPhone 5SE", forKey: "Apple")
print(phones["Apple"])      // iPhone 5SE

//deleting the element from dict

//phones["Google"] = nil
//or we can use
phones.removeValue(forKey: "Google")

//we can make an dictionary from array
let countries = ["Spain", "Belarus"]
let capitals = ["Madrid", "Minsk"]

var seq = zip(countries, capitals)

var dict = Dictionary(uniqueKeysWithValues:seq)
for (key, value) in dict {
    print("\(key) - \(value)")
}

//creating SET
//can have only unique elements
var customSet: Set<Int> = [1, 2 ,3, 4, 5]
customSet.count
var subSet: Set<Int> = [2, 3, 4, 7]
var isSubset = subSet.isSubset(of: customSet)

//использование замыканий, чтобы функцию передавать в функцию
//не статическая переменная, а динамическая , как функция , в которую можно передавать

var filterCustom = customSet.filter { argument -> Bool in
    if argument < 4{
    return true
    } else {
        return false
    }
}

let newset = filterCustom.map {
    $0 * 2
}

func newFunc (param: Int) -> Int {
   return 1
}

newset
filterCustom
filterCustom.sorted()

//nothing to return
func newFunc1 (param: Int) -> Void {
   
}

func funcName (id index: Int, param2: Double) -> Int {
    return index
}

func color (_ red: Int? = 1, _ green: Int? = 2, _ blue: Int? = 3) -> Int?{
    guard let red = red,
        let green = green,
        let blue = blue else {
            return 0
    }
    return red + green + blue
}


var colorComponent:Int? = nil
let variable = funcName(id: 1, param2: 1.5)
color()


///////////////////////////////////////////////
struct CustomStruct {
    func shortAction() {
        
    }
    static func iternalFunc() {
        //shortAction()
    }
}

var customStructVar = CustomStruct()
customStructVar.shortAction()
CustomStruct().shortAction()

var color = UIColor(white: 255, alpha: 1.0)


//CLOSURES - замкания

//typealias
typealias MyC = (Int, String) -> Void

var customClosures: (Int, String) -> Void = {integeeer,
    striiiiing in
    print("closures are called")
    print(integeeer)
    print(striiiiing)
}
var  newClosures = customClosures
newClosures(1, "HELOOOOOO")

//if you do not want to use argument
var customClosures1: (Int, String) -> Void = {
    print("closures are called")
    print($0)
    print($1)
}

var oneMoreClosure: MyC = {
    $1
    $0
}


