//
//  LoginView.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Thumbstack")
                    .font(.title)
                    .padding()
                
                // Email and password fields
                TextField("Email", text: $viewModel.email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Login button
                Button(action: {
                    viewModel.login()
                }) {
                    Text("Login")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                // Sign Up button
                NavigationLink(destination: RegistrationView()) {
                    Text("Sign Up")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Login")
            .fullScreenCover(isPresented: $viewModel.isLoginSuccess) {
                LandingPageView()
                    .navigationBarHidden(true) // Hides the navigation bar in LandingPageView
            }
        }
    }
}

#Preview {
    LoginView()
}
