//
//  CalculatorTest.swift
//  Unit Test Swift CourseTests
//
//  Created by Jesus Barragan  on 26/01/24.
//

import Foundation
import XCTest

@testable import Unit_Test_Swift_Course // Obtiene data del proyecto


class CalculatorTest: XCTestCase {
    
    var sut: Calculator!
    
    override func setUp() {
        print("Calculator Setup")
        sut = Calculator()
    }
    
    override func tearDown() {
        print("Calculator tear down")
        sut = nil
    }
    
    
    // MARK: Primeros tests
    // Testt nil
    /*func testCalculatorNil() throws {
        XCTAssertNil(sut, "nil under test")
    }*/
    // Test Not Nil
    func testCalculatorNotNil() throws {
        XCTAssertNotNil(sut)
    }
    
    func testCalculatorAddNumbersOKResult() throws {
        XCTAssertEqual(sut.add(numbers: 3, 4, 6), 13)
    }
    
    func testCalculatorAddNumbersItsNotOkResult() throws {
        XCTAssertNotEqual(sut.add(numbers: 3, 4, 6), 21)
    }
    
    /*
     MARK: Ejemplos de tests
    func testAddInputCorrectOKResult()
    func testAddInvalidInputExceptionThrown()
    func testAddAssert()
    func givenWhenThen()
     */
    
    //MARK: Estructura Assert
    func testAddAssert() throws {
        // 1. Arrange
        let resultadoEsperado = 30
        let resultadoActual: Int
        // 2. Act
        resultadoActual = sut.add(numbers: 10, 20)
        // 3. Assert
        XCTAssertEqual(resultadoActual, resultadoEsperado)
    }
    
    //MARK: Patrón Given-When-Then
    func testAddBDD(){
        // 1. Given
        let resultadoEsperado = 30
        let resultadoActual: Int
        // 2. When
        resultadoActual = sut.add(numbers: 10, 20)
        // 3. Then
        XCTAssertEqual(resultadoActual, resultadoEsperado)
    }
    
    func testAdd() throws {
        XCTAssertEqual(30, sut.add(numbers: 10,20))
    }
    
    func testAssertTypes() throws {
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 == 2)
        XCTAssertNil(nil)
        XCTAssertNotNil(sut)
        XCTAssertEqual(30, sut.add(numbers: 10,20))
        XCTAssertEqual("alberto", "alberto")
        XCTAssertGreaterThan(11, 10)
    }
    
    func testSubstract() throws {
        XCTAssertEqual(4, sut.substract(numbers: 11, 7, 0))
    }
    
    func testDivide() throws {
        XCTAssertEqual(2, try sut.divide(n1: 4, n2: 2))
    }
    
    func testDivideByZero() throws {
        XCTAssertThrowsError(try sut.divide(n1: 4, n2: 0))
    }
    
    func testDisable() throws {
        
    }
    
    func testPerformanceExample() throws {
        self.measure {
            sut.divideNoError(n1: 8, n2: 2)
        }
    }
}
