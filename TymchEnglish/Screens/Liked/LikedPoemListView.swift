//
//  FavouritePoemListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct LikedPoemListView: View {
    @EnvironmentObject var favourites: Favourites
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @ObservedObject private var audioPlayerManager = AudioPlayerManager.shared
    @State private var showProfileSelection = false

    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    if let selectedProfile = profileViewModel.selectedProfile {
                        ForEach(favourites.getPoemIDs(for: selectedProfile), id: \.self) { poemID in
                            if let poem = Poems.shared.getPoem(by: poemID) {
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
                                        favourites.process(poem.id)
                                    } label: {
                                        Label("Delete", systemImage: "trash")
                                            .tint(.red)
                                    }
                                }
                            }
                        }
                    }
                }
                .listStyle(.insetGrouped)

                if let selectedProfile = profileViewModel.selectedProfile,
                   favourites.getPoemIDs(for: selectedProfile).isEmpty {
                    EmptyState()
                }
            }
            .navigationTitle("Favourite Poems")
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showProfileSelection.toggle()
                    }) {
                        Image(systemName: "person.crop.circle")
                    }
                }
            }
            .sheet(isPresented: $showProfileSelection) {
                ProfileSelectionView(viewModel: profileViewModel) { profile in
                                        profileViewModel.selectProfile(profile: profile)
                                        favourites.setCurrentProfile(profile)
                                    }
            }
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
        .environmentObject(ProfileViewModel())
}
