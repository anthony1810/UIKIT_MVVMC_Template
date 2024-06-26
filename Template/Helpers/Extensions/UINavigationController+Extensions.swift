//
//  UINavigationController+Extensions.swift
//  RxTemplate
//
//  Created by Anthony Tran on 22/03/2022.
//

import UIKit

extension UINavigationController {
    func addShadow() {
        self.navigationBar.layer.masksToBounds = false
        self.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationBar.layer.shadowOpacity = 0.8
        self.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        self.navigationBar.layer.shadowRadius = 2
    }
}
