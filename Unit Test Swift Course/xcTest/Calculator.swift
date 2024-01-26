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
        return numbers.reduce(into: 0, { $0 -= $1 })
    }
}


