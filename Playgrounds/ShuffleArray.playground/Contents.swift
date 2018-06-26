
import Foundation

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func shuffle(array: [Int]) -> [Int] {
    var arrayCopy = array
    var randomArray = [Int]()
    for _ in array {
        let randomIndex = Int(arc4random_uniform(UInt32(arrayCopy.count)))
        let removedValue = arrayCopy.remove(at: randomIndex)
        randomArray.append(removedValue)
    }
    return randomArray
}

//let shuffledArray = shuffle(array: array)
//print(array) //[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(shuffledArray) //[7, 6, 9, 2, 8, 4, 3, 1, 5, 10]

extension Array {
    
    func shuffle() -> [Element] {
        var arrayCopy = self
        var result = [Element]()
        for _ in self {
            let randomIndex = Int(arc4random_uniform(UInt32(arrayCopy.count)))
            let removedItem = arrayCopy.remove(at: randomIndex)
            result.append(removedItem)
        }
        return result
    }
}

//let array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(array2) //[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(array2.shuffle()) //[5, 9, 6, 10, 2, 7, 1, 3, 8, 4]

//let strings = ["one", "two", "three", "four", "five"]
//print(strings) //["one", "two", "three", "four", "five"]
//print(strings.shuffle()) //["five", "four", "one", "three", "two"]

extension Array {
    
    mutating func shuffleInline() {
        var result = [Element]()
        for _ in self {
            let randomIndex = Int(arc4random_uniform(UInt32(self.count)))
            let removedItem = self.remove(at: randomIndex)
            result.append(removedItem)
        }
        self = result
    }
}

//var array3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(array3) //[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//array3.shuffleInline()
//print(array3) //[3, 1, 4, 6, 2, 5, 9, 10, 7, 8]


func shuffleModern(array: [Int]) -> [Int] {
    var length = array.count
    var arrayCopy = array
    for _ in array {
        let randomIndex = Int(arc4random_uniform(UInt32(length)))
        if length - 1 != randomIndex {
            arrayCopy.swapAt(length - 1, randomIndex)
        }
        length -= 1
    }
    return arrayCopy
}

//let array4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(array4) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//print(shuffleModern(array: array4)) //[9, 6, 7, 10, 2, 8, 1, 4, 3, 5]


func shuffleModern<T>(array: [T]) -> [T] {
    var length = array.count
    var arrayCopy = array
    for _ in array {
        let randomIndex = Int(arc4random_uniform(UInt32(length)))
        if length - 1 != randomIndex {
            arrayCopy.swapAt(length - 1, randomIndex)
        }
        length -= 1
    }
    return arrayCopy
}

//let strings2 = ["one", "two", "three", "four", "five"]
//print(strings2) //["one", "two", "three", "four", "five"]
//print(shuffleModern(array: strings2)) //["five", "four", "one", "three", "two"]

extension Array {
    
    func shuffleModern() -> [Element] {
        var arrayCopy = self
        var length = arrayCopy.count
        for _ in arrayCopy {
            let randomIndex = Int(arc4random_uniform(UInt32(length)))
            if length - 1 != randomIndex {
                arrayCopy.swapAt(length - 1, randomIndex)
            }
            length -= 1
        }
        return arrayCopy
    }
    
    mutating func shuffleModernInline() {
        var length = self.count
        for _ in self {
            let randomIndex = Int(arc4random_uniform(UInt32(length)))
            if length - 1 != randomIndex {
                swapAt(length - 1, randomIndex)
            }
            length -= 1
        }
    }
}

var array5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(array5) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(array5.shuffleModern()) // [2, 6, 10, 5, 4, 7, 3, 8, 9, 1]
array5.shuffleModernInline()
print(array5) // [10, 6, 2, 3, 1, 8, 5, 4, 7, 9]


