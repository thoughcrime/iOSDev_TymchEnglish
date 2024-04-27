//
//  PoemsGridView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsListVIew: View {
    
    var category: PoemCategory
    
    var body: some View {
        
        NavigationStack {
            List (Poems.poems) {poem in
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
        //                Section {
        //                }header: {
        //                    Text ("Section 2").font(.headline).foregroundStyle(.lightRasbery)
        //                }
    }
    
    
}
            

#Preview {
    PoemsListVIew(category: PoemCategories.categories.first!)
}


