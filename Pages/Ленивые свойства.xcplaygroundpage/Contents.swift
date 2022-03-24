//: [Previous](@previous)

import Foundation

//Ленивое свойство - свойство, которое не инициализируется до тех пор, пока к нему не обращаются. Ключевое свойство - lazy

func bigDataProcessingFunc() -> String{
    return "very long processing"
}

class Processing{
    let smallDataProcessing = "small data processing"
    let averageDataProcessing = "average data processing"
    //ленивое свойство
    lazy var bigDataProcessing = bigDataProcessingFunc()
}

//здесь ленивое свойство = nil
let process = Processing()
//обращаемся к линивому свойству
process.bigDataProcessing
//ленивое свойство инициализированно
process
