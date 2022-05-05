//
//  MainViewPresenter.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

final class MainViewPresenter: MainViewPresenterProtocol {
    
    weak private var view: MainViewProtocol?
    private var networkService: NetworkServiceProtocol
    private var router: RouterProtocol
    private var users = [UserProtocol]()
    
    required init(view: MainViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol) {
        self.view = view
        self.networkService = networkService
        self.router = router
    }
    
    public func loadUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        networkService.getUsers(url: url) { networkResult in
            switch(networkResult) {
            case .falure(let error):
                print(error.localizedDescription)
            case .sucsess(let users):
                self.users.append(contentsOf: users)
                self.view?.updateTable()
            }
        }
        
        
    }
    
    public func getUser(at index: Int) -> UserProtocol {
        return users[index]
    }
    
    public func getUsers() -> [UserProtocol] {
        return users
    }
    
    public func openDetailView(at cellIndex: Int) {
        router.showDetailView(user: users[cellIndex])
    }
    
}
