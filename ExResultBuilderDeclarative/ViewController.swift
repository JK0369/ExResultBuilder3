//
//  ViewController.swift
//  ExResultBuilderDeclarative
//
//  Created by 김종권 on 2023/08/13.
//

import UIKit

class ViewController: UIViewController {
    // 일반적인 뷰 초기화 방법
    private let imageView1 = {
        let view = UIImageView()
        view.backgroundColor = .blue
        view.clipsToBounds = true
        return view
    }()
    
    // extension으로 SwiftUI처럼 만들기
    private let imageView2 = UIImageView()
        .backgroundColor(.brown)
        .clipsToBounds(true)
    
    // @resultBuilder를 사용한 방법
    private let imageView3 = UIImageView.build { view in
        setBackgroundColor(view, .black)
        setClipsToBounds(view, true)
        if (1...10).randomElement()! % 2 == 0 {
            setBorderWidth(view, 1)
        } else {
            setBorderWidth(view, 2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(imageView1, "\n", imageView1.backgroundColor)
        print("\n\n===\n\n")
        print(imageView2, "\n", imageView2.backgroundColor)
        print("\n\n===\n\n")
        print(imageView3, "\n", imageView3.backgroundColor, imageView3.clipsToBounds, imageView3.layer.borderWidth)
    }
}
