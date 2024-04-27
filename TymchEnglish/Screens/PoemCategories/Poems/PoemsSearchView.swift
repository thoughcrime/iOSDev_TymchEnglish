//
//  PoemsSearchView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 27.04.2024.
//

import SwiftUI

struct PoemsSearchView: View {
    @State private var searchText = ""
    @State private var allPoems: [Poem] = loadAllPoems() // This function should load all poems, not too relevant when local

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search poems...", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                List {
                    ForEach(searchResults, id: \.id) { poem in
                        NavigationLink {
                            PoemDetailedView(poem: poem)
                        } label: {
                            VStack(alignment: .leading) {
                                Text(poem.title).font(.headline)
                                Text(poem.lyrics).font(.subheadline)
                                    .lineLimit(1)
                            }
                        }
                    }
                }
                .navigationTitle("Search Poems")
            }
            .background(BackgroundView())
        }
    }

    var searchResults: [Poem] {
        if searchText.isEmpty {
            return allPoems
        } else {
            return allPoems.filter { poem in
                poem.title.lowercased().contains(searchText.lowercased()) ||
                poem.lyrics.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

func loadAllPoems() -> [Poem] {
    // Load poems data here
    return Poems.poems
}

#Preview {
    PoemsSearchView()
}
