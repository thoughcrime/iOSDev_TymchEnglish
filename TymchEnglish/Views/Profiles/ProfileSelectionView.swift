//
//  ProfileSelectionView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 20.05.2024.
//

import SwiftUI

struct ProfileSelectionView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @State private var newProfileName: String = ""
    var onProfileSelected: (Profile) -> Void
    private let maxProfileNameLength = 30
    @State private var showDuplicateAlert = false
    @ObservedObject private var audioPlayerManager = AudioPlayerManager.shared
    
    var body: some View {
        VStack {
            Text("Select Profile")
                .font(.largeTitle)
                .padding()
            
            List {
                // Display the Guest profile first, it cannot be deleted
                if let guestProfile = viewModel.profiles.first(where: { $0.name == "Guest" }) {
                                    Button(action: {
                                        viewModel.selectProfile(profile: guestProfile)
                                        onProfileSelected(guestProfile)
                                    }) {
                                        ProfileCellView(viewModel: viewModel, profile: guestProfile)
                                    }
                                }
                
                // Display other profiles, excluding the Guest profile
                ForEach(viewModel.profiles.filter { $0.name != "Guest" }) { profile in
                    Button(action: {
                        viewModel.selectProfile(profile: profile)
                        onProfileSelected(profile)
                    }) {
                        ProfileCellView(viewModel: viewModel, profile: profile)
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            viewModel.deleteProfile(profile: profile)
                            // Makes sure that when chosen profile deleted, Guest profile will be selected respectevely
                            guard let isProfileSelected = viewModel.selectedProfile else {viewModel.selectedProfile = viewModel.profiles.first; return}
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }
            .scrollContentBackground(.hidden)
            
            HStack {
                TextField("New Profile Name", text: $newProfileName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: newProfileName) { newValue in
                        if newValue.count > maxProfileNameLength {
                            newProfileName = String(newValue.prefix(maxProfileNameLength))
                        }
                    }
                Button("Add") {
                    if viewModel.profiles.contains(where: { $0.name == newProfileName }) {
                        showDuplicateAlert = true
                    } else {
                        viewModel.addProfile(name: newProfileName)
                        newProfileName = ""
                    }
                }
                .disabled(newProfileName.isEmpty)
            }
            .padding()
            .alert("Duplicated Profile", isPresented: $showDuplicateAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("A profile with this name already exists.")
            }
            
        }
        .background(BackgroundView())
        .onAppear {
            viewModel.loadProfiles()
            audioPlayerManager.stopAudio()
        }
    }
}

#Preview {
    ProfileSelectionView(viewModel: ProfileViewModel()) { profile in
        // Sample closure for preview
        print("Selected profile: \(profile.name)")
    }
}

struct ProfileCellView: View {
    @ObservedObject var viewModel: ProfileViewModel
    var profile: Profile
    
    var body: some View {
        HStack {
            Text(profile.name)
                .foregroundStyle(.lightRasbery)
                .frame(maxWidth: .infinity, alignment: .leading)
            if viewModel.selectedProfile == profile {
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(.lightRasbery)
            }
        }
        .padding()
    }
}
