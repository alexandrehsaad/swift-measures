// Speed+Units.swift
// Measures
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//
	
extension Speed {
	
	// MARK: - Composed Units
	
	/// The knot unit of speed.
	public static let knot: Self = Length.nauticalMile.dividing(by: .hour)

	/// The miles per hour unit of speed.
	public static let milesPerHour: Self = Length.mile.dividing(by: .hour)

	/// The kilometres per hour unit of speed.
	public static let kilometresPerHour: Self = Length.kilometre.dividing(by: .hour)

	/// The metre per second unit of speed.
	public static let metresPerSecond: Self = Length.metre.dividing(by: .second)
}
