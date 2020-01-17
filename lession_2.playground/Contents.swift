//: A UIKit based Playground for presenting user interface
  
import UIKit

//if-else
let a = 22
let b = 56

if a>b {
    print("that's impossible")
} else {
    print("that's it! a<b")
}

var c = a
let d = 11

if d>a{
    print("impossible")
}else if b<a{
    print("also impossible")
}else {
    print("you need to know thats d<c=a<b")
}

//В данном случае num3 будет равно 4, так как num1 больше num2, поэтому будет выполняться второй операнд: num1 - num2.
var num1 = 10
var num2 = 6
var num3 = num1 > num2 ? num1 - num2 : num1 + num2
print(num3)

//switch-case try
var num: Int = 88

switch num{
case 0:
    print("variable is 0")
case 2:
    print("variable is 2")
case 88:
    print("variable is 88")
default:
    print("can't recognise this number")
}

//talking about "_"
let number = 5
switch number {
case 1:
    print("Number = 1")
case 2:
    print("Number = 2")
case _:
    print("Number не равно ни 1, ни 2, но это не точно")
}

//сравнивать выражение не с одним значением, а с группой значений:
var num6: Int = 20

switch num6 {
case 0, 10:     // если num равно 0 или 10
    print("Переменная равна 0 или 10")
case 11..<20:    // если num в диапазоне от 11 до 20, не включая 20
    print("Переменная находится в диапазоне от 11 до 20")
case 20...30:   // если num в диапазоне от 20 до 30
    print("Переменная находится в диапазоне от 20 до 30")
default:
    print("не удалось распознать число")
}
//Оператор case 0, 10 задает два сравниваемых значения 0 и 10 и срабатывает, если выражение равно одному из этих значений.
//
//Оператор case 11..<20 определяет целый диапазон значений от 11 до 20 (не включая 20) и срабатывает, если выражение равно значению из этого диапазона.
//
//Оператор case 20...30 определяет целый диапазон значений от 20 до 30 (включая оба числа) и срабатывает, если выражение равно значению из этого диапазона.



//talking about tuples in switch-case

let personInfo = ("Tom", 18)

switch personInfo {
    
case ("Bob", 33):
    print("Имя: Bob, возраст: 33")
case (_, 18):
    print("Name: \(personInfo.0), Age: 18")
    fallthrough
case ("Tom", _):
    print("Name: Tom, Age: \(personInfo.1)")
case ("Tom", 1...20):
    print("Имя: Tom и возраст от 1 до 20")
default:
    ("can't recognize the information")
}

let simpleTuple : (String, Int, Double) = ("MAX", 1, 2.5)

let (stringMax, intNumber, doubleNumber) = simpleTuple

stringMax
intNumber
doubleNumber

simpleTuple.0
simpleTuple.1
simpleTuple.2

simpleTuple

//Но если мы хотим, чтобы также выполнялся и следующий оператор case (или оператор default), то в конце предыдущего блока case следует использовать оператор fallthrough:

let personInfoSecond = ("Max", 22)

switch personInfoSecond {
case ("Bob", 33):
    print("Имя: Bob, возраст: 33")
case (_, 22):
    print("Имя: \(personInfoSecond.0) и возраст: 22")
    fallthrough
case ("Tom", _):
    print("Имя: Tom и возраст: \(personInfo.1)")
        default:
        print("Информация не распознана")
}


//class Pl {
//    func playground()  {
//        object = 10
//    }
//    var object: Int = 0
//}
// Present the view controller in the Live View window
