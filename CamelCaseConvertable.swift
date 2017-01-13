//
//  CamelCaseConvertable.swift
//  Health Up Display
//
//  Created by Victor Hudson on 4/1/16.
//  Copyright © 2016 Victor Hudson. All rights reserved.
//

import Foundation


protocol CamelCaseConvertable {
	var normalizedString: String { get }
}

extension CamelCaseConvertable where Self: RawRepresentable, Self.RawValue: ExpressibleByStringLiteral {
	var normalizedString: String {
		let string = self.rawValue as! NSString
		return string.replacingOccurrences(of: "([a-z])([A-Z])",
		                                   with: "$1 $2",
		                                   options: NSString.CompareOptions.regularExpression,
		                                   range: NSMakeRange(0, string.length))
		
	}
}

