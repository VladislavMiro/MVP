//
//  Error.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 06.08.2021.
//

import Foundation

enum NetworkResult {
    case sucsess([UserProtocol])
    case falure(Error)
}
