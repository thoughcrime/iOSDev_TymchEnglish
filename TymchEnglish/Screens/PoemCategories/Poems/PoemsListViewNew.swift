//
//  PoemsListViewNew.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 27.11.2023.
//

import SwiftUI

struct PoemsListViewNew: View {
    
    var poem: Poem
    
    var body: some View {
        
        NavigationStack {
            
            List{
                Text("Apple")
                Text("Apple")
                Text("Apple")
                Text("Apple")
                Text("Apple")
                Text("Apple")
                PoemCellView(title: poem.title, imageName: poem.imageName)
                PoemCellView(title: poem.title, imageName: poem.imageName)
                PoemCellView(title: poem.title, imageName: poem.imageName)
                PoemCellView(title: poem.title, imageName: poem.imageName)
                
            }.listStyle(.plain)
        }.navigationDestination(for: PoemCellView.self) {_ in 
            PoemDetailedView(poem:MockData.samplePoem)
        }
    }
}

#Preview {
    PoemsListViewNew(poem: MockData.samplePoem)
}
