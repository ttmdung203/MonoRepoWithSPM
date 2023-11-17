// The Swift Programming Language
// https://docs.swift.org/swift-book

//import FirstLibrary
import FirstLibrary

public class SecondLibrary {
    private let testLib = FirstLibrary.FirstDemo()

    func printNewNumber() {
        print("SecondLibrary calls First Library:")
        testLib.printNumber(number: 123)
        testLib.printTest(text: "Hello")
    }
}
