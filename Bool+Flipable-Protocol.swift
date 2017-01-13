//
//  Flipable-Protocol.swift
//  Health Up Display
//
//  Created by Victor Hudson on 4/6/16.
//  Copyright © 2016 Victor Hudson. All rights reserved.
//

import Foundation

extension Bool {
	mutating func flip() {
		self = !self
	}
}