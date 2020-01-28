//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
 1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите переменную sum типа Optional-Int  без начального значения
 - Присвойте sum значение равное сумме x и y
 */

let x: Int = 5
var y: Double = 4.0
var sum: Int?
sum = x + Int(y)
/*:
 2. Разверните опционал sum и выведите в консоль. Обратите внимание чтобы в выводе отсутствовало Optional()
 */
if let NotOptionalSum = sum {
print(NotOptionalSum)
}
/*:
 3. Выведите в консоль четные числа от 2 до 2000
 */
for item in 2...2000 where item % 2 == 0 {
    print(item)
}
/*:
 4. Объявите новый тип ColorTuple, который является tuple из четырех компонентов (3 для цвета и один для прозрачности)
 Объявите переменную myColor типа ColorTuple?
 Задайте ей значение
 */
typealias ColorTuple = (Int, Int, Int, Int)
var myColor: ColorTuple? = (2, 4 ,5 ,6)

/*:
 5. Объявите функцию, которая получет на вход 3 параметра типа Int и возвращает результат типа ColorTuple
 */
func newFunc (one: Int, two : Int, three: Int) -> ColorTuple{
    let newOne = one
    let newTwo = two
    let newThree = three
    let newF = 100000
    let colors = (newOne, newTwo, newThree, newF)
    return colors
}

/*:
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */
func anotherNewFunc(name :String, surname : String) -> (String, String) {
    var newName = name
    var newSurname = surname
    var fullName = (name, surname)
    return fullName
}

/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива
 
 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]
 */
func secondAnotherNewFunc(v:[String?]) -> [String] {
    let value = v.filter{$0 != nil}
    return value as! [String] }
var secondValue = ["Hello, ", nil, "world!"]
print(secondAnotherNewFunc(v: secondValue))
