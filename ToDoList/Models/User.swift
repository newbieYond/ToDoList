//
//  User.swift
//  ToDoList
//
//  Created by 조성호 on 2023/05/06.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
