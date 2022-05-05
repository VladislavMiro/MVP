//
//  PresenterProtocol.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

protocol MainViewPresenterProtocol: class {
    func loadUsers()
    func getUsers() -> [UserProtocol]
    func getUser(at: Int) -> UserProtocol
    func openDetailView(at cellIndex: Int)
}
