//: [Previous](@previous)

import Foundation

//Инструкция if

var a = 1
var b = 3

if a == b{
    print("a = b")
} else {
    print("a !=  b")
}

//При проверке условий возвращается true(условие выполнено)  или false(условие не выполнено). При написании условия мы можем использовать перемению булевого значения

let isSunny = true
var action = " "

if isSunny {  //условие выполнено, тк переменная = true
   action = " I will go for a walk"
} else {
 action = "I will sit at home"
}

//Эту же конструкцию можно записать с помощью тернарного оператора
action = isSunny ? " I will go for a walk " : "I will sit at home"
