//  TemperatureStringConvertor.swift
//  Created by Victor Hudson on 1/23/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.

import Foundation

struct TemperatureStringConvertor {
	private let numberFormatter: NumberFormatter
	init(formatter: NumberFormatter?) {
		self.numberFormatter = formatter ?? NumberFormatter()
	}
	
	func temperature(from tempString: String) -> Measurement<UnitTemperature>? {
		guard let scale = TempScale(tempString: tempString) else { return nil }
		let numberString = tempString.replacingCharacters(in: scale.range, with: "")
		guard let value = numberFormatter.number(from: numberString) else { return nil }
		return Measurement(value: Double(value), unit: scale.unit)
	}
	
	private enum TempScale {
		case fahrenheit(Range<String.Index>)
		case celsius(Range<String.Index>)
		
		init?(tempString: String) {
			if let range = tempString.range(of: " degF") {
				self = .fahrenheit(range)
			} else if let range = tempString.range(of: " degC") {
				self = .celsius(range)
			} else {
				return nil
			}
		}
		
		var unit: UnitTemperature {
			switch self {
			case .celsius: return UnitTemperature.celsius
			default: return UnitTemperature.fahrenheit
			}
		}
		
		var range: Range<String.Index> {
			switch self {
			case let .celsius(range): return range
			case let .fahrenheit(range): return range
			}
		}
	}
}
