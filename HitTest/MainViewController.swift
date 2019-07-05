//
//  MainViewController.swift
//  HitTest
//
//  Created by Martin Otyeka on 2019-01-29.
//  Copyright © 2019 Capsule. All rights reserved.
//

import UIKit
import Pageboy

final class MainViewController: PageboyViewController {
    
    private var viewControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        self.viewControllers = [InvisibleViewController(), ColorViewController(.yellow), ColorViewController(.red), ColorViewController(.purple), ColorViewController(.gray)]
        super.viewDidLoad()
        self.dataSource = self
        self.view.backgroundColor = .clear
    }
}

extension MainViewController: PageboyViewControllerDataSource {
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return self.viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return self.viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return Page.at(index: 1)
    }
    
}
