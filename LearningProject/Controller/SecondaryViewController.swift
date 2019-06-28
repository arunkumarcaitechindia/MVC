//
//  SecondaryViewController.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//
import UIKit

class SecondaryViewController: UIViewController {
    
    private let mainView: SecondaryControllerView
    
    var name = String()
    var desc = String()
    
    init(mainView: SecondaryControllerView = .init(),name : String,des: String){
        self.mainView = mainView
        self.name = name
        self.desc = des
        super.init(nibName: nil, bundle: nil)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        view = mainView
        mainView.heroDescription.textColor = .black
        mainView.heroDescription.font = .preferredFont(forTextStyle: .subheadline)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    func setupView() {
        navigationItem.largeTitleDisplayMode = .never
        
        mainView.heroName.text = name
        mainView.heroDescription.text = desc
    }
}
