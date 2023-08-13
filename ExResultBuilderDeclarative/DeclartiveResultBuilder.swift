//
//  DeclartiveResultBuilder.swift
//  ExResultBuilderDeclarative
//
//  Created by 김종권 on 2023/08/13.
//

import UIKit

@resultBuilder
struct ImageViewBuilder {
    static func buildBlock(_ components: UIImageView...) -> UIImageView {
        handle(components)
    }
    
    static func buildEither(first component: UIImageView...) -> UIImageView {
        handle(component)
    }
    static func buildEither(second component: UIImageView...) -> UIImageView {
        handle(component)
    }
    
    private static func handle(_ component: [UIImageView]) -> UIImageView {
        let imageView = UIImageView()
        component
            .forEach {
                imageView.backgroundColor = $0.backgroundColor
                imageView.clipsToBounds = $0.clipsToBounds
                imageView.layer.borderWidth = $0.layer.borderWidth
            }
        return imageView
    }
}

extension UIImageView {
    static func build(
        @ImageViewBuilder _ closure: (UIImageView) -> UIImageView
    ) -> UIImageView {
        closure(UIImageView())
    }
}

func setBackgroundColor(_ view: UIImageView, _ value: UIColor) -> UIImageView {
    view.backgroundColor = value
    return view
}

func setClipsToBounds(_ view: UIImageView, _ value: Bool) -> UIImageView {
    view.clipsToBounds = value
    return view
}

func setBorderWidth(_ view: UIImageView, _ value: Double) -> UIImageView {
    view.layer.borderWidth = value
    return view
}
