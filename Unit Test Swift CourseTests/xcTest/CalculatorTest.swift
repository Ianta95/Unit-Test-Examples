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
    
    /*
     MARK: Ejemplos de tests
    func testAddInputCorrectOKResult()
    func testAddInvalidInputExceptionThrown()
     func givenWhenThen
     */
    
}
