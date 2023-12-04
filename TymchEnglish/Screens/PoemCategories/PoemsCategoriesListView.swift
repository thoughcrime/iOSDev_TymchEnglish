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
                        ForEach (PoemCategories.categories) {category in
                            NavigationLink {
                                PoemsListVIew(category: category)
                            } label: {
                                CategoryCellView(category: category)
                            }
                        }
                    }
                }.navigationTitle("Categories")
                
            }
            
        }.scrollContentBackground(.hidden)
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    PoemsCategoriesListView()
}
