//
//  AudioPlayerManager.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.04.2024.
//

import Foundation
import AVFoundation

class AudioPlayerManager: NSObject, ObservableObject, AVAudioPlayerDelegate {
    static let shared = AudioPlayerManager()
    private var audioPlayer: AVAudioPlayer?
    
    @Published var currentlyPlaying: String?

    func playAudio(fileName: String) {
        DispatchQueue.main.async {
            self.handleAudioPlayback(fileName: fileName)
        }
    }

    private func handleAudioPlayback(fileName: String) {
        if currentlyPlaying == fileName {
            stopAudio()
            return
        }
        
        let fileURL = Bundle.main.url(forResource: fileName, withExtension: nil)
        if let url = fileURL {
            do {
                if let player = audioPlayer, player.url == url && player.prepareToPlay() {
                    player.play()
                } else {
                    try initializeAndPlay(url: url)
                }
            } catch {
                self.reportError(error)
            }
        } else {
            self.reportError("File not found: \(fileName)")
        }
    }

    private func initializeAndPlay(url: URL) throws {
        stopAudio() // Ensure any previous audio is stopped
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.delegate = self
        audioPlayer?.play()
        currentlyPlaying = url.lastPathComponent
    }

    func stopAudio() {
        if let player = audioPlayer, player.isPlaying {
            player.stop()
        }
        audioPlayer = nil
        currentlyPlaying = nil
    }

    private func reportError(_ error: Error) {
        print("Audio Player Error: \(error.localizedDescription)")
        // Implement further error handling logic here. Could be logging or user notification.
    }

    private func reportError(_ message: String) {
        print("Audio Player Error: \(message)")
        // Implement further error handling logic here. Could be logging or user notification.
    }

    // MARK: - AVAudioPlayerDelegate Methods
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag {
            DispatchQueue.main.async {
                self.currentlyPlaying = nil
            }
        }
    }
}
