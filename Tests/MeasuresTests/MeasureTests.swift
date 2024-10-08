//
// MeasureTests.swift
// MeasuresTests
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import Measures

#if canImport(Foundation)
import Foundation
#endif

internal final class MeasureTests: XCTestCase {}

// MARK: - Addable

extension MeasureTests {
    internal func test_additionSucceeds() {
        // Given
        let augend: Measure<Time> = .init(2, .base)
        let addend: Measure<Time> = .init(4, .base)
        
        // When
        let sum: Measure<Time> = augend + addend

        // Then
        XCTAssertEqual(sum, .init(6, .base))
    }
    
    internal func test_additionEqualSucceeds() {
        // Given
        var sum: Measure<Time> = .init(2, .base)
        let addend: Measure<Time> = .init(4, .base)
        
        // When
        sum += addend

        // Then
        XCTAssertEqual(sum, .init(6, .base))
    }
    
    internal func test_addingSucceeds() {
        // Given
        let augend: Measure<Time> = .init(2, .base)
        let addend: Measure<Time> = .init(4, .base)
        
        // When
        let sum: Measure<Time> = augend.adding(addend)

        // Then
        XCTAssertEqual(sum, .init(6, .base))
    }
    
    internal func test_addSucceeds() {
        // Given
        var sum: Measure<Time> = .init(2, .base)
        let addend: Measure<Time> = .init(4, .base)
        
        // When
        sum.add(addend)

        // Then
        XCTAssertEqual(sum, .init(6, .base))
    }
}

// MARK: - Comparable

extension MeasureTests {
    internal func test_isLessThanReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(2, .base)
        let rhs: Measure<Time> = .init(1, .base)
        
        // When
        let result: Bool = lhs.isLess(than: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isLessThanReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(1, .base)
        let rhs: Measure<Time> = .init(2, .base)
        
        // When
        let result: Bool = lhs.isLess(than: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isLessThanOrEqualToReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(2, .base)
        let rhs: Measure<Time> = .init(1, .base)
        
        // When
        let result: Bool = lhs.isLessThanOrEqual(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isLessThanOrEqualToReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(1, .base)
        let rhs: Measure<Time> = .init(1, .base)
        
        // When
        let result: Bool = lhs.isLessThanOrEqual(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isGreaterThanReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(1, .base)
        let rhs: Measure<Time> = .init(2, .base)
        
        // When
        let result: Bool = lhs.isGreater(than: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isGreaterThanReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(2, .base)
        let rhs: Measure<Time> = .init(1, .base)
        
        // When
        let result: Bool = lhs.isGreater(than: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isGreaterThanOrEqualToReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(1, .base)
        let rhs: Measure<Time> = .init(2, .base)
        
        // When
        let result: Bool = lhs.isGreaterThanOrEqual(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isGreaterThanOrEqualToReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(1, .base)
        let rhs: Measure<Time> = .init(1, .base)
        
        // When
        let result: Bool = lhs.isGreaterThanOrEqual(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isWithinClosedRangeReturnsFalse() {
        // Given
        let value: Measure<Time> = .init(4, .base)
        let lowerBound: Measure<Time> = .init(1, .base)
        let upperBound: Measure<Time> = .init(3, .base)
        let range: ClosedRange<Measure<Time>> = lowerBound...upperBound
        
        // Then
        XCTAssertFalse(value.isWithin(range))
    }
    
    internal func test_isWithinClosedRangeReturnsTrue() {
        // Given
        let value: Measure<Time> = .init(2, .base)
        let lowerBound: Measure<Time> = .init(1, .base)
        let upperBound: Measure<Time> = .init(3, .base)
        let range: ClosedRange<Measure<Time>> = lowerBound...upperBound
        
        // Then
        XCTAssertTrue(value.isWithin(range))
    }
    
    internal func test_isWithinBoundsReturnsFalse() {
        // Given
        let value: Measure<Time> = .init(4, .base)
        let lowerBound: Measure<Time> = .init(1, .base)
        let upperBound: Measure<Time> = .init(3, .base)
        
        // Then
        XCTAssertFalse(value.isWithin(lowerBound, to: upperBound))
    }
    
    internal func test_isWithinBoundsReturnsTrue() {
        // Given
        let value: Measure<Time> = .init(2, .base)
        let lowerBound: Measure<Time> = .init(1, .base)
        let upperBound: Measure<Time> = .init(3, .base)
        
        // Then
        XCTAssertTrue(value.isWithin(lowerBound, to: upperBound))
    }
}

// MARK: - Convertible

extension MeasureTests {
    private struct FuelEfficiency: Equatable, Measurable {
        internal init(
            coefficient: Double,
            constant: Double = 0,
            symbol: String
        ) {
            self.coefficient = coefficient
            self.constant = constant
            self.symbol = symbol
        }
        
        internal let constant: Double
        internal let coefficient: Double
        internal let symbol: String
        
        internal static let base: Self = .kilometersPerLiter
        
        internal static let kilometersPerLiter: Self = .init(
            coefficient: Length.kilometer.coefficient / Volume.liter.coefficient,
            symbol: "Km/L"
        )
        
        internal static let metersPerLiter: Self = .init(
            coefficient: Length.meter.coefficient / Volume.liter.coefficient,
            symbol: "m/L"
        )
    }
    
    internal func test_convertFuelEfficiencySucceeds() {
        // Given
        var measure: Measure<FuelEfficiency> = .init(5, .kilometersPerLiter)
        
        // When
        measure.convert(to: .metersPerLiter)
        
        // Then
        XCTAssertEqual(measure.description, "5000.0 m/L")
        
        // When
        measure.convert(to: .kilometersPerLiter)
        
        // Then
        XCTAssertEqual(measure.description, "5.0 Km/L")
    }
}

extension MeasureTests {
    internal func test_convertSpeedSucceeds() {
        // Given
        var measure: Measure<Speed> = .init(5, .kilometersPerHour)
        
        // When
        measure.convert(to: .metersPerSecond)
        
        // Then
        XCTAssertEqual(measure.description, "1.3888888888888888 m/s")
        
        // When
        measure.convert(to: .kilometersPerHour)
        
        // Then
        XCTAssertEqual(measure.description, "5.0 km/h")
    }
}

extension MeasureTests {
    internal func test_convertThermodynamicTemperatureSucceeds() {
        // Given
        var measure: Measure<ThermodynamicTemperature> = .init(5, .kilokelvin)
        
        // When
        measure.convert(to: .celsius)
        
        // Then
        XCTAssertEqual(measure.description, "4726.85 °C")
        
        // When
        measure.convert(to: .kilokelvin)
        
        // Then
        XCTAssertEqual(measure.description, "5.0 kK")
    }
}

// MARK: - CustomStringConvertible

extension MeasureTests {
    internal func test_descriptionSucceeds() {
        // Given
        let value: Measure<Time> = .init(4, .base)
        
        // When
        let description: String = value.description
        
        // Then
        XCTAssertEqual(description, "4.0 s")
    }
}

// MARK: - Decodable

extension MeasureTests {
    #if canImport(Foundation)
    internal func test_downloadGroupDecodesSuccessfully() throws {
        // Given
        let json: String = """
        {
          "unit" : {
            "coefficient" : 1,
            "constant" : 0,
            "symbol" : "s"
          },
          "value" : 1
        }
        """
        
        // When
        let decoder: JSONDecoder = .init()
        let data: Data = .init(json.utf8)
        let result: Measure<Time> = try decoder.decode(Measure<Time>.self, from: XCTUnwrap(data))
        
        // Then
        let value: Measure<Time> = .init(1, .second)
        XCTAssertEqual(result, value)
    }
    #endif
}

// MARK: - Encodable

extension MeasureTests {
    #if canImport(Foundation)
    internal func test_downloadGroupEncodesSuccessfully() throws {
        // Given
        let value: Measure<Time> = .init(1, .second)
        
        // When
        let encoder: JSONEncoder = .init()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys, .withoutEscapingSlashes]
        let data: Data = try encoder.encode(value)
        let result: String = .init(decoding: data, as: UTF8.self)
        
        // Then
        let json: String = """
        {
          "unit" : {
            "coefficient" : 1,
            "constant" : 0,
            "symbol" : "s"
          },
          "value" : 1
        }
        """
        XCTAssertEqual(result, json)
    }
    #endif
}

// MARK: - Equatable

extension MeasureTests {
    internal func test_isEqualToReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(1, .second)
        let rhs: Measure<Time> = .init(2, .second)
        
        // When
        let result: Bool = lhs.isEqual(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isEqualToReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(1, .second)
        let rhs: Measure<Time> = .init(1, .second)
        
        // When
        let result: Bool = lhs.isEqual(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isUnequalToReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(1, .second)
        let rhs: Measure<Time> = .init(1, .second)
        
        // When
        let result: Bool = lhs.isUnequal(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isUnequalToReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(1, .second)
        let rhs: Measure<Time> = .init(2, .second)
        
        // When
        let result: Bool = lhs.isUnequal(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
}

// MARK: - Equivalentable

extension MeasureTests {
    internal func test_isEquivalentToReturnsFalse() {
        // Given
        let lhs: Measure<Time> = .init(1, .minute)
        let rhs: Measure<Time> = .init(1, .second)
        
        // When
        let result: Bool = lhs.isEquivalent(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isEquivalentToReturnsTrue() {
        // Given
        let lhs: Measure<Time> = .init(1, .minute)
        let rhs: Measure<Time> = .init(60, .second)
        
        // When
        let result: Bool = lhs.isEquivalent(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
}

// MARK: - Subtractable

extension MeasureTests {
    internal func test_subtractionSucceeds() {
        // Given
        let minuend: Measure<Time> = .init(6, .second)
        let subtrahend: Measure<Time> = .init(4, .second)
        
        // When
        let difference: Measure<Time> = minuend - subtrahend

        // Then
        XCTAssertEqual(difference, .init(2, .second))
    }
    
    internal func test_subtractionEqualSucceeds() {
        // Given
        var difference: Measure<Time> = .init(6, .second)
        let subtrahend: Measure<Time> = .init(4, .second)
        
        // When
        difference -= subtrahend

        // Then
        XCTAssertEqual(difference, .init(2, .second))
    }
    
    internal func test_subtractingSucceeds() {
        // Given
        let minuend: Measure<Time> = .init(6, .second)
        let subtrahend: Measure<Time> = .init(4, .second)
        
        // When
        let difference: Measure<Time> = minuend.subtracting(subtrahend)

        // Then
        XCTAssertEqual(difference, .init(2, .second))
    }
    
    internal func test_subtractSucceeds() {
        // Given
        var difference: Measure<Time> = .init(6, .second)
        let subtrahend: Measure<Time> = .init(4, .second)
        
        // When
        difference.subtract(subtrahend)

        // Then
        XCTAssertEqual(difference, .init(2, .second))
    }
}
