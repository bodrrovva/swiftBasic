//: [Previous](@previous)

import Foundation

//Алиасы типов, Псевдоним типа, Typealias

//Псевдоним типа позволяет вам предоставить новое имя для существующего типа данных в вашей программе. После объявления псевдонима типа псевдоним можно использовать вместо существующего типа во всей программе.Основная цель typealias- сделать наш код более читабельным и понятным в контексте для человеческого понимания.


//переменные
typealias Meter = Int
let a: Meter = 50
let b = 30
let sum: Meter = a + b

//кортежи
typealias DoubleInt = (Int, Int)
let c: DoubleInt = (1, 2)

//словари
typealias DicType = [String: Int]
var dictionary: DicType = [:]
dictionary["apartament"] = 123
dictionary
