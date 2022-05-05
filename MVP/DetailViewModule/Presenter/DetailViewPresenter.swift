//
//  DetailViewPresenter.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 07.08.2021.
//

import Foundation

final class DetailViewPresenter: DetailViewPresenterProtocol {
    
    private var user: UserProtocol
    weak private var view: DetailViewProtocol?
    private var router: RouterProtocol
    
    init(view: DetailViewProtocol, user: UserProtocol, router: RouterProtocol) {
        self.view = view
        self.user = user
        self.router = router
    }
    
    public func presentUser() {
        view?.setData(user: user)
    }
    
}
