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
            
            List{
                Section {
                    PoemCellView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                    PoemCellView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                }header: {
                    Text("Section 1").font(.headline).foregroundStyle(.lightRasbery)
                }
                
                Section {
                    PoemCellView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                    PoemCellView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                }header: {
                    Text ("Section 2").font(.headline).foregroundStyle(.lightRasbery)
                }
            }.listStyle(.automatic)
                .navigationTitle(category.title)
            .navigationBarTitleDisplayMode(.inline)
            .background(BackgroundView())
            .navigationDestination(for: PoemCategory.self) {_ in
                PoemDetailedView(poem: MockData.samplePoem)
            }
        }.scrollContentBackground(.hidden)
    }
    
}

#Preview {
    PoemsListVIew(category: PoemCategories.categories.first!)
}


