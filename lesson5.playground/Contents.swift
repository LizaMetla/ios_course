//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//кидать ошибку при неправильном исходе программы

//do {
//    guard 1 < 0 else {
//        throw NSError(domain: "1", code: 401, userInfo: nil)
//    }
//}

var color = UIColor.red
var globalValue = 20
var closure : (Int) -> Void = {[weak color] integer in
    print(globalValue, integer)
  
}
//сущ ресурсоёмкие объекты , нужно очищать память после того , как мы перестали использовать объект
//прочитать про сборщик мусора + про сильные и слабые ссылки

let doubleHalfClousedRange = -10..<10

//one-sided(PatrialRangeThrough)

let intOneSidedRangeThrough = ...10 //UInt

//one-sided(PatrialRangeFrom)

let intOneSidedRangeFrom = 10...

intOneSidedRangeFrom.contains(10)

intOneSidedRangeFrom.lowerBound

intOneSidedRangeThrough.upperBound


//talking about LOOPS
//for


