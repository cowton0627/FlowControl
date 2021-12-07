//
//  Coordinator.swift
//  FlowControl
//
//  Created by Chun-Li Cheng on 2021/12/6.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func start()
}
