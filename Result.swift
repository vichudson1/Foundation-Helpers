//  Result.swift
//  Created by Victor Hudson on 11/15/17.
//Copyright © 2017 Victor Hudson. All rights reserved.

import Foundation

enum Result<Value, Error> {
	case success(Value)
	case failure(Error)
}

