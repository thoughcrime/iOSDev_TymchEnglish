//
//  AudioPlayerView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 05.12.2023.
//

import SwiftUI

struct AudioPlayerView: View {
    @StateObject var audioPlayerViewModel = AudioPlayerViewModel()
    var audioFileName: String
    @State var isPlaying: Bool = false
    
    var body: some View {
        Button {
            audioPlayerViewModel.playOrStop()
            isPlaying = audioPlayerViewModel.isPlaying
//            print("This is state of a view \(isPlaying)")
        } label: {
            if audioPlayerViewModel.audiofileInitialized ?? true {
                VStack {
                    Image(systemName: audioPlayerViewModel.isPlaying ? "stop.circle" : "play.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                    Text(audioPlayerViewModel.isPlaying ? "Stop" : "Play")
                }
            } else {
                Image(systemName: "x.circle")
                    .resizable()
                    .foregroundStyle(.gray)
                    .frame(width: 64, height: 64)
                
            }
        }
        
        .onAppear {
            audioPlayerViewModel.initilizeAudioPlayer(audioFileName: audioFileName)
        }
        .onDisappear{
            if audioPlayerViewModel.isPlaying {
                audioPlayerViewModel.playOrStop()
            }
        }
    }
}

#Preview {
    VStack{
        AudioPlayerView(audioFileName: MockData.samplePoem.audioFileName)
        AudioPlayerView(audioFileName: MockData.samplePoem.audioFileName)
        AudioPlayerView(audioFileName: MockData.samplePoem.audioFileName)
    }
}


