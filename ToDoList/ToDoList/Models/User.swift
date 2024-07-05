//
//  User.swift
//  ToDoList
//
//  Created by MacBook Air on 7/1/24.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

