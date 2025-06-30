//
//  PoemsGridView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsListView: View {
    
    var category: PoemCategory
    
    var body: some View {
        
        NavigationStack {
            List (Poems.shared.loadAllPoems()) {poem in
                if poem.themeCategory == category.themeCategory {
                    NavigationLink {
                        PoemDetailedView(poem: poem)
                    } label: {
                        PoemCellView(title: poem.title, imageName: poem.imageName, isPlaying: .constant(false))
                    }
                }
                else if poem.functionalCategory == category.functionalCategory {
                    NavigationLink {
                        PoemDetailedView(poem: poem)
                    } label: {
                        PoemCellView(title: poem.title, imageName: poem.imageName, isPlaying: .constant(false))
                    }
                }
    
            }.listStyle(.automatic)
                .navigationTitle(category.title)
                .navigationBarTitleDisplayMode(.inline)
                .background(BackgroundView())
                .scrollContentBackground(.hidden)
        }
    }
    
    
}
            

#Preview {
    PoemsListView(category: PoemCategories.categories.first!)
}


