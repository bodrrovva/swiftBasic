//: [Previous](@previous)

import Foundation

//Наследование
//Только класс может наследовать методы, свойства и другие характеристики другого класса. Когда один класс наследует у другого класса, то наследующий класс называется подклассом, класс у которого наследуют - суперклассом. Наследование нужно для того, чтобы не дублировать код в новом классе

//final - запретить наследование
//override - переопределить метод


//суперкласс
class Human{
    var name: String
    
    //дописав final перед func можно запретить наследование
    func tellAboutMe() -> String {
        return "Hello! My name is \(name)"
    }
    init(name: String) {
        self.name = name
    }
}



//Подкласс
class Child: Human {
    var toy = "Hours"
    
    //переопределяем функцию
    override func tellAboutMe() -> String {
        //сохраняем предыдущий код от суперкласса (отсюда и super)
        let originalText = super.tellAboutMe()
        return originalText + "  and i have a toy \(self.toy)"
    }
    
    //в подклассе нужно инициализировать как свойсвта подкласса, так и свойства суперкласса
    init(toy: String, name: String){
        self.toy = toy
        super.init(name: name)
    }
    
    //2 способ - переопределить инициализатор
    override init(name: String) {
        self.toy = "doll"
        super.init(name: name)
    }
}


let child = Child(toy: "doll", name: "Masha")
