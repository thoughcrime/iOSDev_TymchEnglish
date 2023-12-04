//
//  PoemDetailedView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemDetailedView: View {
    
    @EnvironmentObject var favourites: Favourites
    
    var poem: Poem
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        if poem.isSaved == false {
                            favourites.add(poem)
                        }
                    }, label: {
                        Image(systemName: "heart")
                            .foregroundStyle(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
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
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "play.circle")
                            .resizable()
                            .frame(width:44, height: 44)
                            .padding(.trailing, 50)
                    })
                    // Forced unwrapping is only for development purpose, will not be in the final version
                    Link("Watch the video", destination: URL(string:poem.videoLink)!)
                }
                Spacer()
            }
        }
    }
}
#Preview {
    PoemDetailedView(poem: MockData.samplePoem)
}
