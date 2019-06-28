//
//  UIGradientExtension.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

extension CAGradientLayer {
    
    static var hotPinkTomangoLayer: CAGradientLayer {
        let layer           = CAGradientLayer()
        layer.colors        = [UIColor.hotPink.cgColor,UIColor.mango.cgColor]
        layer.startPoint    = CGPoint(x: 0, y: 0.5)
        layer.endPoint      = CGPoint(x: 1, y: 0.5)
        return layer
    }
}
