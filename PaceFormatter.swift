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
	/// - Returns: string representing the walking pace in the form `19'23"`.
	/// - Note: Depends on the `timeUnits` extension on `TimeInterval`.
	func string(from pace: WalkingPace) -> String {
		let units = pace.timeUnits
		return "\(units.minutes)'\(units.seconds)\""
	}
}

