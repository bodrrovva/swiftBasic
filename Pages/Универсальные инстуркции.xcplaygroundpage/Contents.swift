//: [Previous](@previous)

import Foundation

//Универсальные шаблоны
//Универсальный код позволяет вам писать гибкие, общего назначения функции и типы, которые могут работать с любыми другими типами, с учетом требований, которые вы определили

//пример 1
//любой тип превращаем в строку(принмаем произвольный тип)
func paramValue<T>(param: T) -> String {
  return "\(param)"
}
paramValue(param: 5)
paramValue(param: "abc")
paramValue(param: true)


//пример 2
//любой тип превращаем в строку(принимаем 2 произвольных типа)
struct HelpfulFunctions<T: Comparable, U: Equatable> {
  func paramValue(param: T, param2: U) -> String {
    
    return "\(param), \(param2)"
  }
}

let example = HelpfulFunctions<String, Int>()
example.paramValue(param: "String1", param2: 5)


//пример 3
var a = 12
var b = 0

//меняем местами значение переменных(исп 1 произвольный тип, значит переменные должны быть одного типа)
//inout позволяет менять значение переменных(сквозная переменная))
func swappy<T>(a: inout T, b: inout T) {
  let temp = a
  a = b
  b = temp
}

swap(&a, &b)
a
b

















