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


//class Pl {
//    func playground()  {
//        object = 10
//    }
//    var object: Int = 0
//}
// Present the view controller in the Live View window
