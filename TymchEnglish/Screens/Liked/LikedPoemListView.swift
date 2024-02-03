//
//  FavouritePoemListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct LikedPoemListView: View {
    // for test purposes, as the environmental object crashes the preview
    //    @State private var favourites = MockData.self
    // After refactoring for MVVM
    //    @StateObject var viewModel = LikedPoemsViewModel()
    @EnvironmentObject var favourites: Favourites
    @State var somethingIsPlaying: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                List {
                    // When favourites.items == list
                    //                    ForEach(favourites.items) { poem in
                    // When favourites.items == set
                    ForEach(Array(favourites.items)) { poem in
                        NavigationLink {
                            // Navigates to detailed view of the poem
                            PoemDetailedView(poem: poem)
                        } label: {
                            PoemCellView(title: poem.title, imageName: poem.imageName, isPlaying: somethingIsPlaying)
                            // plays audio on right swipe
                                .swipeActions(edge:.leading) {
                                    AudioPlayerView(audioFileName: poem.audioFileName, isPlaying: $somethingIsPlaying.wrappedValue)
                                    .onChange(of: somethingIsPlaying) { state in
                                    print ("This is favourites state\(somethingIsPlaying)")
                                                                            }
                                }
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                favourites.process(poem)
                            } label: {
                                Label("Delete", systemImage: "trash")
                                    .tint(.red)
                            }
                        }
                    }
                }
                if favourites.items.isEmpty {
                    EmptyState()
                }
            }
            .navigationTitle("Favourite poems")
            .navigationBarTitleDisplayMode(.inline)
            .scrollContentBackground(.hidden)
            .background(BackgroundView())
            
        }
    }
}

#Preview {
    LikedPoemListView()
}
