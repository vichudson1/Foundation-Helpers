//  PaceFormatter.swift
//  Created by Victor Hudson on 1/13/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.

import Foundation

/// Type alias to give the formatter some context on its input.
typealias WalkingPace = Double

/// For converting `WalkingPace` instances to a string
struct PaceFormatter {
	
	/// Use to convert `WalkingPace` instances to a string.
	///
	/// - Parameter pace: The walking pace value.
	/// - Returns: String representing the walking pace in the form `19'23"`.
	static func string(from pace: WalkingPace) -> String {
		let units = pace.timeUnits
		return "\(units.minutes)'\(units.seconds)\""
	}
}

