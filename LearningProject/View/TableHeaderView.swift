//
//  TableHeaderView.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class TableHeaderView: UIView {
    
    private lazy var headerLabel: UILabel = { [unowned self] in
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .headline)
        label.textColor = .white
        label.text = title
        return label
        }()
    
    private lazy var gradientLayer: CAGradientLayer = .hotPinkTomangoLayer
    
    private let title: String?
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        gradientLayer.frame = bounds
    }
    
    private func setUp() {
        
        layer.addSublayer(gradientLayer)
        
        addSubview(headerLabel)
        
        let guide = layoutMarginsGuide
        let spacing: CGFloat = 10.0
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: spacing),
            headerLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -spacing),
            headerLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
            ])
    }
}
