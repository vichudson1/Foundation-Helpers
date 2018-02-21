//  DetailedDescriptionProvider.swift
//  Created by Victor Hudson on 2/21/18.
//Copyright © 2018 Victor Hudson. All rights reserved.

import Foundation


/// Types conforming to this protocol provide a `detailedDescription` string property.
protocol DetailedDescriptionProvider {
	
	/// A string describing the conforming type in detail.
	var detailedDescription: String { get }
}
