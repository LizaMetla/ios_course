//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
//: ### Homework:

// Написать функцию в которой необходимо:
//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.

//showing 2 tipes of initialization

var array1: [Int] = []//first

for i in 0...10 {
    array1.append(i)
}


func randomArr() -> Array<Int>
{
    var array: Array<Int> = []
    for i in 0...(arc4random()%12+3)
    {
        array.append(Int(arc4random()%31))
    }
    return array
}

let array2 = randomArr() //the second with random numbers

if let firsNilElement = array1.first(where: {$0 == 0}) {
    print("0 is the first element in array1")
} else {
    print("you false")
}

if let firsNilElement = array2.first(where: {$0 == 0}) {
    print("0 is the first element in array2")
} else {
    print("you false in array2")
}

//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль

if array1.contains(3) && array1.contains(5) {
    print("array1 contains 3 and 5")
} else {
    print("not here absolutely")
}

if array2.contains(3) && array2.contains(5) {
    print("array2 contains 3 and 5")
} else {
    print("not here absolutely")
}



//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль

if array1.first == array1.last {
    print("same")
} else {
    print("not the same")
}

//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)

var array4: [Int] = []

for i in 0...9 {
    array4.append(i)
}

array4.append(6) //add

array4.removeFirst() //remove

array4.insert(14, at: 1) //change

print(array4.count)

//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)

var dict : Dictionary <Int, String > = [123:"Toyota", 444:"Mersedes", 555: "Mazda"]

dict[668] = "Range Rover"

dict.removeValue(forKey: 555)

dict.updateValue("MERSEDES", forKey: 444)

print(dict.count)

//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)

var films : Set = ["Classic", "Horoor", "Romantic"]

films.insert("Adventure")

print(films.count)

//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)



func newRandomArr() -> Array<Int>
{
    var array: Array<Int> = []
   
    for i in 0...(arc4random()%12+3)
    {
        array.append(Int(arc4random()%10))
    }
    return array
}
let intArray = newRandomArr()

let intArray1 = newRandomArr()

var intArray2 = intArray + intArray1

print(intArray2)

//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его или вывести в консоль.
