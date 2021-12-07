//
//  SecondViewController.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
//    func secondVCdidChange(_ secondVC: SecondViewController)
//    func secondVCdidChange(_ models: [Model])
    func secondVCdidChange(_ secondVC: SecondViewController, didSelect model: Model)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var secondTableView: UITableView!
    var models: [Model] = []
    weak var delegate: SecondViewControllerDelegate?
//    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: -傳值1
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showThird", let vc = segue.destination as? ThirdViewController {
//            if let cell = sender as? SecondTableViewCell, let indexPath = secondTableView.indexPath(for: cell) {
//                vc.model = models[indexPath.row]
//            }
//        }
//    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(SecondTableViewCell.self)") as? SecondTableViewCell else {
            return UITableViewCell()
        }
//        cell.userNameLabel.text = models[indexPath.row].name
//        cell.ageLabel.text = "\(models[indexPath.row].age)"
        cell.setupCell(model: models[indexPath.row])
        
        return cell
    }
    
}

extension SecondViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // MARK: -傳值1
//        performSegue(withIdentifier: "showThird", sender: tableView.cellForRow(at:indexPath))
        
        // MARK: -傳值2
//        guard let vc = storyboard?.instantiateViewController(withIdentifier: "\(ThirdViewController.self)") as? ThirdViewController else {
//                    return
//        }
//        vc.model = models[indexPath.row]
//        show(vc, sender: nil)

        // MARK: -傳值3.1
        delegate?.secondVCdidChange(self, didSelect: models[indexPath.row])
    }
    
}

