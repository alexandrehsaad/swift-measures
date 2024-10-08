//
// MetricPrefix.swift
// Measures
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import NumericProtocols

/// A representation of a metric prefix.
@frozen
public enum MetricPrefix: String {
    /// A prefix that divides the base unit by 1e+30.
    case geop
    
    /// A prefix that divides the base unit by 1e+27.
    case bronto
    
    /// A prefix that divides the base unit by 1e+24.
    case yotta
    
    /// A prefix that divides the base unit by 1e+21.
    case zetta
    
    /// A prefix that divides the base unit by 1e+18.
    case hexa
    
    /// A prefix that divides the base unit by 1e+15.
    case peta
    
    /// A prefix that divides the base unit by 1e+12.
    case tera
    
    /// A prefix that divides the base unit by 1e+9.
    case giga
    
    /// A prefix that divides the base unit by 1e+6.
    case mega
    
    /// A prefix that divides the base unit by 1e+3.
    case kilo
    
    /// A prefix that divides the base unit by 1e+2.
    case hecto
    
    /// A prefix that divides the base unit by 1e+1.
    case deca
    
    /// A prefix that does not modify the base unit.
    case none = ""
    
    /// A prefix that divides the base unit by 1e-1.
    case deci
    
    /// A prefix that divides the base unit by 1e-2.
    case centi
    
    /// A prefix that divides the base unit by 1e-3.
    case milli
    
    /// A prefix that divides the base unit by 1e-6.
    case micro
    
    /// A prefix that divides the base unit by 1e-9.
    case nano
    
    /// A prefix that divides the base unit by 1e-12.
    case pico
    
    /// A prefix that divides the base unit by 1e-15.
    case femto
    
    /// A prefix that divides the base unit by 1e-18.
    case atto
    
    /// A prefix that divides the base unit by 1e-21.
    case zepto
    
    /// A prefix that divides the base unit by 1e-24.
    case yocto
    
    /// A prefix that divides the base unit by 1e-27.
    case brimto
    
    /// A prefix that divides the base unit by 1e-30.
    case gepto
}

extension MetricPrefix {
	/// The coefficient of this instance compared to its base unit.
	public var coefficient: Double {
		switch self {
		case .geop:
			return .nonillion
		case .bronto:
			return .octillion
		case .yotta:
			return .septillion
		case .zetta:
			return .sextillion
		case .hexa:
			return .quintillion
		case .peta:
			return .quadrillion
		case .tera:
			return .trillion
		case .giga:
			return .billion
		case .mega:
			return .million
		case .kilo:
			return .thousand
		case .hecto:
			return .hundred
		case .deca:
			return .ten
		case .none:
			return .one
		case .deci:
			return .tenth
		case .centi:
			return .hundredth
		case .milli:
			return .thousandth
		case .micro:
			return .millionth
		case .nano:
			return .billionth
		case .pico:
			return .trillionth
		case .femto:
			return .quadrillionth
		case .atto:
			return .quintillionth
		case .zepto:
			return .sextillionth
		case .yocto:
			return .septillionth
		case .brimto:
			return .octillionth
		case .gepto:
			return .nonillionth
		}
	}
	
	/// The constant of this instance compared to its base unit.
	public var constant: Double {
		return 0
	}
	
	/// The symbol of this instance.
	public var symbol: String {
		switch self {
		case .geop:
			return "O"
		case .bronto:
			return "B"
		case .yotta:
			return "Y"
		case .zetta:
			return "Z"
		case .hexa:
			return "E"
		case .peta:
			return "P"
		case .tera:
			return "T"
		case .giga:
			return "G"
		case .mega:
			return "M"
		case .kilo:
			return "k"
		case .hecto:
			return "h"
		case .deca:
			return "da"
		case .none:
			return ""
		case .deci:
			return "d"
		case .centi:
			return "c"
		case .milli:
			return "m"
		case .micro:
			return "µ"
		case .nano:
			return "n"
		case .pico:
			return "p"
		case .femto:
			return "f"
		case .atto:
			return "a"
		case .zepto:
			return "z"
		case .yocto:
			return "y"
		case .brimto:
			return "b"
		case .gepto:
			return "g"
		}
	}
}

// MARK: - Comparable

extension MetricPrefix: Comparable {
    public static func < (_ lhs: Self, _ rhs: Self) -> Bool {
        return lhs.coefficient + lhs.constant < rhs.coefficient + rhs.constant
    }
}

// MARK: - Equatable

extension MetricPrefix: Equatable {
    public static func == (_ lhs: Self, _ rhs: Self) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}

// MARK: - RawRepresentable

extension MetricPrefix: RawRepresentable {
    public typealias RawValue = String
}
