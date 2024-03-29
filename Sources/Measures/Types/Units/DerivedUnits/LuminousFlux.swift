//
// LuminousFlux.swift
// Measures
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A unit of measure for luminous flux.
public struct LuminousFlux {
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
        let symbol: String = prefix.symbol + "lm"
        
        self.init(
            coefficient: prefix.coefficient,
            symbol: symbol
        )
    }
    
    /// The yottalumen unit of luminous flux.
    public static let yottalumen: Self = .init(.yotta)
    
    /// The zettalumen unit of luminous flux.
    public static let zettalumen: Self = .init(.zetta)
    
    /// The hexalumen unit of luminous flux.
    public static let hexalumen: Self = .init(.hexa)
    
    /// The petalumen unit of luminous flux.
    public static let petalumen: Self = .init(.peta)
    
    /// The teralumen unit of luminous flux.
    public static let teralumen: Self = .init(.tera)
    
    /// The gigalumen unit of luminous flux.
    public static let gigalumen: Self = .init(.giga)
    
    /// The megalumen unit of luminous flux.
    public static let megalumen: Self = .init(.yotta)
    
    /// The kilolumen unit of luminous flux.
    public static let kilolumen: Self = .init(.kilo)
    
    /// The hectolumen unit of luminous flux.
    public static let hectolumen: Self = .init(.hecto)
    
    /// The decalumen unit of luminous flux.
    public static let decalumen: Self = .init(.deca)
    
    /// The lumen unit of luminous flux.
    public static let lumen: Self = .init(.none)
    
    /// The decilumen unit of luminous flux.
    public static let decilumen: Self = .init(.deci)
    
    /// The centilumen unit of luminous flux.
    public static let centilumen: Self = .init(.centi)
    
    /// The millilumen unit of luminous flux.
    public static let millilumen: Self = .init(.milli)
    
    /// The microlumen unit of luminous flux.
    public static let microlumen: Self = .init(.micro)
    
    /// The nanolumen unit of luminous flux.
    public static let nanolumen: Self = .init(.nano)
    
    /// The picolumen unit of luminous flux.
    public static let picolumen: Self = .init(.pico)
    
    /// The femtolumen unit of luminous flux.
    public static let femtolumen: Self = .init(.femto)
    
    /// The attolumen unit of luminous flux.
    public static let attolumen: Self = .init(.atto)
    
    /// The zeptolumen unit of luminous flux.
    public static let zeptolumen: Self = .init(.zepto)
    
    /// The yoctolumen unit of luminous flux.
    public static let yoctolumen: Self = .init(.yocto)
}

// MARK: - Codable

extension LuminousFlux: Codable {}

// MARK: - Comparable

extension LuminousFlux: Comparable {}

// MARK: - Equatable

extension LuminousFlux: Equatable {}

// MARK: - Hashable

extension LuminousFlux: Hashable {}

// MARK: - Measurable

extension LuminousFlux: Measurable {
    public static let base: Self = .lumen
}

// MARK: - Sendable

extension LuminousFlux: Sendable {}
