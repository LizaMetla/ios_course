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
