//
//  AssemblyBuilder.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 09.08.2021.
//

import Foundation
import UIKit

protocol AssemblyBuilderProtocol {
    func createMainView(router: RouterProtocol) -> UIViewController
    func createDetailView(user: UserProtocol, router: RouterProtocol) -> UIViewController?
}
