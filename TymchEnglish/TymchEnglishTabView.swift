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
            PoemsCategoriesGridView()
                .tabItem {
                    Image (systemName: "book.closed")
                }
            
            FavouritePoemListView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            InformationView()
                .tabItem {
                    Image (systemName: "info.square.fill")
                }
        }.tint(.lightRasbery)
    }
}

#Preview {
    TymchEnglishTabView()
}
