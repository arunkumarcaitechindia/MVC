//
//  UILabelClass.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class CustomLabel: UILabel {
    
    private let title: String
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setup() {
        text = title
        textColor = .white
        font = .preferredFont(forTextStyle: .headline)
    }
    
}
