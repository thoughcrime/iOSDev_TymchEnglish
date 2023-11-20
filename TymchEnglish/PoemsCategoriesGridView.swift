//
//  PoemsCategoriesGridView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsCategoriesGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                
                BackgroundView()
                
                
                    LazyVGrid (columns: columns) {
                        ItemGridView()
                        ItemGridView()
                        ItemGridView()
                        ItemGridView()
                    }
                
            }.navigationTitle("Categories")
        }
    }
}

#Preview {
    PoemsCategoriesGridView()
}
