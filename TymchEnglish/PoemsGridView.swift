//
//  PoemsGridView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsGridVIew: View {
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                
                BackgroundView()
                
                ScrollView {
                    LazyVGrid (columns: columns) {
                        ItemGridView()
                        ItemGridView()
                        ItemGridView()
                        ItemGridView()
                    }
                }
            }.navigationTitle("Poems about animals")
        }
    }
}

#Preview {
    PoemsGridVIew()
}

struct ItemGridView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 120)
            .foregroundStyle(.white)
            .overlay {
                RoundedRectangle(cornerRadius: 10).stroke(.pinkLilac, lineWidth: 2)
            }
            .padding()
            .overlay{
                HStack {
                    Image("imagePlaceholder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .cornerRadius(8)
                        .padding()
                    Text ("Baa-Baa Black Sheep")
                        .font(.headline)
                        .foregroundStyle(.lightRasbery)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                }.padding()
            }
    }
}

