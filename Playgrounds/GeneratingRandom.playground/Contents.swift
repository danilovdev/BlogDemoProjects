import Foundation

arc4random()

drand48()

arc4random_uniform(42)

let number: Int
number = Int(arc4random_uniform(42))


let inputNumer: Int = 100
let outputNumber: Int
outputNumber = Int(arc4random_uniform(UInt32(inputNumer)))

func random(n: Int) -> Int {
    return Int(arc4random_uniform(UInt32(n)))
}

let n: Int
n = random(n: 99)

extension Int {
    
    static func random(_ n: Int) -> Int {
        if n < 0 {
            return -Int(arc4random_uniform(UInt32(abs(n))))
        } else if n > 0 {
            return Int(arc4random_uniform(UInt32(n)))
        } else {
            return 0
        }
    }
    
    func random() -> Int {
        if n < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else if n > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}

Int.random(-100)

65.random()

func randomInRange(lowerBound: Int, upperBound: Int) -> Int {
    guard lowerBound < upperBound else {
        return lowerBound
    }
    return lowerBound + Int(arc4random_uniform(UInt32(upperBound - lowerBound + 1)))
}

randomInRange(lowerBound: 20, upperBound: 30)

func randomInRange(_ range: Range<Int>) -> Int {
    guard range.lowerBound < range.upperBound else {
        return range.lowerBound
    }
    return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound + 1)))
}


randomInRange(0..<100)

func randomInRange(_ range: ClosedRange<Int>) -> Int {
    guard range.lowerBound < range.upperBound else {
        return range.lowerBound
    }
    return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound + 1)))
}


randomInRange(0...100)

extension Range where Bound == Int {
    
    var random: Int {
        var offset = 0
        if lowerBound < 0 {
            offset = abs(lowerBound)
        }
        let lower = UInt32(lowerBound + offset)
        let upper = UInt32(upperBound + offset)
        return Int(lower + arc4random_uniform(upper - lower + 1)) - offset
    }
}

(0..<123).random
(-500..<500).random

func generateArrayOfNumbers(count: Int) -> [Int] {
    var result = [Int]()
    for _ in 0..<count {
        result.append(Int(arc4random_uniform(100) + 1))
    }
    return result
}

func generateArrayOfNumbers(count: Int, range: Range<Int>) -> [Int] {
    var result = [Int]()
    for _ in 0..<count {
        result.append(range.random)
    }
    return result
}

generateArrayOfNumbers(count: 10, range: 0..<10)

var randomArray = (1...10).map { _ in Int(arc4random_uniform(100)) }
randomArray = (1..<10).map { _ in Int(arc4random_uniform(100)) }

func uniqueRandomArray(count: Int, min: Int, max: Int) -> [Int] {
    guard count <= (max - min + 1) else {
        return []
    }
    var numbers = Set<Int>()
    while numbers.count < count {
        let random = min + Int(arc4random_uniform(UInt32(max - min + 1)))
        numbers.insert(random)
    }
    return Array(numbers)
}

randomArray = uniqueRandomArray(count: 50, min: 11, max: 99)

func uniqueRandomArray2(count: Int, min: Int, max: Int) -> [Int] {
    guard count <= (max - min + 1) else {
        return []
    }
    var numbers = [Int]()
    for i in 1...count {
        var random: Int
        repeat {
            random = min + Int(arc4random_uniform(UInt32(max - min + 1)))
            print(i)
        } while numbers.contains(random)
        numbers.append(random)
    }
    return numbers

}

randomArray = uniqueRandomArray2(count: 10, min: 1, max: 10)


func uniqueRandomArray3(count: Int, min: Int, max: Int) -> [Int] {
    guard count <= (max - min + 1) else {
        return []
    }
    var numbers = Array(min...max)
    var randoms = [Int]()
    for _ in 1...count {
        let index = Int(arc4random_uniform(UInt32(numbers.count)))
        let value = numbers[index]
        randoms.append(value)
        numbers.remove(at: index)
    }
    return randoms
}

uniqueRandomArray3(count: 10, min: 1, max: 10)







