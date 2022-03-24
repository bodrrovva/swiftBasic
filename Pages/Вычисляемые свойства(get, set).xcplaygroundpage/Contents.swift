//: [Previous](@previous)

import Foundation

//Вычисляемые свойства(Get, Set)

//Вычисляемые свойства не хранят значения, а вычисляют его, используя блок get (getter). Также они могут содержать вспомогательные блок set (setter), который может применяться для установки значения.

//get срабатывает при получении значения свойства. Для возвращения значения должен использоваться оператор return.
//set срабатывает при установке нового значения. При этом в качестве параметра в блок передается устанавливаемое значение.

//var имя_свойства: тип {
//    get {
//        //вычисление значения
//    }
//    set (параметр) {
//        // установка значения
//    }
//}

class Person{
    
    var name: String
    var secondName: String
    
    var fullName: String {
        get {
            return name + " " + secondName
        }
        
        //сюда передается полное имя
        set(newValue){
            //разделяем полное имя через пробел
            let array = newValue.components(separatedBy: " ")
            //записываем каждый отделенный элемент в переменные
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String){
        self.name = name
        self.secondName = secondName
    }
}

let person = Person(name: "Ivan", secondName: "Akulov")
person.fullName

person.fullName = "Zinaida Petrovna"
person.name
person.secondName
