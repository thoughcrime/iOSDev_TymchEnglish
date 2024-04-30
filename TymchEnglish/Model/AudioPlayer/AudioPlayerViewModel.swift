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
    @Published var alertItem: AlertItem?
    @Published var audiofileInitialized: Bool?

    func initializeAudioPlayer(audioFileName: String) {
        guard audiofileInitialized == nil else { return }
        if Bundle.main.url(forResource: audioFileName, withExtension: nil) != nil {
            audiofileInitialized = true
        } else {
            audiofileInitialized = false
            alertItem = AlertContext.audioNotAvailable
        }
    }
    
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
