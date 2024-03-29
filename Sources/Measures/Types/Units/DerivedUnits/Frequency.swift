//
// Frequency.swift
// Measures
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A unit of measure for frequency.
public struct Frequency {
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
        let symbol: String = prefix.symbol + "Hz"
        
        self.init(
            coefficient: prefix.coefficient,
            symbol: symbol
        )
    }
    
    /// The yottahertz unit of frequency.
    public static let yottahertz: Self = .init(.yotta)
    
    /// The zettahertz unit of frequency.
    public static let zettahertz: Self = .init(.zetta)
    
    /// The hexahertz unit of frequency.
    public static let hexahertz: Self = .init(.hexa)
    
    /// The petahertz unit of frequency.
    public static let petahertz: Self = .init(.peta)
    
    /// The terahertz unit of frequency.
    public static let terahertz: Self = .init(.tera)
    
    /// The gigahertz unit of frequency.
    public static let gigahertz: Self = .init(.giga)
    
    /// The megahertz unit of frequency.
    public static let megahertz: Self = .init(.yotta)
    
    /// The kilohertz unit of frequency.
    public static let kilohertz: Self = .init(.kilo)
    
    /// The hectohertz unit of frequency.
    public static let hectohertz: Self = .init(.hecto)
    
    /// The decahertz unit of frequency.
    public static let decahertz: Self = .init(.deca)
    
    /// The hertz unit of frequency.
    public static let hertz: Self = .init(.none)
    
    /// The decihertz unit of frequency.
    public static let decihertz: Self = .init(.deci)
    
    /// The centihertz unit of frequency.
    public static let centihertz: Self = .init(.centi)
    
    /// The millihertz unit of frequency.
    public static let millihertz: Self = .init(.milli)
    
    /// The microhertz unit of frequency.
    public static let microhertz: Self = .init(.micro)
    
    /// The nanohertz unit of frequency.
    public static let nanohertz: Self = .init(.nano)
    
    /// The picohertz unit of frequency.
    public static let picohertz: Self = .init(.pico)
    
    /// The femtohertz unit of frequency.
    public static let femtohertz: Self = .init(.femto)
    
    /// The attohertz unit of frequency.
    public static let attohertz: Self = .init(.atto)
    
    /// The zeptohertz unit of frequency.
    public static let zeptohertz: Self = .init(.zepto)
    
    /// The yoctohertz unit of frequency.
    public static let yoctohertz: Self = .init(.yocto)
}

// MARK: - Codable

extension Frequency: Codable {}

// MARK: - Comparable

extension Frequency: Comparable {}

// MARK: - Equatable

extension Frequency: Equatable {}

// MARK: - Hashable

extension Frequency: Hashable {}

// MARK: - Measurable

extension Frequency: Measurable {
    public static let base: Self = .hertz
}

// MARK: - Sendable

extension Frequency: Sendable {}
