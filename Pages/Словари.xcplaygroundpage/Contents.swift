//: [Previous](@previous)

import Foundation

//Словари
//уникальный ключ : значение. Обращаемся по ключу

let dict1 = Dictionary<String, String>( )
let dict2 = [String: String]( )
let dict3:  [String: String] = [ : ]

var phones = ["Apple": "iPhone 6S", "Microsoft": "Lumia 950", "Google": "Nexus X5"]

phones["Apple"] //обращение к переменной


//заменяем значение
phones.updateValue("iPhone 5S", forKey: "Apple")
phones

//удаляем значение
phones.removeValue(forKey: "Apple")
phones

//обнуляем словарь 2 способа
phones.removeAll()
phones = [:]
phones


