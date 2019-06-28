//
//  GradientButton.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class GradiantButton: UIButton {
    
    private lazy var gradiantView: GradiantView = {
        let view = GradiantView(gradiantLayer: gradiantLayer)
        view.isUserInteractionEnabled = true
        return view
    }()
    
    
    private let title: String
    private let gradiantLayer: CAGradientLayer
    
    init (title: String, gradiantLayer: CAGradientLayer = .hotPinkTomangoLayer) {
        self.title = title
        self.gradiantLayer = gradiantLayer
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradiantView.frame = bounds
        
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        gradiantLayer.frame = gradiantView.bounds
    }
    
    func setup() {
        
        titleLabel?.font = .preferredFont(forTextStyle: .headline)
        
        addSubview(gradiantView)
        sendSubviewToBack(gradiantView)
    }
    
}
