//
//  HomeView.swift
//  lab02
//
//  Created by Lucely Mendoza on 1/10/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var isLoggedin: Bool
    
    var body: some View {
        VStack {
            Text("Welcome to the Home Page!")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Button("Logout") {
                isLoggedin = false
            }
            .buttonStyle(BorderedProminentButtonStyle())
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}
