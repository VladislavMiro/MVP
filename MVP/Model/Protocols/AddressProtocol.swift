//
//  AddressProtocol.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

protocol AddressProtocol: Codable {
    var street: String { get set }
    var suite: String { get set }
    var city: String { get set }
    var zipcode: String { get set }
}
