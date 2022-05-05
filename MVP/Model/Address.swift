//
//  Adress.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

struct Address: AddressProtocol {
    public var street: String
    public var suite: String
    public var city: String
    public var zipcode: String
}
