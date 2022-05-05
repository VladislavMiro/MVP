//
//  RouterProtocol.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 09.08.2021.
//

import Foundation
import UIKit

protocol RouterMainProtocol {
    var navigationController: UINavigationController? { get set }
    var assemblyBuilder: AssemblyBuilderProtocol? { get set }
}

protocol RouterProtocol: RouterMainProtocol {
    func initialView()
    func showDetailView(user: UserProtocol)
    func popToRoot()
    func popView()
}
