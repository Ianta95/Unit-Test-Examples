//
//  Calculator.swift
//  Unit Test Swift Course
//
//  Created by Jesus Barragan  on 26/01/24.
//

import Foundation

//MARK: Clase calculator
class Calculator {
    // Funcion que suma
    func add(numbers: Int...) -> Int {
        return numbers.reduce(into: 0, { $0 += $1 })
    }
    // Funcion que resta
    func substract(numbers: Int...) -> Int {
        return numbers.dropFirst().reduce(into: numbers.first ?? 0, { $0 -= $1 })
    }
    // Funcion que divide
    func divide(n1: Int, n2: Int) throws -> Int{
        if(n2 == 0) {
            throw SomeError.ZeroError
        }
        return n1 / n2
    }
    
    func divideNoError(n1: Int, n2: Int) -> Int {
        return n1 / n2
    }
}

enum SomeError: Error {
    case ZeroError
}


