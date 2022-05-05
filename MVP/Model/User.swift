//
//  User.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

struct User: UserProtocol {
    public var id: Int
    public var name: String
    public var username: String
    public var email: String
    public var address: Address
    public var phone: String
    public var company: Company
}
