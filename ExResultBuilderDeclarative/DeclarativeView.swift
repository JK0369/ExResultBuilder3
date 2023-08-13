//
//  DeclarativeView.swift
//  ExResultBuilderDeclarative
//
//  Created by 김종권 on 2023/08/13.
//

import UIKit

extension UIImageView {
    func backgroundColor(_ backgroundColor: UIColor) -> UIImageView {
        self.backgroundColor = backgroundColor
        return self
    }

    func clipsToBounds(_ value: Bool) -> UIImageView {
        self.clipsToBounds = clipsToBounds
        return self
    }
}
