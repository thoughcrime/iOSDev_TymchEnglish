//
//  PoemCellView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import SwiftUI

struct PoemCellView: View {
    
    var title: String
    var imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(22)
            Text (title)
                .font(.headline)
                .foregroundStyle(.lightRasbery)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        
    }
}


#Preview {
    PoemCellView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName)
}
