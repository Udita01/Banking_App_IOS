//
//  BankingAppApp.swift
//  BankingApp
//
//  
//

import SwiftUI
import Firebase

@main
struct BankingAppApp: App {
    @StateObject var viewModel = AuthViewModel()
    @AppStorage("isDarkMode") private var isDarkMode = true
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
