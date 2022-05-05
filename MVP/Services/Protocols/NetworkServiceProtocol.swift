//
//  NetworkService.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 06.08.2021.
//

import Foundation

protocol NetworkServiceProtocol: class {
    func getUsers(url: URL, completion: @escaping (NetworkResult) -> Void)
}
