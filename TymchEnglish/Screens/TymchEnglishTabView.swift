//
//  TymchEnglishTabView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct TymchEnglishTabView: View {
    
    @State private var showingPopover = true
    @EnvironmentObject var favourites: Favourites
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
    var body: some View {
        TabView {
            PoemsCategoriesListView()
                .tabItem {
                    Label("Poems", systemImage: "book.closed")
                }
            
            LikedPoemListView()
                .tabItem {
                    Label("Liked", systemImage: "heart")
                }.badge(favourites.getPoemIDs(for: profileViewModel.selectedProfile ?? Profile(id: UUID(), name: "Guest")).count)
            
            InformationView()
                .tabItem {
                    Label("Contacts", systemImage: "info.square.fill")
                }
        }.tint(.lightRasbery)
            .popover(isPresented: $showingPopover) {
                StartScreenView(showingPopover: $showingPopover)
            }
    }
}

#Preview {
    TymchEnglishTabView().environmentObject(Favourites()).environmentObject(ProfileViewModel())
}
