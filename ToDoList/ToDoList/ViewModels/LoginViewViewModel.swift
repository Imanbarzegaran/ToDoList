//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by MacBook Air on 7/1/24.
//

import Foundation


class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        print("Called")
    }
    
    func validate() {
        
    }
}
