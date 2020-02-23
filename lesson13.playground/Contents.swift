//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class Owner {
    var pet: Pet
    
    //initiolizing in real
    init(pet: Pet) {
        self.pet = pet
    }
}
class Pet {
    let name: String
    var petOwner: Owner?
    
    var antistress: (() -> Void)?
    
    init(name: String) {
        self.name = name
        
        self.antistress = { [unowned self] in
            print(self.name)
        }
        
    }
    
//    func doAntistress() -> () -> String {
//        return { self.name }
//    }
    
    //описываем замыкание которое может исп где угодно
//    func sampleFunc() -> () -> String {
//        let closure = {  // [] позволяет захватить обьекты с текущего scoupe чтобы работать с ними
//            self.name
//        }
//        return closure
//    }
}

//form of object adress
var dog = Pet(name: "Stekhem")
//повышает ссылку на 1 , пока сущ owner у него будет ссылка на pet - он тоже будет существовать
//иниц хозяина
var owner = Owner(pet: dog)
//обращаемся к owner
dog.petOwner = owner

//let antistress = dog.doAntistress()





//talking about PROTOCOLS


protocol Default {
}

extension Default {
    func sampleFunc() {
    print("Print")
    }
}

protocol RemoteControl: Default {
    func switchDevice()
    
    init(numberOfButtons: Int)
    var numberOfButtons: Int { get set}
    
    //ууровень доступа - получением данных
    var hasVolumeButton: Bool { get }
}

class TVRemote: RemoteControl{
    required init(numberOfButtons: Int) {
        self.numberOfButtons = numberOfButtons
    }
    
    var numberOfButtons: Int = 0
    
    let hasVolumeButton: Bool = true
    
    func switchDevice() {
        print("switch")
    }
}

struct CarRemote: RemoteControl {
    init(numberOfButtons: Int) {
        self.numberOfButtons = numberOfButtons
        hasVolumeButton = false
    }
    
    func switchDevice() {
        print("switch")
    }
    
    var numberOfButtons: Int
    
    let hasVolumeButton: Bool
}



//обьявляем экземпляр класса
var remote = TVRemote(numberOfButtons: 9)
remote.sampleFunc()

func buy(remote: RemoteControl) {
    var r = remote
    r.switchDevice() //это нужно для использования протокола как типа
    r.numberOfButtons = 1
    //r.hasVolumeButton = false
}
var carKey = CarRemote(numberOfButtons: 2)
buy(remote: carKey)
buy(remote: remote)

//протоколы - для гибкости
//сделать обьект , который использует сразу несколько протоколов
//для использования сущ протокола
//UITableViewDelegate
//UITableViewDataSource

//сделать методы из протокола опциональными
extension RemoteControl {
    func switchDevice() {}
}

class Empty: Default {
    
}

Empty().sampleFunc()

enum MyEnum: Default {
    case first
}

MyEnum.first.sampleFunc()

func Cast(remote: AnyObject) {
    guard let control = remote as? Default else {return} //проверка, что конформит
    control.sampleFunc()
}


protocol DataSource : AnyObject{
    func Date() -> String
}

protocol Delegate : AnyObject {
    func React()
}

class TableView {
    weak var dataSource : DataSource?
    weak var delegate: Delegate?
    
    func callDelegate() {
        delegate?.React()
    }
    func getDate() {
        print(dataSource?.Date())
    }
    
}

class SimpleClass: DataSource {
    func Date() -> String {
        "Hello"
    }
}

class SimleClassDelegate: Delegate {
    func React() {
        print("Reacted")
    }
}

let tableView = TableView()
tableView.dataSource = SimpleClass()
tableView.delegate = SimleClassDelegate()

tableView.callDelegate()
tableView.getDate()
