import Foundation

func calculateMean(array: [Int]) -> Double {
    
    // Calculate sum ot items with reduce function
    let sum = array.reduce(0, { a, b in
        return a + b
    })
    
    let mean = Double(sum) / Double(array.count)
    return Double(mean)
}

calculateMean(array: [1, 4, 5, 6, 7, 12, 14, 18, 19, 20, 22, 24])
// 12.66666666666667

extension Array where Element == Int {
    
    var mean: Double {
        let sum = self.reduce(0, { a, b in
            return a + b
        })
        
        let mean = Double(sum) / Double(self.count)
        return Double(mean)
    }
}

[1, 4, 5, 6, 7, 12, 14, 18, 19, 20, 22, 24].mean
// 12.66666666666667

func calculateMedian(array: [Int]) -> Double {
    // Array should be sorted
    let sorted = array.sorted()
    let length = array.count
    
    // handle when count of items is even
    if (length % 2 == 0) {
        return (Double(sorted[length / 2 - 1]) + Double(sorted[length / 2])) / 2.0
    }
    
    // handle when count of items is odd
    return Double(sorted[length / 2])
}

calculateMedian(array: [1, 2, 3, 4, 5, 6, 7, 8, 9]) // 5
// odd numbers of items, so median = 5

calculateMedian(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) // 5.5
// even numbers of items, so median = (5 + 6) / 2 = 5.5

extension Array where Element == Int {
    
    var median: Double {
        let sorted = self.sorted()
        let length = self.count
        
        if (length % 2 == 0) {
            return (Double(sorted[length / 2 - 1]) + Double(sorted[length / 2])) / 2.0
        }
        
        return Double(sorted[length / 2])
    }
}

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].median // 5.5
[1, 2, 3, 4, 5, 6, 7, 8, 9].median // 5
