//: [Previous](@previous)

import Foundation

//Опционалы - переменные, которые могут быть равны nil

var fuel: Int?
fuel = 20

print("\(fuel) liters left")

//! - значение точно есть, принудительное извлечение значения
print("\(fuel!) liters left")




//опциональная привязка - безопасное извлечение значения
//создаем константу если fuel имеет занчение
if let availableFuel = fuel {
    print("\(availableFuel) liters left")
} else {
    print ("no fuel data available")
}



//то же самое с помощью guard
func chekFuel(){
    guard let availableFuel2 = fuel else {
        print ("no fuel data available")
        return
    }
    print("\(availableFuel2) liters left")
}
chekFuel()
