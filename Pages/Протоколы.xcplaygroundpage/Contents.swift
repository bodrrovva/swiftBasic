//: [Previous](@previous)

import Foundation

//Протоколы
//Протокол определяет образец методов, свойств или другие требования, которые соответствуют определенному конкретному заданию или какой-то функциональности. Протокол фактически не предоставляет реализацию для любого из этих требований, он только описывает как реализация должна выглядеть(не может сожержать значения). Протоколы можно подписывать через запятую

//вы можете расширить протокол для того, чтобы реализовать дополнительную функциональность


//основной протокол
protocol Human {
    var name: String { get }
}

//протокол. Подписан на протокол Human
protocol Driver: Human{
    var car: Bool { get }
    var lincense: Bool { get }
    
    func toDrive() -> Bool
}

//Расширение. Определяем водителя по умлочанию. одписан на протокол Driver
extension Driver {
    var lincense: Bool { return true }
    var car: Bool { return true }
    
    func toDrive() -> Bool {
        return true
    }
}


//Расширение. Определяем водителя, работующего в фирме. Наследуется от расширения, где определяем водителя по умолчанию
extension FirmDriver: Driver {
    var name: String { return "Viktor"}
    var lincense : Bool {return false}
}

class FirmDriver{
    
}
