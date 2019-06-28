//
//  GradiantView.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class GradiantView: UIView {
    
    private let gradiantLayer: CAGradientLayer
    
    init(gradiantLayer: CAGradientLayer = .hotPinkTomangoLayer){
        self.gradiantLayer = gradiantLayer
        super.init(frame: .zero)
        
        layer.addSublayer(gradiantLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        
        gradiantLayer.frame = bounds
    }
    
}
