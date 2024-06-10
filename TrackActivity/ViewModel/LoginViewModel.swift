//
//  LoginViewModel.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isLoginSuccess = false
    
    func login() {
            self.isLoginSuccess = true
    }
}
