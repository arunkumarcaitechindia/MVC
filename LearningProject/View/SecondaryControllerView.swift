//
//  SecondaryControllerView.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class SecondaryControllerView: UIView {
    
    lazy var doneButton: GradiantButton = { [unowned self] in
        let button = GradiantButton(title: "Done")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        }()
    
    lazy var heroView: GradiantView = { [unowned self] in
        let view = GradiantView(gradiantLayer: .hotPinkTomangoLayer)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        }()
    
    lazy var heroName: CustomLabel = { [unowned self] in
        let label = CustomLabel(title: "")
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
        }()
    
    lazy var heroDescription: CustomLabel = { [unowned self] in
        let label = CustomLabel(title: "")
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
        }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        addSubview(doneButton)
        addSubview(heroView)
        heroView.addSubview(heroName)
        heroView.bringSubviewToFront(heroName)
        addSubview(heroDescription)
        
        let guide               = layoutMarginsGuide
        let width: CGFloat      = frame.size.width / 2
        let height: CGFloat     = 44
        
        NSLayoutConstraint.activate([
            doneButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -20),
            doneButton.widthAnchor.constraint(equalToConstant: width),
            doneButton.heightAnchor.constraint(equalToConstant: height),
            doneButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            heroView.topAnchor.constraint(equalTo: guide.topAnchor),
            heroView.leadingAnchor.constraint(equalTo: leadingAnchor),
            heroView.trailingAnchor.constraint(equalTo: trailingAnchor),
            heroView.heightAnchor.constraint(equalToConstant: height)
            ])
        NSLayoutConstraint.activate([
            heroName.leadingAnchor.constraint(equalTo: heroView.leadingAnchor, constant: 10.0),
            heroName.trailingAnchor.constraint(equalTo: heroView.trailingAnchor, constant: -10.0),
            heroName.centerYAnchor.constraint(equalTo: heroView.centerYAnchor, constant: 0)
            ])
        NSLayoutConstraint.activate([
            heroDescription.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10.0),
            heroDescription.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10.0),
            heroDescription.centerXAnchor.constraint(equalTo: guide.centerXAnchor, constant: 0),
            heroDescription.topAnchor.constraint(equalTo: heroView.bottomAnchor, constant: 20)
            ])
    }
}
