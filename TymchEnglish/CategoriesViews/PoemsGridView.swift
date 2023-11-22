//
//  PoemsGridView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsGridVIew: View {
    
    var categoryTytle:String
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack {
            
            List{
                Section {
                    PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                    PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                }header: {
                    Text("Section 1").font(.headline).foregroundStyle(.lightRasbery)
                }
                
                Section {
                    PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                    PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                }header: {
                    Text ("Section 2").font(.headline).foregroundStyle(.lightRasbery)
                }
            }.listStyle(.automatic)
                .navigationTitle(PoemCategories.sampleCategory.title)
            .navigationBarTitleDisplayMode(.inline)
            .background(BackgroundView())
        }.scrollContentBackground(.hidden)
    }
    
}

#Preview {
    PoemsGridVIew(categoryTytle: "Poems about animals")
}


