//
//  Coordinator.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import Foundation
import UIKit

// MARK: -傳值3.1
class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    var models: [Model] = [
        Model(name: "Charles", age: 38, middleName: "II", zodiac: "豬"),
        Model(name: "Chuck", age: 28, middleName: "VI", zodiac: "狗"),
        Model(name: "Jason", age: 39, middleName: "IV", zodiac: "雞"),
        Model(name: "Chole", age: 29, middleName: "XII", zodiac: "牛"),
        Model(name: "Diane", age: 33, middleName: "XIV", zodiac: "猴"),
        Model(name: "Larry", age: 88, middleName: "VII", zodiac: "狗")
    ]
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let firstVC = storyboard.instantiateViewController(withIdentifier: "\(FirstViewController.self)") as? FirstViewController {
            firstVC.delegate = self
            
//            firstVC.coordinator = self
            firstVC.models = models
            navigationController?.setViewControllers([firstVC], animated: true)
        }
    }
    
//    let modelManager: ModelManager
//
//    init(modelManager: ModelManager) {
//        self.modelManager = modelManager
//    }
//
//    func start(from vc: UIViewController) {
//    }
    
}

// MARK: -從一轉二
extension MainCoordinator: FirstViewControllerDelegate {
    func firstVCdidChange(_ firstVC: FirstViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "\(SecondViewController.self)") as? SecondViewController {
            secondVC.delegate = self
//            secondVC.coordinator = self
            secondVC.models = models
//            navigationController?.pushViewController(secondVC, animated: true)
            firstVC.show(secondVC, sender: nil)
        }
    }

}

// MARK: -從二轉三
extension MainCoordinator: SecondViewControllerDelegate {
    func secondVCdidChange(_ secondVC: SecondViewController, didSelect model: Model) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let thirdVC = storyboard.instantiateViewController(withIdentifier: "\(ThirdViewController.self)") as? ThirdViewController {
//            thirdVC.delegate = self
//            thirdVC.coordinator = self
            thirdVC.model = model
            secondVC.show(thirdVC, sender: nil)
        }
    }

}

// MARK: -如果三還要轉
extension MainCoordinator: ThirdViewControllerDelegate {
    func thirdVCdidChange(_ thirdVC: ThirdViewController, didSelect model: Model) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let vc = storyboard.instantiateViewController(withIdentifier: "\(.self)") as? ViewController {
//            vc.delegate = self
//        thirdVC.show(vc, sender: nil)
//        }
    }
    
}
