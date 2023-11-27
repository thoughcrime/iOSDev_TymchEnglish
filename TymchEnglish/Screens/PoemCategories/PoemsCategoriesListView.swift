//
//  PoemsCategoriesListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsCategoriesListView: View {
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                BackgroundView()
                ScrollView{
                    LazyVGrid (columns: [GridItem(.flexible())]) {
                        ForEach (PoemCategories.categories, id:\.id) {category in NavigationLink(value:category) {
                            CategoryCellView(category: category)
                        }
                        }
                    }
                }
            }.navigationTitle("Categories")
                .navigationDestination(for: PoemCategory.self) {category in
                    PoemsListVIew(category: category)
                }
            
        }.scrollContentBackground(.hidden)
    }
}

#Preview {
    PoemsCategoriesListView()
}
