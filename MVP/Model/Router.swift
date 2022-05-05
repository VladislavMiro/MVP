//
//  ViewManager.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation
import UIKit


final class Router: RouterProtocol {
    
    public var navigationController: UINavigationController?
    public var assemblyBuilder: AssemblyBuilderProtocol?
    
    init(navigationController: UINavigationController, assemblyBuilder: AssemblyBuilderProtocol) {
        self.navigationController = navigationController
        self.assemblyBuilder = assemblyBuilder
    }
    
    public func initialView() {
        if let navigationController = navigationController {
            guard let initialView = assemblyBuilder?.createMainView(router: self) else { return }
            navigationController.viewControllers = [initialView]
            //navigationController.pushViewController(initialView, animated: true)
        }
    }
    
    public func showDetailView(user: UserProtocol) {
        if let navigationController = navigationController {
            guard let detailView = assemblyBuilder?.createDetailView(user: user, router: self) else { return }
            navigationController.pushViewController(detailView, animated: true)
        }
    }
    
    public func popToRoot() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    public func popView() {
        navigationController?.popViewController(animated: true)
    }

}
