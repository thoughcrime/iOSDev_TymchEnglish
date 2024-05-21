//
//  TymchEnglishApp.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 09.10.2023.
//

import SwiftUI

@main
struct TymchEnglishApp: App {
    
    @StateObject private var profileViewModel = ProfileViewModel()
    @StateObject private var favourites = Favourites()
    
    var body: some Scene {
        WindowGroup {
            TymchEnglishTabView()
                .environmentObject(favourites)
                .environmentObject(profileViewModel)
        }
    }
}
