//: [Previous](@previous)

import Foundation

//Перечисления или Энумы
//определяют общий тип для группы ассоциативных значений и позволяют работать с этими значениями в типобезопасном режиме в вашем коде.

enum Movement: Int{
    case forward
    case backward = 20
    case left = 1
    case right
}
let movementDirection = Movement.backward.rawValue


//кейсы можно писать через запятую
enum Devise{
    //дописываем к кейсу свойство color
    case iPad(color: String), iPhone
    
    //перебираем значения переменной в зависимости от кейса
    var year: Int{
        switch self{
        case .iPhone: return 2007
        case .iPad(let color) where color == "black": return 2015
        case .iPad: return 2010
        }
    }
}

//узнаем дату выхожа черного айпада
let yearOfProduction = Devise.iPad(color: "black").year


//вложенные энумы
//Рекурсивные перечисления - это такие перечисления, экземпляры которого являются ассоциативным значением одного или более кейсов перечисления. Вы обозначаете такие кейсы перечисления при помощи ключевого слова indirect перед кейсом или самим enum, что сообщает компилятору о том, что нужен дополнительный слой индирекции
indirect enum Lunch {
    case salad
    case soup 
    case meal(Lunch, Lunch)
}

let myLunch = Lunch.meal(.salad, .soup)
