//: Playground - noun: a place where people can play

import Foundation

//var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//var strings = ["one", "two", "three", "four", "five"]
//
//func shuffle<T>(array: inout [T]) -> [T] {
//    var result = [T]()
//    for _ in array {
//        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
//        result.append(array.remove(at: randomIndex))
//    }
//    return result
//}
//
//print(strings) // ["one", "two", "three", "four", "five"]
//print(shuffle(array: &strings)) // ["five", "three", "two", "one", "four"]
//
//let randomArray = shuffle(array: &array)
//print(array) // []
//print(randomArray) // [3, 4, 6, 8, 1, 2, 10, 7, 9, 5]

import Foundation

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func shuffle<T>(array: inout [T]) -> [T] {
    var length = array.count
    for _ in array {
        let randomIndex = Int(arc4random_uniform(UInt32(length)))
        if (randomIndex != (length - 1)) {
            array.swapAt(length - 1, randomIndex)
        }
        length -= 1
    }
    return array
}

extension Array {
    
    mutating func shuffle() -> [Element] {
        var length = self.count
        for _ in self {
            let randomIndex = Int(arc4random_uniform(UInt32(length)))
            if () {
                
            }
        }
        return self
    }
}

print(array) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(shuffle(array: &array)) // [3, 4, 6, 8, 1, 2, 10, 7, 9, 5]

//extension Array {
//
//    mutating func shuffle() -> [Element] {
//        var result = [Element]()
//        for _ in self {
//            let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
//            result.append(self.remove(at: randomIndex))
//        }
//        return result
//    }
//}
//
//print(array) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(array.shuffle()) // [2, 5, 4, 1, 7, 9, 3, 10, 8, 6]

