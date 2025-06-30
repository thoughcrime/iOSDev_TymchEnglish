//
//  AudioPlayer.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 05.12.2023.
//

import AVFoundation
import SwiftUI

class AudioPlayerViewModel: ObservableObject {
    @Published var isPlaying = false
    @Published var audiofileInitialized: Bool?

    
    func playOrStop(audioFileName: String) {
        if AudioPlayerManager.shared.currentlyPlaying == audioFileName {
            AudioPlayerManager.shared.stopAudio()
            isPlaying = false
        } else {
            AudioPlayerManager.shared.playAudio(fileName: audioFileName)
            isPlaying = true
        }
    }
}
