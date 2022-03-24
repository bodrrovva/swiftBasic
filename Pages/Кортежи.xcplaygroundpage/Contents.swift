//: [Previous](@previous)

import Foundation

//кортеж - некоторое объединение нескольких значений 

let one = 1
let two = 2
let three = 3
(one, two, three)

let boy = (17, "Sergey")
//обращаемся по индексу
boy.0
boy.1

let (first, second, third) = (1, 2, 3)
//обращаемся к переменным
first
third

let greenPencil = (color: "green", lenght: 20, weight: 4)
greenPencil.color

//мы можем указать конкретные названия, чтобы не обращаться по индексу
let (greenColor, greenLenght, greenWeight) = greenPencil
greenLenght
