//
//  CategoryCellView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct CategoryCellView: View {
    
    let category: PoemCategory
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 120)
            .foregroundStyle(.white)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:5, y:5)
            .overlay {
                RoundedRectangle(cornerRadius: 10).stroke(.pinkLilac, lineWidth: 2)
            }
            .overlay{
                HStack {
                    Image(category.categoryImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .cornerRadius(8)
                        .padding()
                    Spacer()
                    Text (category.title)
                        .font(.headline)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundStyle(.lightRasbery)
                        .multilineTextAlignment(.center)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                        .padding(.trailing, 10)
                }.padding()
            }.padding(.horizontal)
            .padding(.vertical, 10)
        
    }
}
#Preview {
    CategoryCellView( category: PoemCategories.sampleCategory)
}
