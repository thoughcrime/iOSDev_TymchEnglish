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
            
            ZStack{
                
                BackgroundView()
                
                ScrollView {
                    LazyVGrid (columns: columns) {
                        PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                        PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                        PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                        PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
                    }
                }
            }.navigationTitle(PoemCategories.sampleCategory.title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    PoemsGridVIew(categoryTytle: "Poems about animals")
}


