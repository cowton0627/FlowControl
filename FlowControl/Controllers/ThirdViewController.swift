//
//  ThirdViewController.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
//    func thirdVCdidChange(_ thirdVC: ThirdViewController)
//    func thirddVCdidChange(_ model: Model)
    func thirdVCdidChange(_ thirdVC: ThirdViewController, didSelect model: Model)
}

class ThirdViewController: UIViewController {
    @IBOutlet weak var thirdTableView: UITableView!
    var model: Model?
    weak var delegate: ThirdViewControllerDelegate?
//    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ThirdTableViewCell.self)") as? ThirdTableViewCell else {
            return UITableViewCell()
        }
        if let model = model {
            cell.setupCell(model: model)
        }
        return cell
        
    }
    
}


