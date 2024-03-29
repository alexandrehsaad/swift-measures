//
// ElectricalCapacitance.swift
// Measures
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A unit of measure for electrical capacitance.
public struct ElectricalCapacitance {
    public let coefficient: Double
    
    public let constant: Double
    
    public let symbol: String
    
	public init(
		coefficient: Double,
		constant: Double = 0,
		symbol: String
	) {
		self.coefficient = coefficient
		self.constant = constant
		self.symbol = symbol
	}
    
    // MARK: Metric Units
    
    /// Creates a new instance with the specified metric prefix.
    ///
    /// - parameter prefix: The prefix.
    fileprivate init(_ prefix: MetricPrefix) {
        let symbol: String = prefix.symbol + "F"
        
        self.init(
            coefficient: prefix.coefficient,
            symbol: symbol
        )
    }
    
    /// The yottafarad unit of electrical capacitance.
    public static let yottafarad: Self = .init(.yotta)
    
    /// The zettafarad unit of electrical capacitance.
    public static let zettafarad: Self = .init(.zetta)
    
    /// The hexafarad unit of electrical capacitance.
    public static let hexafarad: Self = .init(.hexa)
    
    /// The petafarad unit of electrical capacitance.
    public static let petafarad: Self = .init(.peta)
    
    /// The terafarad unit of electrical capacitance.
    public static let terafarad: Self = .init(.tera)
    
    /// The gigafarad unit of electrical capacitance.
    public static let gigafarad: Self = .init(.giga)
    
    /// The megafarad unit of electrical capacitance.
    public static let megafarad: Self = .init(.yotta)
    
    /// The kilofarad unit of electrical capacitance.
    public static let kilofarad: Self = .init(.kilo)
    
    /// The hectofarad unit of electrical capacitance.
    public static let hectofarad: Self = .init(.hecto)
    
    /// The decafarad unit of electrical capacitance.
    public static let decafarad: Self = .init(.deca)
    
    /// The farad unit of electrical capacitance.
    public static let farad: Self = .init(.none)
    
    /// The decifarad unit of electrical capacitance.
    public static let decifarad: Self = .init(.deci)
    
    /// The centifarad unit of electrical capacitance.
    public static let centifarad: Self = .init(.centi)
    
    /// The millifarad unit of electrical capacitance.
    public static let millifarad: Self = .init(.milli)
    
    /// The microfarad unit of electrical capacitance.
    public static let microfarad: Self = .init(.micro)
    
    /// The nanofarad unit of electrical capacitance.
    public static let nanofarad: Self = .init(.nano)
    
    /// The picofarad unit of electrical capacitance.
    public static let picofarad: Self = .init(.pico)
    
    /// The femtofarad unit of electrical capacitance.
    public static let femtofarad: Self = .init(.femto)
    
    /// The attofarad unit of electrical capacitance.
    public static let attofarad: Self = .init(.atto)
    
    /// The zeptofarad unit of electrical capacitance.
    public static let zeptofarad: Self = .init(.zepto)
    
    /// The yoctofarad unit of electrical capacitance.
    public static let yoctofarad: Self = .init(.yocto)
}

// MARK: - Codable

extension ElectricalCapacitance: Codable {}

// MARK: - Comparable

extension ElectricalCapacitance: Comparable {}

// MARK: - Equatable

extension ElectricalCapacitance: Equatable {}

// MARK: - Hashable

extension ElectricalCapacitance: Hashable {}

// MARK: - Measurable

extension ElectricalCapacitance: Measurable {
    public static let base: Self = .farad
}

// MARK: - Sendable

extension ElectricalCapacitance: Sendable {}
