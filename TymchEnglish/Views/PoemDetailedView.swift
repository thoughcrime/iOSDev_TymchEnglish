//
//  PoemDetailedView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemDetailedView: View {
    var poem: Poem
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
						FavouritesHelper().processToFavouritePoems(poemToSave: poem)
                    }, label: {
						if FavouritesHelper().checkIfIsAlreadyFavourite(poemToSave: poem) {
                            IconToFavourite(imageName: "heart.fill")
                                .foregroundStyle(.lightRasbery)
                        } else {
                            IconToFavourite(imageName: "heart")
                        }
                    }).padding()
                }
                HStack {
                    Image(poem.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    Text(poem.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                }.padding()
                
                Text(poem.lyrics)
                    .font(.callout)
                    .fontWeight(.medium)
                    .padding(10)
                    .multilineTextAlignment(.center)
                
                HStack {
                    AudioPlayerView(audioFileName: poem.audioFileName)
                        .padding(.trailing, 40)
                    Link("Watch the video", destination: URL(string:poem.videoLink) ?? URL(fileURLWithPath: ""))
                }
            }
            Spacer()
        }
        .background(BackgroundView())
    }
}
#Preview {
    PoemDetailedView(poem: MockData.samplePoem)
}

struct IconToFavourite: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .imageScale(.large)
            .frame(width: 44, height: 44)
    }
}
