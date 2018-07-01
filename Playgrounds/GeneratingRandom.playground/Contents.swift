import Foundation
import UIKit

arc4random() // 107985684

drand48() // 0.3964647737602753

arc4random_uniform(10) // 4

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
}

Int.random(-100) // return in range between -99 and 0

extension Int {
    
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

65.random()

func randomInRange(lowerBound: Int, upperBound: Int) -> Int {
    guard lowerBound < upperBound else {
        return lowerBound
    }
    return lowerBound + Int(arc4random_uniform(UInt32(upperBound - lowerBound + 1)))
}

randomInRange(lowerBound: 20, upperBound: 30)

func randomInRange2(_ range: Range<Int>) -> Int {
    guard range.lowerBound < range.upperBound else {
        return range.lowerBound
    }
    return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound + 1)))
}


randomInRange2(0..<100) // will return in range between 0 and 99 inclusive

func randomInRange3(_ range: ClosedRange<Int>) -> Int {
    guard range.lowerBound < range.upperBound else {
        return range.lowerBound
    }
    return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound + 1)))
}

randomInRange3(0...100) // will return in range between 0 and 100 inclusive

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

func generateArrayOfNumbers(count: Int, upperBound: Int) -> [Int] {
    var result = [Int]()
    for _ in 0..<count {
        result.append(Int.random(upperBound))
    }
    return result
}

generateArrayOfNumbers(count: 10, upperBound: 100)

func uniqueRandomArray(count: Int, min: Int, max: Int) -> [Int] {
    guard count <= (max - min + 1) else {
        return []
    }
    var numbers = [Int]()
    for _ in 1...count {
        var random: Int
        repeat {
            random = min + Int(arc4random_uniform(UInt32(max - min + 1)))
        } while numbers.contains(random)
        numbers.append(random)
    }
    return numbers
    
}

var randomArray = uniqueRandomArray(count: 10, min: 15, max: 55)

func uniqueRandomArray2(count: Int, min: Int, max: Int) -> [Int] {
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

var randomArray2 = uniqueRandomArray(count: 50, min: 11, max: 99)

let redComponent = CGFloat(arc4random_uniform(255)) / 255.0
let greenComponent = CGFloat(arc4random_uniform(255)) / 255.0
let blueComponent = CGFloat(arc4random_uniform(255)) / 255.0

let randomColor = UIColor(red: redComponent, green: greenComponent,
                          blue: blueComponent, alpha: 1.0)

func randomColor(randomAlpha: Bool = false) -> UIColor {
    let redComponent = CGFloat(arc4random_uniform(255)) / 255.0
    let greenComponent = CGFloat(arc4random_uniform(255)) / 255.0
    let blueComponent = CGFloat(arc4random_uniform(255)) / 255.0
    let alphaComponent = randomAlpha ? CGFloat(arc4random_uniform(255)) / 255.0 : 1
    let randomColor = UIColor(red: redComponent, green: greenComponent,
                              blue: blueComponent, alpha: alphaComponent)
    return randomColor
}

let randomColor2 = randomColor(randomAlpha: false)

extension UIColor {
    class func random(randomAlpha: Bool = false) -> UIColor {
        let redComponent = CGFloat(arc4random_uniform(255)) / 255.0
        let greenComponent = CGFloat(arc4random_uniform(255)) / 255.0
        let blueComponent = CGFloat(arc4random_uniform(255)) / 255.0
        let alphaComponent = randomAlpha ? CGFloat(arc4random_uniform(255)) / 255.0 : 1
        let randomColor = UIColor(red: redComponent, green: greenComponent,
                                  blue: blueComponent, alpha: alphaComponent)
        return randomColor
    }
}

UIColor.random()

let array = ["Star", "Wars", "Empire", "Strikes", "Back"]
let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
print(array[randomIndex])
