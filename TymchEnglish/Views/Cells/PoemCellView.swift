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
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(22)
            ZStack(alignment: .leading) {
                Text (title)
                    .font(.headline)
                    .foregroundStyle(.lightRasbery)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                if isPlaying {
                    PlayingAnimation()
                }
            }
        }
    }
}


#Preview {
    PoemCellView(title: MockData.samplePoem.title, imageName: MockData.samplePoem.imageName, isPlaying: .constant(true))
}



struct PlayingAnimation: View {
    var body: some View {
        VStack (alignment: .trailing){
            HStack {
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .padding(2)
                    .foregroundStyle(.secondary)
                Text ("Is playing")
                    .foregroundStyle(.secondary)
            }
            .frame(width: 120, height: 25)
            .background(.hummingBird)
            .clipShape(.capsule)
            Spacer()
        }
    }
}
