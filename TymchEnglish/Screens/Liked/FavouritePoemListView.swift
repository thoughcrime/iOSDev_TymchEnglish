//
//  FavouritePoemListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct FavouritePoemListView: View {
    
    @State private var favourites = MockData.setOfSamplePoems
//    @EnvironmentObject var favourites: Favourites
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundView()
                VStack {
                    List {
                        ForEach(favourites/*.items*/) { poem in
                            PoemCellView(title: poem.title, imageName: poem.imageName)
                        }.onDelete(perform: { indexSet in
                            favourites/*.items*/.remove(atOffsets: indexSet)
                        })
                    }
                    .navigationTitle("Favourite poems")
                    
                }.scrollContentBackground(.hidden)
                
                if favourites/*.items*/.isEmpty {
                    EmptyState()
                }
            }
        }
    }
}
#Preview {
    FavouritePoemListView()
}
