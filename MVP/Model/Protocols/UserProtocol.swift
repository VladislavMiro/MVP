//
//  UserProtocol.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

protocol UserProtocol: Codable {
    var id: Int { get set }
    var name: String { get set }
    var username: String { get set }
    var email: String { get set }
    var address: Address { get set }
    var phone: String { get set }
    var company: Company { get set }
}
