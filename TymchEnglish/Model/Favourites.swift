//
//  Favourites.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 01.12.2023.
//

import SwiftUI

//struct HelperFavourites {
//    
//    @State var items: Set<Int>
//    
//    func process (_ poem: Poem) {
//        guard !items.contains(poem.id) else {
//            items.remove(poem.id)
//            return
//        }
//        items.insert(poem.id)
//    }
//}


final class Favourites: ObservableObject {
    @AppStorage("favourites") private var storage: Data = Data()
    @Published private(set) var items: [UUID: [Int]] = [:]  // [ProfileID: [PoemID]]
    private var currentProfileID: UUID?

    init() {
        loadItems()
    }

    func setCurrentProfile(_ profile: Profile) {
        currentProfileID = profile.id
        if items[profile.id] == nil {
            items[profile.id] = []
        }
        saveItems()
    }

    func process(_ poemID: Int) {
        guard let profileID = currentProfileID else { return }

        var profilePoems = items[profileID] ?? []

        if profilePoems.contains(poemID) {
            profilePoems.removeAll { $0 == poemID }
        } else {
            profilePoems.append(poemID)
        }

        items[profileID] = profilePoems
        saveItems()
    }

    func getPoemIDs(for profile: Profile) -> [Int] {
        return items[profile.id] ?? []
    }

    private func loadItems() {
        guard let decoded = try? JSONDecoder().decode([UUID: [Int]].self, from: storage) else { return }
        items = decoded
    }

    private func saveItems() {
        guard let encoded = try? JSONEncoder().encode(items) else { return }
        storage = encoded
    }
}





