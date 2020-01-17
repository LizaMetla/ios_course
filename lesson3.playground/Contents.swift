//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//conversion to int from string
//Опциональные типы представляют объекты, которые могут иметь, а могут и не иметь значение. Опциональные
//типы выступают двойниками базовых типов. Все они имеют в конце вопросительный знак: Int?, String? и т.д.
//Вопросительный знак как раз указывает, что это опциональный тип.

let oneString = ("123")
let toNumber = Int(oneString)

//working with optional type
//print(toNumber)

var a:Int? = 12
var b:Int = 11
//var c = a + b
//not the same TYPE

//to make it WORK we add for "a" in summation ! :
var c = a! + b

let number44: Int? = 44
if number44 == 44{
    print("number44 is eqal to 44")
} else {
    print("number44 is not eqal to 44")
}


//Однако с операциями <, >, <=, >= все будет несколько иначе. Например, следующий код выдаст ошибку:

//let ab: Int? = 10
//if ab > 5{
//    print("a is greater than 5")
//}

let ab: Int? = 10
if ab! > 5 {
    print("ab is greater than 5")
}

//guard wrong functions
func function () {
guard number44 != ab else {
    print("not the same")
    return
    }
    print("true")
}
function()

//for-in
for item in 1...4 {
    print(item)
}

//С помощью оператора where можно задавать условия выборки из последовательности элементов:


//guard and work with optional no optional type
var optionalInt : Int?

func printNonOptional (value: Int) {
    print(value)
}

if let nonOptional = optionalInt {
    printNonOptional(value: nonOptional)
    
} else {
    
}

optionalInt = 11
func guardlet() {
    guard let nonOptional = optionalInt else {
        return
    }
    nonOptional
}
guardlet()

//nil-coalescing operator
//if there is no int it will print "there is nill"
print(optionalInt ?? "there is nill")

//force принудительное разворачивание рограммы
//нельзя использовать в продакшене

let nonOptionalForced = optionalInt!

//////////////////////////////////////////////////////////////////////////////


//talking about structures AND classes in swift

//протоколы (могут наследовать классы и структуры)
//не обьекты, не содержат свойства ,но содержат сигнатуры свойств
//по протоколу позволяет обращаться к свойствам для изменений

protocol GenericProtocol {
    var genericProperty: Int? { get set }
}

struct SimpleStruct: GenericProtocol {
    var genericProperty: Int?
    
    
    var firstVariable : Int
}

let myStructInstance = SimpleStruct(genericProperty: 1, firstVariable: 1)
//myStructInstance.genericProperty = 100000 - VALUE TYPE


//tсли переменная optional c ? , то можно не инициализировать переменную класса
//class SimpleClass : GenericProtocol {
//    var genericProperty: Int?
//
//    var firstVariable : Int?
//}
//let myClassInstance = SimpleClass()



class Telephone : GenericProtocol {

    
    var genericProperty: Int?
    
    var numberIphone : Int
    var color : String?
    
    init(inputNumberIphone: Int) {
       numberIphone = inputNumberIphone
    }
}
let myTelephone = Telephone(inputNumberIphone: 22)
myTelephone.numberIphone
myTelephone.color

myTelephone.genericProperty = 100000 //REFERENCE TYPE - поэтому работает

//изменили genericP поэтму теперь 100000
var yourTelephone = myTelephone
yourTelephone.genericProperty

yourTelephone = Telephone(inputNumberIphone: 2345)
yourTelephone.genericProperty = 0

myTelephone.genericProperty
