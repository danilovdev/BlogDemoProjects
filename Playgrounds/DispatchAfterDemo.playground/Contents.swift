import Foundation
import PlaygroundSupport
import XCPlayground
import UIKit
// write this at the beginning
PlaygroundPage.current.needsIndefiniteExecution = true

DispatchQueue.main.async {
    print("ASYNC")
}


let deadline = DispatchTime.now() + .seconds(5)
DispatchQueue.main.asyncAfter(deadline: deadline) {
    // this code will be executed after deadline in 5 second
    // on the main thread
}

DispatchQueue.global().asyncAfter(deadline: deadline) {
    // this code will be executed after deadline in 5 seconds
    // but on the background thread
}

DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: deadline) {
    // this code will be executed after deadline in 5 seconds
    // but on the background thread
    // and we specify quality of service
}

enum ThreadQuality {
    case main
    case background
}

func delay(with seconds: Double, quality: ThreadQuality = .main, completion: @escaping () -> Void) {
    let deadline = DispatchTime.now() + seconds
    switch quality {
    case .main:
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            print("ALO")
            completion()
        }
    case .background:
        DispatchQueue.global().asyncAfter(deadline: deadline, execute: {
            completion()
        })
        
    }
}

delay(with: 5, quality: .background) {
    print("test in 5 seconds")
}


DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(5)) {
    print("test in 5 seconds")
}

// To finish execution
PlaygroundPage.current.finishExecution()
