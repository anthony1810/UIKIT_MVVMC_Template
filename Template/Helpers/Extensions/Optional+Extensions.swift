//
//  Optional+Extensions.swift
//  RxTemplate
//
//  Created by Anthony Tran on 19/03/2022.
//

import UIKit

extension Optional where Wrapped: ExpressibleByStringLiteral {
    var orStringEmpty: Wrapped {
        switch self {
        case .some(let value):
            return value
        case _:
            return ""
        }
    }
}

extension Optional where Wrapped == Int {
    var orZero: Wrapped {
        switch self {
        case .some(let value):
            return value
        case _:
            return 0
        }
    }
}

extension Optional where Wrapped == Double {
    var orZero: Wrapped {
        switch self {
        case .some(let value):
            return value
        case _:
            return 0
        }
    }
}

extension Optional where Wrapped == Bool {
    var orFalse: Wrapped {
        switch self {
        case .some(let value):
            return value
        case _:
            return false
        }
    }
}

extension Optional where Wrapped: Collection {
    var orArrEmpty: Wrapped {
        switch self {
        case .some(let value):
            return value
        case _:
            return [] as! Wrapped
        }
    }
}

extension Optional where Wrapped == Date {
    var orCurrent: Wrapped {
        switch self {
        case .some(let value):
            return value
        case _:
            return Date()
        }
    }
}
