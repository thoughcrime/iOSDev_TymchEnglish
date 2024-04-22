//
//  AudioPlayerView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 05.12.2023.
//

import SwiftUI

struct AudioPlayerView: View {
    @ObservedObject var audioPlayerViewModel = AudioPlayerViewModel()
    var audioFileName: String

    var body: some View {
        Button(action: {
            audioPlayerViewModel.playOrStop(audioFileName: audioFileName)
        }) {
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
            audioPlayerViewModel.initializeAudioPlayer(audioFileName: audioFileName)
        }
        .onDisappear {
            // Automatically stop the audio when the view disappears
            if audioPlayerViewModel.isPlaying {
                audioPlayerViewModel.playOrStop(audioFileName: audioFileName)
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


