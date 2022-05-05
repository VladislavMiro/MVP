//
//  CompanyProtocol.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import Foundation

protocol CompanyProtocol: Codable {
    var name: String { get set }
    var catchPhrase: String { get set }
    var bs: String { get set }
}
