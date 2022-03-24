//: [Previous](@previous)

import Foundation

//Свойства класса

class Car{
    let products: Int
    let people: Int
    let pets: Int
    
    //определяем свойства класса
    class var selfWeidht: Int { return 1500 }
    class var maxWeidht: Int { return 2000 }
    
    var totalWeifht: Int {
        return products + people + pets + Car.selfWeidht
    }
    
    init(products: Int, people: Int, pets: Int){
    self.products = products
    self.people = people
    self.pets = pets
    }
}

//экземпляр класса
let car = Car(products: 30, people: 300, pets: 50)

//обращение к классу
let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight

//обращение к экземпляру класса
let totalWeight = car.totalWeight
