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
    
    var body: some View {
        TabView {
            PoemsCategoriesListView()
                .tabItem {
                    Label("Poems", systemImage: "book.closed")
                }
            
            FavouritePoemListView()
                .tabItem {
                    Label("Liked", systemImage: "heart")
                }.badge(favourites.items.count)
            
            InformationView()
                .tabItem {
                    Label("Contacts", systemImage: "info.square.fill")
                }
        }.tint(.lightRasbery)
            .popover(isPresented: $showingPopover) {
                StartScreenVew(showingPopover: $showingPopover)
            }
    }
}

#Preview {
    TymchEnglishTabView()
}
