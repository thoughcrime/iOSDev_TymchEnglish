//
//  TymchEnglishTabView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct TymchEnglishTabView: View {
    var body: some View {
        TabView {
            PoemsCategoriesListView()
                .tabItem {
                    Image (systemName: "book.closed")
                    Text("Poems")
                }
            
            FavouritePoemListView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Liked")
                }
            
            InformationView()
                .tabItem {
                    Image (systemName: "info.square.fill")
                    Text("Info")
                }
        }.tint(.lightRasbery)
    }
}

#Preview {
    TymchEnglishTabView()
}
