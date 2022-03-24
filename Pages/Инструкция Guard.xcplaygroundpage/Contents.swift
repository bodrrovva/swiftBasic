//: [Previous](@previous)

import Foundation

//Инструкция Guard
//Используйте guard, чтобы указать на то, что условие обязательно должно быть true, чтобы код после самой инструкции guard выполнился. В отличии от инструкции if, guard всегда имеет код внутри else, который выполняется, когда условие оценивается как false.

//внутри скобок может быть { continue/ return / break }
for i in 1...5 {
   guard 1 != 3 else { break }
   print (i)
}

