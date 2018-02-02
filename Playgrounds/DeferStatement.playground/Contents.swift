

func testDefer1() {
    defer {
        print("Defer step 3")
    }
    print("Normal step 1")
    print("Normal step 2")
}

//testDefer1()

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

//testDefer2()

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

//testMultipleDefer()

func testDefer3() {
    for i in 1...5 {
        print("Normal step iteration begins \(i)")
        defer {
            print("Defer step \(i)")
        }
        print("Normal step iteration ends \(i)")
    }
}

//testDefer3()

