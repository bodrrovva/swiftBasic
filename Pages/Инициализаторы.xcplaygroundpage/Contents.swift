//: [Previous](@previous)

import Foundation

//Инициализация - процесс создания экземпляра класса. Этот процесс включает в себя установку начальных значений для каждого свойства хранения

class Human {
    
    var name: String
    var age: Int?
    var hairs: Bool
    
    //определяем дефолтное значение
    init() {
        name = "Ivan"
        hairs = true
    }
    
    init(name: String, age: Int?, hairs: Bool){
        //self - обращаемся к переменным в классе и приравниваем их к локальным переменным в инициализаторе
        self.name = name
        self.age = age
        self.hairs = hairs
    }
}

//первый инициализатор
let humanOne = Human()
humanOne.name

//второй инициализатор. Используются локальные переменные, определенные в инициализаторе
let humanTwo = Human(name: "Katia", age: nil, hairs: true)

