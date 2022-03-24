//: [Previous](@previous)

import Foundation

//Проверка и приведение типов
//Приведение типов - это способ проверить тип экземпляра и/или способ обращения к экземпляру так, как если бы он был экземпляром суперкласса или подкласса откуда-либо из своей собственной классовой иерархии.Приведение типов в Swift реализуется с помощью операторов is и as. Эти два оператора предоставляют простой и выразительный способ проверки типа значения или преобразование значения к другому типу.


//супер класс мебель
class Furniture {
    let material: String
    
    init(material: String){
        self.material = material
    }
}

//подкласс кровать
class Bed: Furniture {
    //количесвто спальных мест
    let numberOfPlaces: Int
    
    init(numberOfPlaces: Int, material: String){
    self.numberOfPlaces = numberOfPlaces
    super.init(material: material)
    }
}

//подкласс шкаф
class Cupboard: Furniture {
    //количество полок
    let numberOfShelves: Int
    init(numberOfShelves: Int, material: String) {
    
        self.numberOfShelves = numberOfShelves
        super.init(material: material)
    }
}

//создаем массив
var arrayOfFurniture = [Furniture]()

//добавляем элементы
arrayOfFurniture.append(Bed(numberOfPlaces: 2, material: "Wood"))
arrayOfFurniture.append(Bed(numberOfPlaces: 1, material: "Steel"))
arrayOfFurniture.append(Bed(numberOfPlaces: 2, material: "Wood"))

arrayOfFurniture.append(Cupboard(numberOfShelves: 4, material: "Wood"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 6, material: "Steel"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 3, material: "Wood"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 5, material: "Steel"))


//делаем проверку и приводим(2 и 3 способы) тип
var bed = 0
var cupboard = 0

//1
for i in arrayOfFurniture{
    if i is Bed{
        bed += 1
    }else{
        cupboard += 1
    }
}

//2
for i in arrayOfFurniture {
    if i is Bed {
        let bedForSure = i as! Bed
        bed += 1
    }
}

//3
for i in arrayOfFurniture {
    if let bedForSure1 = i as? Bed{
        bed += 1
    }
}

