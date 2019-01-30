//
//  ViewController.swift
//  HitTest
//
//  Created by Martin Otyeka on 2019-01-29.
//  Copyright © 2019 Capsule. All rights reserved.
//

import UIKit

final class ParentViewController: UIViewController {

    private lazy var mainViewController: MainViewController = {
        return MainViewController()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.addChild(self.mainViewController)
        self.view.addSubview(self.mainViewController.view)
        self.mainViewController.didMove(toParent: self)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap)))
    }
    
    @objc private func tap() {
        print("Did Tap ParentViewController")
    }

}

