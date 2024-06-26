//
//  NSObject+Extension.swift
//  RxTemplate
//
//  Created by Anthony Tran on 19/03/2022.
//

import UIKit

extension NSObject: NameDescribable { }

protocol NameDescribable {
    var typeName: String { get }
    static var typeName: String { get }
}

extension NameDescribable {
    var typeName: String {
        return String(describing: type(of: self))
    }

    static var typeName: String {
        return String(describing: self)
    }
}

