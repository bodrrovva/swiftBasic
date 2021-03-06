//: [Previous](@previous)

import Foundation

//Swift использует automatic reference counting (автоматический подсчет ссылок) для отслеживания и управления памятью вашего приложения. В большинстве случаев это означает, что управление памятью "просто работает" в Swift и вам не нужно думать о самостоятельном управлении памятью. ARC автоматически освобождает память, которая использовалась экземплярами класса, когда эти экземпляры больше нам не нужны. ARC применима только для экземпляров класса. Структуры и перечисления являются типами значений, а не ссылочными типами, и они не хранятся и не передают свои значения по ссылке. Для того, чтобы нужный экземпляр не пропал, ARC ведет учет количества свойств, констант, переменных, которые ссылаются на каждый экземпляр класса. ARC не освободит экземпляр, если есть хотя бы одна активная ссылка. Для того чтобы это было возможно, каждый раз как вы присваиваете экземпляр свойству, константе или переменной создается strong reference (сильная ссылка) с этим экземпляром.

//В некоторых случаях для управления памятью ARC нужно больше информации об отношениях между некоторыми частями вашего кода.


class Person{
    var name: String
    
    init(name: String){
        self.name = name
        print("\(name) инициализирован и создан в памяти")
    }
    deinit{
        print("\(name) удален из памяти")
    }
}

//на ref1 ссылаются 3 сильные ссылки(само значение, ref2, ref3)
var ref1: Person? = Person(name: "Vika")
var ref2: Person? = ref1
var ref3: Person? = ref1

//когда объекты ссылаются на пустой объект происходит утечка памяти
//только после удаления всех сильных ссылок объект будет удален из памяти
ref1 = nil
ref2 = nil
ref3 = nil




//---------------------Слабые ссылки---------------------
//weak - слабая ссылка, которая наблюдает за объектом. Используется для разрушения циклических(перекрестных) ссылок. Используйте слабую ссылку, если другой экземпляр имеет более короткое время жизни, то есть когда другой экземпляр может быть освобожден первым. Слабые ссылки мы можем использовать только с опциональными значениями

//Каждый экземпляр Person имеет свойство name и опциональное свойство apartment. Свойство apartment опционально, тк наша персона не обязательно всегда должна иметь апартаменты.Аналогично, что каждый экземпляр Apartment имеет свойство room типа String и опциональное свойство tenant. Свойство tenant опциональное,тк в апартаментах кто-то живет.

class Tenant{
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit { print("\(name) выселяется") }
}

class Apartment {
    let room: Int
    //используем слабую ссылку
    weak var tenant: Tenant?
    
    init(room: Int) {
        self.room = room
    }
    
    deinit { print("Апартаменты \(room) освобождаются") }
}

var objTenat: Tenant? = Tenant(name: "John")
var objApartament: Apartment? = Apartment(room: 645)

//перекрещиваем ссылки. житель будет иметь апартаменты, а апартаменты будут иметь своих жителей
objTenat?.apartment = objApartament
objApartament?.tenant = objTenat

//удаляем объекты из памяти
//несмотря на то, что мы удалили здесь объекты класса, из памяти они не удалились, тк внутри классов переменные все еще ссылаются друг на друга. Чтобы разрушить цикл используем слабую ссылку. Тк слабая ссылка не сильно держит экземпляр, то этот экземпляр может быть освобожден, пока слабая ссылка все еще ссылается на него.
objTenat = nil
objApartament = nil


//---------------------Безхозные ссылки---------------------
//unowned - бесхозные ссылки, всегда имеют знчения(не опционал),также не имеют сильной связи с экземпляро.Используйте бесхозные ссылки, если другой экземпляр имеет одинаковое время жизни или более длительный срок службы. Используйте бесхозные ссылки только в том случае, если вы абсолютно уверены в том, что ссылка всегда будет указывать на экземпляр. Если вы попытаетесь получить доступ к бесхозной ссылке после того, как экземпляр, на который она ссылается освобожден, то выскочит runtime ошибка.

//В этом случае клиент может иметь или не иметь кредитной карты, но кредитная карта всегда имеет владельца. экземпляр CreditCard может быть создан только путем передачи значения number и экземпляра customer в инициализатор класса CreditCard. Это гарантирует, что экземпляр CreditCard всегда будет иметь экземпляр customer, который будет связан с ним, когда экземпляр CreditCard будет создан.Так как кредитная карта всегда будет иметь своего хозяина, вы определяете свойство customer как бесхозное, для избежания цикла сильных ссылок:

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) деинициализируется") }
}
 
class CreditCard {
    let number: UInt64
    //безхозная ссылка
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Карта #\(number) деинициализируется") }
}

//Экземпляр Customer имеет сильную ссылку на экземпляр CreditCard, а CreditCard имеет бесхозную ссылку на Customer.Из-за того, что ссылка customer является бесхозной, то при разрушении сильной ссылки, которая находится в переменной person1, больше сильных ссылок, указывающих на экземпляр Customer не остается
var person1: Customer? = Customer(name: "Vadim")
person1?.card = CreditCard(number: 1234567890123456, customer: person1!)

person1 = nil
