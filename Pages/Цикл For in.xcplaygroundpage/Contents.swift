//: [Previous](@previous)

import Foundation

//Цикл For In
//Цикл for-in используется для итерации по коллекциям элементов, таких как диапазоны чисел, элементы массива или символы в строке


//числовой даипазон
//index является константой, значение которой автоматически устанавливается в начале каждой итерации цикла.Ее объявление неявно происходит в объявлении цикла, без необходимости использования зарезервированного слова let.
for index in 1...5 {
    print("\(index) умножить на 5 будет \(index * 5)")
}


//массив
let arrayInt = [1, 2, 3, 4]
let arrayCharacter = ["a", "b", "c"]

for index in arrayInt{
    print(index)
}


//при работе с текстом результат разбивается на символы
let string = "some string"

for char in string{
    print(char)
}


//словарь
let dict = ["Ivan": 20, "Svetlana": 36, "Nadejda": 17]

//перебираем ключ, значение
for (name, age) in dict {
    print("\(name) is \(age) years old")
}


//пепребираем массив с шагом 5, не включая последнее значение
//from - начальное значение от которого идет отсчет,to - до какого числа (не включая), by - шаг
for tickMark in stride(from: 0, to: 20, by: 5) {
    print(tickMark)
}

//пепребираем массив с шагом 3, включая последнее значение
//from - начальное значение от которого идет отсчет,through - до какого числа (включая его), by - шаг
for tickMark in stride(from: 7, through: 20, by: 3) {
    print(tickMark)
}

//array.enumerated() - узнать индексы элементов
