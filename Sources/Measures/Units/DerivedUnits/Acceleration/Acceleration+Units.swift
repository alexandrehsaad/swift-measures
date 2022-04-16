// Acceleration+Units.swift
// Measures
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//
	
extension Acceleration {
	
	// MARK: - Composed Units
	
	/// The metre per square second unit of acceleration.
	public static let metrePerSquareSecond: Self = Length.metre.dividing(by: .second)
}
