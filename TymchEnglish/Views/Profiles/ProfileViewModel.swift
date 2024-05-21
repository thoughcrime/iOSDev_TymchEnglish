//
//  ProfileViewModel.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 20.05.2024.
//
import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profiles: [Profile] = []
    @Published var selectedProfile: Profile?
    

    private let selectedProfileKey = "selectedProfileKey"

    init() {
        loadProfiles()
        loadSelectedProfile()
        ensureGuestProfileExists()
    }

    func loadProfiles() {
        // Load profiles from persistence (UserDefaults for simplicity)
        if let data = UserDefaults.standard.data(forKey: "profiles") {
            if let decodedProfiles = try? JSONDecoder().decode([Profile].self, from: data) {
                profiles = decodedProfiles
            }
        }
        ensureGuestProfileExists()
    }

    func saveProfiles() {
        if let encodedProfiles = try? JSONEncoder().encode(profiles) {
            UserDefaults.standard.set(encodedProfiles, forKey: "profiles")
        }
    }

    func addProfile(name: String) {
        let newProfile = Profile(id: UUID(), name: name)
        profiles.append(newProfile)
        saveProfiles()
    }

    func selectProfile(profile: Profile) {
        selectedProfile = profile
        saveSelectedProfile()
    }

    func deleteProfile(profile: Profile) {
        profiles.removeAll { $0.id == profile.id }
        saveProfiles()
        if selectedProfile?.id == profile.id {
            selectedProfile = profiles.first
        }
        saveSelectedProfile()
    }

    private func ensureGuestProfileExists() {
        if !profiles.contains(where: { $0.name == "Guest" }) {
            let guestProfile = Profile(id: UUID(), name: "Guest")
            profiles.insert(guestProfile, at: 0)
            saveProfiles()
        }
    }

    private func saveSelectedProfile() {
        if let selectedProfile = selectedProfile {
            UserDefaults.standard.set(selectedProfile.id.uuidString, forKey: selectedProfileKey)
        }
    }

    private func loadSelectedProfile() {
        if let selectedProfileIdString = UserDefaults.standard.string(forKey: selectedProfileKey),
           let selectedProfileId = UUID(uuidString: selectedProfileIdString),
           let profile = profiles.first(where: { $0.id == selectedProfileId }) {
            selectedProfile = profile
        } else {
            selectedProfile = profiles.first(where: { $0.name == "Guest" })
        }
    }
}
