//
//  RegistrationView.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Registration Screen")
                .font(.title)
                .padding()
            
            // Email, password, and confirm password fields
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Button to register user
            Button(action: register) {
                Text("Register")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Register")
    }
    
    func register() {
        // Implement registration logic here
    }
}

#Preview {
    RegistrationView()
}
