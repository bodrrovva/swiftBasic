//: [Previous](@previous)

import Foundation

//Сабскрипты
//Классы, структуры и перечисления могут определять сабскрипты (subscripts). Сабскрипты используются для доступа к элементам коллекции или последовательности. В ряде языков программирования есть похожая концепция - индексаторы. Сабскрипты позволяют обращаться с объектом класса или структуры как с отдельной коллекцией.

//Вы можете использовать сабскрипт для получения или установки нового значения элемента без разделения этих двух методов (получения значения и установкой нового). Вы пишете определения сабскрипта с помощью ключевого слова subscript и указываете один или более входных параметров и возвращаемый тип, точно так же как и в методах экземпляра. В отличии от методов экземпляра, сабскрипты могут быть read-write(с блоками get и set) или read-only(только с блоком get). 


//subscript(index: Int) -> Int {
//    get {
//        возвращает надлежащее значение скрипта
//    }
//    set(newValue) {
//        проводит надлежащие установки
//    }
//}



//Например, создадим класс библиотеки. Упрощенно библиотека представляет некоторый набор книг. То есть мы можем представить класс библиотеки как коллекцию книг и использовать сабскрипты для получения книг по индексу:
class Book{
    var name: String
    init(name: String){ self.name = name }
}
class Library{
    var books: [Book] = [Book]()
    init(){
        books.append(Book(name: "Война и мир"))
        books.append(Book(name: "Отцы и дети"))
        books.append(Book(name: "Чайка"))
    }
     
    subscript(index: Int) -> Book{
        get {
            return books[index]
        }
        set(newValue){
            books[index] = newValue
        }
    }
}

//экземпляр класса
var myLibrary: Library = Library()

//смотрим 0 элемент
var firstBook: Book = myLibrary[0]
print(firstBook.name)

//изменяем элемент
myLibrary[2] = Book(name: "Мартин Иден")    // установка элемента по индексу 2
print(myLibrary[2].name)

