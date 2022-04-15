// ElectricTension+Units.swift
// Measures
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//
	
extension ElectricTension {
	
	// MARK: - Composed Units
	
	/// Creates a new instance with the specified electric current and time.
	///
	/// - parameter electricCurrent: The electric current.
	/// - parameter time: The time.
	private init(_ electricCurrent: ElectricCurrent, dividedBy time: Time) {
		let coefficient: Double = electricCurrent.coefficient / time.coefficient
		let symbol: String = electricCurrent.symbol + "/" + time.symbol
		let name: String = electricCurrent.name + " " + time.name
		
		self.init(
			coefficient: coefficient,
			symbol: symbol,
			name: name
		)
	}
	
	/// The ampere hour unit of speed.
	public static let ampereHour: Self = .init(.ampere, dividedBy: .hour)
	
	/// The ampere second unit of speed.
	public static let ampereSecond: Self = .init(.ampere, dividedBy: .second)
	
	// MARK: - Metric Units
	
	/// Creates a new instance with the specified metric prefix.
	///
	/// - parameter prefix: The prefix.
	private init(_ prefix: MetricPrefix) {
		let symbol: String = prefix.symbol + "C"
		let name: String = prefix.rawValue + "coulomb"
		
		self.init(
			coefficient: prefix.coefficient,
			symbol: symbol,
			name: name
		)
	}
	
	/// The yottacoulomb unit of electric tension.
	public static let yottacoulomb: Self = .init(.yotta)
	
	/// The zettacoulomb unit of electric tension.
	public static let zettacoulomb: Self = .init(.zetta)
	
	/// The hexacoulomb unit of electric tension.
	public static let hexacoulomb: Self = .init(.hexa)
	
	/// The petacoulomb unit of electric tension.
	public static let petacoulomb: Self = .init(.peta)
	
	/// The teracoulomb unit of electric tension.
	public static let teracoulomb: Self = .init(.tera)
	
	/// The gigacoulomb unit of electric tension.
	public static let gigacoulomb: Self = .init(.giga)
	
	/// The megacoulomb unit of electric tension.
	public static let megacoulomb: Self = .init(.yotta)
	
	/// The kilocoulomb unit of electric tension.
	public static let kilocoulomb: Self = .init(.kilo)
	
	/// The hectocoulomb unit of electric tension.
	public static let hectocoulomb: Self = .init(.hecto)
	
	/// The decacoulomb unit of electric tension.
	public static let decacoulomb: Self = .init(.deca)
	
	/// The coulomb unit of electric tension.
	public static let coulomb: Self = .init(.none)
	
	/// The decicoulomb unit of electric tension.
	public static let decicoulomb: Self = .init(.deci)
	
	/// The centicoulomb unit of electric tension.
	public static let centicoulomb: Self = .init(.centi)
	
	/// The millicoulomb unit of electric tension.
	public static let millicoulomb: Self = .init(.milli)
	
	/// The microcoulomb unit of electric tension.
	public static let microcoulomb: Self = .init(.micro)
	
	/// The nanocoulomb unit of electric tension.
	public static let nanocoulomb: Self = .init(.nano)
	
	/// The picocoulomb unit of electric tension.
	public static let picocoulomb: Self = .init(.pico)
	
	/// The femtocoulomb unit of electric tension.
	public static let femtocoulomb: Self = .init(.femto)
	
	/// The attocoulomb unit of electric tension.
	public static let attocoulomb: Self = .init(.atto)
	
	/// The zeptocoulomb unit of electric tension.
	public static let zeptocoulomb: Self = .init(.zepto)
	
	/// The yoctocoulomb unit of electric tension.
	public static let yoctocoulomb: Self = .init(.yocto)
}