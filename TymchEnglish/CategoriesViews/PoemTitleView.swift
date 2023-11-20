//
//  PoemTitleView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct PoemTitleView: View {
    
    var title: String
    var imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 120)
            .foregroundStyle(.white)
            .overlay {
                RoundedRectangle(cornerRadius: 10).stroke(.pinkLilac, lineWidth: 2)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .overlay{
                HStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .cornerRadius(8)
                        .padding()
                    Text (title)
                        .font(.headline)
                        .foregroundStyle(.lightRasbery)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                }.padding()
            }
    }
}


#Preview {
    PoemTitleView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
}
