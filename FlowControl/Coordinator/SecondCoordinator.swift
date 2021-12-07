//
//  SecondCoordinator.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import Foundation
import UIKit

class SecondCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "\(SecondViewController.self)") as? SecondViewController {
//            secondVC.delegate = self
//            secondVC.models = models
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    
}

