//: [Previous](@previous)

//import Foundation
//Обработка ошибок
//Для того чтобы «сгенерировать» ошибку используете throw. Функция, отмеченная throws называется генерирующей функцией. Только генерирующая ошибку функция может передавать ошибки.

//В Swift существует четыре способа обработки ошибок.

//Когда функция генерирует ошибку, последовательность выполнения вашей программы меняется, поэтому важно сразу обнаружить место в коде, которое может генерировать ошибки. Для того, чтобы выяснить где именно это происходит, напишите ключевое слово try - или варианты try? или try!(вызывается try, потому что код может сгенерировать ошибку)- до куска кода, вызывающего функцию, метод или инициализатор, который может генерировать ошибку.


enum VendingMashinErrors: Error {
    case notInStock
    case outOfStock
    case notEnoughMoney
}

struct Item{
    var price: Int
    var count: Int
}

class VendingMashin {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count:11)
    ]
    var deposited = 11
    
    func vend(itemNemed: String) throws {
        //такого товара нет
        guard var item = inventory[itemNemed] else {
            throw VendingMashinErrors.notInStock
        }
        
        //нет в наличии
        guard item.count > 0 else {
            throw VendingMashinErrors.outOfStock
        }
        
        //не хватает денег
        guard item.price <= deposited else {
            throw VendingMashinErrors.notEnoughMoney
        }
        
        deposited -= item.price
        item.count -= 1
        
        inventory[itemNemed] = item
        print("Вы купили \(itemNemed)")
    }
}

//1 способ.Передача ошибки с помощью генерирующей функции
var vendingMachin = VendingMashin()
try? vendingMachin.vend(itemNemed: "Chips")
vendingMachin.deposited
vendingMachin.inventory


//2 способ.Обработка ошибок с использованием do-catch
do{
    try vendingMachin.vend(itemNemed: "Chips")
} catch VendingMashinErrors.notInStock{
    print("Товара нет в наличии")
} catch VendingMashinErrors.notEnoughMoney{
    print("Недостаточно средств")
} catch VendingMashinErrors.outOfStock {
    print("Такого товара нет")
}
