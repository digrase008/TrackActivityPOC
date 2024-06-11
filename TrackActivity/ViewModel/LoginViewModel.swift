//
//  LoginViewModel.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import SwiftUI
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isLoginSuccess = false
    
    func login() {
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if let error = error {
                print("Error logging in: \(error.localizedDescription)")
                return
            }
            // Login successful
            print("User logged in successfully!")
            self?.isLoginSuccess = true
            // Optionally: Perform segue to the next screen
        }
        
    }
}
