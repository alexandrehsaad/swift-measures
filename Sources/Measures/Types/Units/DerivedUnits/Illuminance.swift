//
// Illuminance.swift
// Measures
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A unit of measure for illuminance.
public struct Illuminance {
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
        let symbol: String = prefix.symbol + "lx"
        
        self.init(
            coefficient: prefix.coefficient,
            symbol: symbol
        )
    }
    
    /// The yottalux unit of illuminance.
    public static let yottalux: Self = .init(.yotta)
    
    /// The zettalux unit of illuminance.
    public static let zettalux: Self = .init(.zetta)
    
    /// The hexalux unit of illuminance.
    public static let hexalux: Self = .init(.hexa)
    
    /// The petalux unit of illuminance.
    public static let petalux: Self = .init(.peta)
    
    /// The teralux unit of illuminance.
    public static let teralux: Self = .init(.tera)
    
    /// The gigalux unit of illuminance.
    public static let gigalux: Self = .init(.giga)
    
    /// The megalux unit of illuminance.
    public static let megalux: Self = .init(.yotta)
    
    /// The kilolux unit of illuminance.
    public static let kilolux: Self = .init(.kilo)
    
    /// The hectolux unit of illuminance.
    public static let hectolux: Self = .init(.hecto)
    
    /// The decalux unit of illuminance.
    public static let decalux: Self = .init(.deca)
    
    /// The lux unit of illuminance.
    public static let lux: Self = .init(.none)
    
    /// The decilux unit of illuminance.
    public static let decilux: Self = .init(.deci)
    
    /// The centilux unit of illuminance.
    public static let centilux: Self = .init(.centi)
    
    /// The millilux unit of illuminance.
    public static let millilux: Self = .init(.milli)
    
    /// The microlux unit of illuminance.
    public static let microlux: Self = .init(.micro)
    
    /// The nanolux unit of illuminance.
    public static let nanolux: Self = .init(.nano)
    
    /// The picolux unit of illuminance.
    public static let picolux: Self = .init(.pico)
    
    /// The femtolux unit of illuminance.
    public static let femtolux: Self = .init(.femto)
    
    /// The attolux unit of illuminance.
    public static let attolux: Self = .init(.atto)
    
    /// The zeptolux unit of illuminance.
    public static let zeptolux: Self = .init(.zepto)
    
    /// The yoctolux unit of illuminance.
    public static let yoctolux: Self = .init(.yocto)
}

// MARK: - Codable

extension Illuminance: Codable {}

// MARK: - Comparable

extension Illuminance: Comparable {}

// MARK: - Equatable

extension Illuminance: Equatable {}

// MARK: - Hashable

extension Illuminance: Hashable {}

// MARK: - Measurable

extension Illuminance: Measurable {
    public static let base: Self = .lux
}

// MARK: - Sendable

extension Illuminance: Sendable {}
