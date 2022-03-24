//: [Previous](@previous)

import Foundation

//Типы Any, AnyObject
//Any используется для всех типов
//AnyObject — используется для типов Class

//класс
class A{}
class B{}
class C{}

let a = A()
let b = A()
let c = A()
let d = B()
let e = C()

//структура
struct D{}
let f = D()

//Энум
enum E{
    case a
    case b
}
let g = E.b

//только экземпляры классов
let array1: [AnyObject] = [a, b, c, d, e]
//все типы
let array2: [Any] = [a, b, c, d, e, f, g]
