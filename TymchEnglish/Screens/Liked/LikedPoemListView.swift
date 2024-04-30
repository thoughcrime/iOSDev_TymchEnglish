//
//  FavouritePoemListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct LikedPoemListView: View {
    @EnvironmentObject var favourites: Favourites
    @ObservedObject private var audioPlayerManager = AudioPlayerManager.shared

    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(Array(favourites.items), id: \.self) { poem in
                        NavigationLink(destination: PoemDetailedView(poem: poem)) {
                            PoemCellView(title: poem.title, imageName: poem.imageName, isPlaying: Binding(get: {
                                audioPlayerManager.currentlyPlaying == poem.audioFileName
                            }, set: { _ in }))
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                audioPlayerManager.playAudio(fileName: poem.audioFileName)
                            } label: {
                                Label(audioPlayerManager.currentlyPlaying == poem.audioFileName ? "Stop" : "Play", systemImage: audioPlayerManager.currentlyPlaying == poem.audioFileName ? "stop.circle" : "play.circle")
                            }
                            .tint(audioPlayerManager.currentlyPlaying == poem.audioFileName ? .lightRasbery : .lightGreen)
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                audioPlayerManager.stopAudio()
                                favourites.process(poem)
                            } label: {
                                Label("Delete", systemImage: "trash")
                                    .tint(.red)
                            }
                        }
                    }
                }
                .listStyle(.insetGrouped)

                if favourites.items.isEmpty {
                    EmptyState()
                }
            }
            .navigationTitle("Favourite Poems")
            .navigationBarTitleDisplayMode(.inline)
            .scrollContentBackground(.hidden)
            .background(BackgroundView())
            .onDisappear() {
                audioPlayerManager.stopAudio()
            }
        }
    }
}

#Preview {
    LikedPoemListView().environmentObject(Favourites())
}
