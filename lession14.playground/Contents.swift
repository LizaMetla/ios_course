//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class Simple {
    
}

extension Simple {
    static var variable2: Int = 4
    var variable: Int {
        return 0
    }
    
    func simpleMethod() -> Int {
    return 8
    }
}

var simple = Simple()
simple.variable
Simple.variable2
simple.simpleMethod()



//

extension Double {
    var km: Double { return self * 1_000}
}

let distance: Double = 1000
distance.km


/////////////////////////////////////////////////////////
//extension UIColor {
//    convenience init(name: String) {
//        if name == "custom" {
//    }
//}
//}


//methods


//uicolor
extension UIColor {
    static func rgb(_ red: Int, _ green: Int, _ blue: Int) -> UIColor {
        UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}
UIColor.rgb(0, 255, 0)
UIColor.init(white: 0.0, alpha: 1.0)


//NESTED TYPES
//к системному классу делаем extension
extension UIView {
    enum Mode {
        case collapsed, expanded
    }
    
    func colorBackground(mode: Mode) {
        switch mode {
        case.collapsed:
            backgroundColor = .blue
        case.expanded:
            backgroundColor = .red
        }
    }
}

var vc = UIViewController()
let view = UIView()
view.colorBackground(mode: .collapsed)
vc.view.colorBackground(mode: .collapsed)

PlaygroundPage.current.liveView = vc


protocol SimpleProtocol{
    func simpleFunc()
}

extension Simple: SimpleProtocol {
    func simpleFunc() {
      //
    }
    

}

//class NewSimple: Simple {
//    func simpleFunc() //
//    {
//    }
//}

