//
//  LoginView.swift
//  lab02
//
//  Created by Lucely Mendoza on 1/10/24.
//


import SwiftUI

struct LoginView: View {
    @Binding var isLoggedin: Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image(.user)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                    .padding()
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 10)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 20)
                
                Button("Login", action: btnLogin)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .padding(.bottom, 10)
                
                NavigationLink(destination: CreateAccountView()) {
                    Text("Create my account")
                }
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func btnLogin() {
        // Simulando la acción de login
        isLoggedin = true
    }
}
