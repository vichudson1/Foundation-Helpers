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


extension TimeInterval {
	var second: TimeInterval {
		return self.seconds
	}
	
	var seconds: TimeInterval {
		return self
	}
	
	var minute: TimeInterval {
		return self.minutes
	}
	
	var minutes: TimeInterval {
		let secondsInAMinute = 60 as TimeInterval
		return self * secondsInAMinute
	}
	
	var day: TimeInterval {
		return self.days
	}
	
	var days: TimeInterval {
		let secondsInADay = 86_400 as TimeInterval
		return self * secondsInADay
	}
	
	var fromNow: Date {
		let timeInterval = self
		return Date().addingTimeInterval(timeInterval)
	}
	
	func from(_ date: Date) -> Date {
		let timeInterval = self
		return date.addingTimeInterval(timeInterval)
	}
	
	var ago: Date {
		let timeInterval = self
		return Date().addingTimeInterval(-timeInterval)
	}
}
