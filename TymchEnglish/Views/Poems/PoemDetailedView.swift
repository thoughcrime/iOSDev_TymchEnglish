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
    @StateObject private var audioPlayerViewModel = AudioPlayerViewModel()  // Using a local state object to preserve the state.
    @State private var showVideoPlayer = false
    @State private var showAlert = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(poem.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .mask(
                            RadialGradient(gradient: Gradient(colors: [.black, .clear]), center: .center, startRadius:90, endRadius: 100)
                                    )
                        .padding(.leading, 5)
                    Spacer()
                    Text(poem.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.trailing, 5)
                }.padding()
                
                Text(poem.lyrics)
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(10)
                    .multilineTextAlignment(.center)
                
                HStack {
                    AudioPlayerView(audioPlayerViewModel: audioPlayerViewModel, audioFileName: poem.audioFileName)
                        .padding(.trailing, 40)
                        .tint(.lightRasbery)
                    Button {
                        if poem.videoLink == "none" {
                         showAlert = true
                        } else {
                            showVideoPlayer = true
                        }
                    } label: { 
                        if poem.videoLink == "none" {
                            AppButton(text: "Video Unavailable", width: 200)
                        } else {
                            AppButton(text: "Watch Video", width: 200)
                        }
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Resource Not Found"), message: Text("The video link is not available."), dismissButton: .default(Text("OK")))
                    }
                    .sheet(isPresented: $showVideoPlayer) {
                        VideoPlayerView(videoID:poem.videoLink, isPresented: $showVideoPlayer)
                    }
                }
            }
        }
        .background(BackgroundView())
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    favourites.process(poem)
                }, label: {
                    if favourites.items.contains(poem) {
                        IconToFavourite(imageName: "heart.fill")
                            .foregroundStyle(.lightRasbery)
                    } else {
                        IconToFavourite(imageName: "heart")
                    }
                })
            }
        }
        .navigationTitle(poem.title)  // Optional: Set navigation title if needed
        .navigationBarTitleDisplayMode(.inline)  // Makes the title inline with navigation items
    }
}
#Preview {
    PoemDetailedView(poem: MockData.samplePoem).environmentObject(Favourites())
}

struct IconToFavourite: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .imageScale(.large)
            .frame(width: 44, height: 44)
    }
}
