//: [Previous](@previous)

import Foundation

//Наблюдательные свойства
//наблюдатели наблюдают за изменением свойств


//в этом примере мы наблюдает за свойством accessLevet, если оно изменится -> изменится доступ к баззе данных
class SecretLabEmpoyee {
    
    //доступ к базе данных
    var accessToBD = false
    //уровень доступа
    var accessLevel = 0 {
        
        //новое значение
        willSet(newValue){
            print("new boss is about to come")
            print("new access level is \(newValue)")
        }
        
        //старое значение
        didSet(oldValue){
            //если доступ выше нуля -> доступ к баззе данных разрешен
            if accessLevel > 0 {
                accessToBD = true
            } else{
                accessToBD = false
            }
            print("new boss just come")
            print("last time i had access level \(oldValue)")
        }
    }
}

let employee = SecretLabEmpoyee()
employee.accessLevel = 1
employee.accessToBD
