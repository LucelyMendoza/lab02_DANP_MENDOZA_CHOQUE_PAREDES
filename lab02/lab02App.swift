//
//  lab02App.swift
//  lab02
//
//  Created by Lucely Mendoza on 1/10/24.
//

import SwiftUI

@main
struct lab02App: App {
    @State var isLoggedin: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedin {
                NavigationView {
                    HomeView(isLoggedin: $isLoggedin)
                }
            } else {
                LoginView(isLoggedin: $isLoggedin)
            }
        }
    }
}

