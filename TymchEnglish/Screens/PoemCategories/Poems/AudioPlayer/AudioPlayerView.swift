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
    
    var body: some View {
        VStack {
            Button {
                audioPlayerViewModel.playOrStop()
            } label: {
                if audioPlayerViewModel.audiofileInitialized ?? true {
                    Image(systemName: audioPlayerViewModel.isPlaying ? "stop.circle" : "play.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                } else {
                    Image(systemName: "x.circle")
                        .resizable()
                        .foregroundStyle(.gray)
                        .frame(width: 64, height: 64)
                    
                }
            }
        }.onAppear {
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
    AudioPlayerView(audioFileName: MockData.samplePoem.audioFileName)
}
