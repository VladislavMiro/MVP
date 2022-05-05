//
//  AssemblyBuilder.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 09.08.2021.
//

import Foundation
import UIKit

final class AssemblyBuilder: AssemblyBuilderProtocol {
    
    public func createMainView(router: RouterProtocol) -> UIViewController {
        let storyboard = UIStoryboard(name: "MainView", bundle: nil)
        guard let view = storyboard.instantiateViewController(identifier: "MainView") as? MainViewController else {
            fatalError()
        }
        let network = NetworkService()
        let presenter = MainViewPresenter(view: view, networkService: network, router: router)
        view.presenter = presenter
        return view
    }
    
    public func createDetailView(user: UserProtocol, router: RouterProtocol) -> UIViewController? {
        let storyboard = UIStoryboard(name: "DetailView", bundle: nil)
        guard let view = storyboard.instantiateViewController(identifier: "DetailView") as? DetailViewController else {
            return nil
        }
        let presenter = DetailViewPresenter(view: view, user: user, router: router)
        view.presenter = presenter
        return view
    }
    
}
