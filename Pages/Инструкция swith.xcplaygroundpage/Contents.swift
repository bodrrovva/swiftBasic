//: [Previous](@previous)

import Foundation

//Инструкция Switch
//подразумевает наличие какого-то значения, которое сравнивается с несколькими возможными шаблонами

//switch значение для сопоставления {
//     case значение 1:
//          инструкция для значения 1
//     case значение 2, значение 3:
//          инструкция для значения 2 или значения 3
//     default:
//          инструкция, если совпадений с шаблонами не найдено
//}

let Score = 20

switch Score{
  case 10, 20:
        print ("You are not  jedi")
       //здесь может быть fallthrough - переход к следующему кейсу
   case 50..<100 :
       print ("you are jedi")
   default:
       break
}

//инструкция switch прекращает выполнение после нахождения первого соответствия с case.Для того, чтобы у вас появилась возможность проваливаться в конце конкретного switch кейса, используйте ключевое слово fallthrough
