//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by 조성호 on 2023/05/06.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init() {
        
    }
    
    func login() {
        guard self.validate() else { return }
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            
        }
    }
    
    func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        guard email.contains("@"), email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
    }
}
