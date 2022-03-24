//: [Previous](@previous)

import Foundation

//Функции – это самостоятельные фрагменты кода, решающие определенную задачу. Каждой функции присваивается уникальное имя, по которому ее можно идентифицировать и "вызвать" в нужный момент. Функции нужны для того, чтобы не повторят один и тот же кусок в кода в разных местах

//func название(принимаемое значение) -> (возвращаемое значение){тело функции}

func func1() -> (){}
func func2() -> Void{} //void - обозначение пустоты в функции
func func3(){}



//  1. Простая функция, ничего не принимающая и не возращающая
func sayHello(){
    print("Hello")
}
sayHello()



//  2. Функция, принимающая один параметр
func oneParam(param1: Int){
    //приравниваем к принимаемой переменной
    var param2 = param1
    param2 += 1
}
print (oneParam(param1: 10))



//  3. Функция, не принимающая параметров, но возвращающая значение
func returnValue() -> Int {
    return 10
}
//можно прировнять возвращаемое значение к переменной
let a = returnValue()
print (a)



//  4. Функция, принимающая несколько параметров и возвращающая значение
func fullName(name: String, secondName: String) -> String{
    return "Your full name \(name) \(secondName)"
}
print (fullName(name: "Ivan", secondName: "Ivanovich"))



//  5. Функция, принимающая массив в качестве параметра и использующая вложенную функцию для работы
func findSum(array1: [Int]) -> Int{
    
    var sum = 0
    func sayMoney(){ print(sum) }
    
    //перебираем массив
    for item in array1 {
        sum += item
    }
    
    sayMoney()
    return sum
}
findSum(array1: [1, 2, 3, 4, 5])



//  6. Функция, которая принимает переменное число параметров

    //внешнее название, навзание внутри функции
func findSum2(ofIntegers integers: Int...) -> Int{
    var sum = 0
    for item in integers{
        sum += item
    }
    return sum
}

print(findSum2(ofIntegers: 1, 2, 3, 4, 5))


//  7. Имена параметров функции
func sum(_: Int) -> Int{
    return 10
}
 


//  8. Функция в качестве возвращаеиого значения
func whatToDo(missed: Bool) -> (Int) -> Int{
    func missedCountUp (input: Int) -> Int { return input + 1 }
    func missedCountDown (input: Int) -> Int { return input - 1 }
    
    return missed ? missedCountUp : missedCountDown
}

var missedCount = 0
missedCount = whatToDo(missed: true)(missedCount)
missedCount = whatToDo(missed: false)(missedCount)
