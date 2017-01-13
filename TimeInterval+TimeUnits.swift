//
//  TimeInterval+TimeUnits.swift
//
//  Created by Victor Hudson on 1/13/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.
//

import Foundation


extension TimeInterval {
	/// Provides a representation of the TimeInterval in the form of hours, minutes, and seconds as integers.
	var timeUnits: (hours: Int, minutes: Int, seconds: Int) {
		let interval = Int(self)
		return (interval / 3600, (interval % 3600) / 60, (interval % 3600) % 60)
	}
}
