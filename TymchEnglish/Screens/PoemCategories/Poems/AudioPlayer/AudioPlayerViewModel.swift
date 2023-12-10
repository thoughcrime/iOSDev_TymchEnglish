//
//  AudioPlayer.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 05.12.2023.
//

import AVFoundation

class AudioPlayerViewModel: ObservableObject {
    
    @Published var audioPlayer: AVAudioPlayer?
    @Published var isPlaying = false
    @Published var alertItem: AlertItem?
    @Published var audiofileInitialized: Bool?
    
    
    
    //    init() {
    //        if let sound = Bundle.main.path(forResource: audioFileName, ofType: nil) {
    //            do {
    //                self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
    //            } catch {
    //                alertItem = AlertContext.audioNotAvailable
    //            }
    //        } else {
    //            print("Audio file is not available")
    //        }
    //    }
    
    func initilizeAudioPlayer(audioFileName: String) {
        guard audiofileInitialized == nil else {return}
        if let sound = Bundle.main.path(forResource: audioFileName, ofType: nil) {
            do {
                self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
                audiofileInitialized = true
            } catch {
                alertItem = AlertContext.audioNotAvailable
            }
        } else {
            audiofileInitialized = false
        }
        
    }
    
    func playOrStop() {
        guard let player = audioPlayer else { return }
        
        if player.isPlaying {
            player.stop()
            isPlaying = false
        } else {
            player.currentTime = 0.0
            player.play()
            isPlaying = true
        }
    }
}
