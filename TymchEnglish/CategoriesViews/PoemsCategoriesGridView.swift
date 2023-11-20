//
//  PoemsCategoriesGridView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsCategoriesGridView: View {
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                
                BackgroundView()
                ScrollView {
                    LazyVGrid (columns: [GridItem(.flexible())]) {
                        ForEach (PoemCategories.categories, id:\.id) {category in NavigationLink(value:category) {
                            CategoryTitleView(category: category)
                        }
                        }
                    }
                }
            }.navigationTitle("Categories")
        }
    }
}

#Preview {
    PoemsCategoriesGridView()
}
