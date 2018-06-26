import Foundation

func testDefer1() {
    defer {
        print("Defer step 3")
    }
    print("Normal step 1")
    print("Normal step 2")
}

testDefer1()

//Normal step 1
//Normal step 2
//Defer step 3

func testDefer2() {
    print("Normal step 1")
    customFunc()
    print("Normal step 2")
}

func customFunc() {
    print("Custom step 1")
    print("Custom step 2")
    defer {
        print("Custom defer step 3")
    }
}

testDefer2()

//Normal step 1
//Custom step 1
//Custom step 2
//Custom defer step 3
//Normal step 2

func testMultipleDefer() {
    print("Normal step 1")
    defer {
        print("Defer step 1")
    }
    defer {
        print("Defer step 2")
    }
    defer {
        print("Defer step 3")
    }
    print("Normal step 2")
}

testMultipleDefer()

//Normal step 1
//Normal step 2
//Defer step 3
//Defer step 2
//Defer step 1

func testDefer3() {
    for i in 1...5 {
        print("Normal step iteration begins \(i)")
        defer {
            print("Defer step \(i)")
        }
        print("Normal step iteration ends \(i)")
    }
}

testDefer3()

//Normal step iteration begins 1
//Normal step iteration ends 1
//Defer step 1
//Normal step iteration begins 2
//Normal step iteration ends 2
//Defer step 2
//Normal step iteration begins 3
//Normal step iteration ends 3
//Defer step 3
//Normal step iteration begins 4
//Normal step iteration ends 4
//Defer step 4
//Normal step iteration begins 5
//Normal step iteration ends 5
//Defer step 5

enum FileError: Error {
    case fileNotFound(reason: String)
    case cannotWriteToFile(reason: String)
}

func writeToFile(filename: String, text: String) throws {
    if let directory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        
        
        
        let path = directory.appendingPathComponent(filename).absoluteString
        
        guard let file = FileHandle(forUpdatingAtPath: path) else {
            print("File open failed")
            throw FileError.fileNotFound(reason: "File not found")
        }
        
        defer {
            print("Close file...")
            file.closeFile()
        }
        
        let fileURL = directory.appendingPathComponent(filename)
        
        do {
            try text.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        catch {
            throw FileError.cannotWriteToFile(reason: "Cannot write to file")
        }
    }
}






