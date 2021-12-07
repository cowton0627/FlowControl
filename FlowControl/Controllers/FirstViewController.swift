//
//  FirstViewController.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import UIKit

protocol FirstViewControllerDelegate: AnyObject {
    func firstVCdidChange(_ firstVC: FirstViewController)
}

class FirstViewController: UIViewController {
//    @IBOutlet weak var firstButton: UIButton!
    var models: [Model]?
    weak var delegate: FirstViewControllerDelegate?
//    var coordinator: Coordinator?
    
//    var models: [Model] = [
//        Model(name: "Charles", age: 38, middleName: "II", zodiac: "豬"),
//        Model(name: "Chuck", age: 28, middleName: "VI", zodiac: "狗"),
//        Model(name: "Jason", age: 39, middleName: "IV", zodiac: "雞"),
//        Model(name: "Chole", age: 29, middleName: "XII", zodiac: "牛"),
//        Model(name: "Diane", age: 33, middleName: "XIV", zodiac: "猴"),
//        Model(name: "Larry", age: 88, middleName: "VII", zodiac: "狗")
//    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: -傳值1
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showSecond", let vc = segue.destination as? SecondViewController, let models = models {
//            vc.delegate = self
//            vc.models = models
//        }
//    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // MARK: -傳值1
//        performSegue(withIdentifier: "showSecond", sender: nil)
        
        // MARK: -傳值2
//        if let models = models {
//            showSecondVC(models: models)
//        }
        
        // MARK: -傳值3.1
        delegate?.firstVCdidChange(self)

    }
    
    // MARK: -傳值2
//    func showSecondVC(models: [Model]) {
//        guard let vc = storyboard?.instantiateViewController(withIdentifier: "\(SecondViewController.self)") as? SecondViewController else {
//            return
//        }
////        vc.delegate = self
//        vc.models = models
//        show(vc, sender: nil)
//    }
}

// MARK: -傳值3
//extension FirstViewController: SecondViewControllerDelegate {
//    func secondVCdidChange(_ secondVC: SecondViewController, didSelect model: Model) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let thirdVC = storyboard.instantiateViewController(withIdentifier: "\(ThirdViewController.self)") as? ThirdViewController {
//            thirdVC.model = model
//            secondVC.show(thirdVC, sender: nil)
//        }
//    }
//}
