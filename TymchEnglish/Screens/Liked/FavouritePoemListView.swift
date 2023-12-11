//
//  FavouritePoemListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct FavouritePoemListView: View {
    // for test purposes, as the environmental object crashes the preview
//    @State private var favourites = MockData.setOfSamplePoems
    // After refactoring for MVVM
//    @StateObject var viewModel = FavouritePoemsViewModel()
    @EnvironmentObject var favourites: Favourites
    
    var body: some View {
        NavigationStack{
            ZStack {
                List {
                    ForEach(favourites.items) { poem in
                        NavigationLink {
                            // Navigates to detailed view of the poem
                            PoemDetailedView(poem: poem)
                        } label: {
                            PoemCellView(title: poem.title, imageName: poem.imageName)
                            // plays audio on right swipe
                                .swipeActions(edge:.leading) {
                                    AudioPlayerView(audioFileName: poem.audioFileName)
                                }
                                .swipe
                        }
                    }
                    // deletes added poem (from a list) on the left swipe
                    .onDelete(perform: { indexSet in
                        favourites.items.remove(atOffsets: indexSet)
                    })
                }
                .navigationTitle("Favourite poems")
                .navigationBarTitleDisplayMode(.inline)
                .scrollContentBackground(.hidden)
                .background(BackgroundView())
                if favourites.items.isEmpty {
                    EmptyState()
                }
            }
        }
    }
}
#Preview {
    FavouritePoemListView()
}
