//: [Previous](@previous)

import Foundation

//клоужери - безимянные функции

//клоужер
let closure = {
    print("Hello,world")
}

//функция, принимающая клоужер
func func1(closure: () -> Void){
    for _ in 0...2{
        closure()
    }
}

func1(closure: closure)



//Замыкания - это самодостаточные блоки с определенным функционалом, которые могут быть переданы и использованы в вашем коде

//{ (параметры) -> тип результата in
//выражения
//}

let array1 = [123, 2, 32, 67, 8797, 432]
var array2 = array1.sorted { (num1: Int, num2: Int) -> Bool in return num1 < num2 }

//Поскольку все типы могут быть выведены, стрелка результата ( -> ) и скобки вокруг имен параметров также могут быть опущены:
array2 = array1.sorted (by: { num1, num2 in return num1 < num2 })


//Замыкания с одним выражением могут неявно возвращать результат своего выражения через опускание ключевого слова return
array2 = array1.sorted (by: { num1, num2 in num1 < num2 })


//Swift автоматически предоставляет сокращённые имена для однострочных замыканий, которые могут быть использованы для обращения к значениям параметров замыкания через имена $0, $1, $2, и так далее.
array2 = array1.sorted (by: { $0 < $1 })


//вы можете просто написать оператор меньше, а Swift будет считать, что вы хотите использовать специфичную реализацию
array2 = array1.sorted (by: < )
