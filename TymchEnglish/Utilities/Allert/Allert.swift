//
//  Allert.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 04.12.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    static let invalidData      = AlertItem(title: Text("Saved Poems Error"),
                                            message: Text("There was an error saving or retrieving your poems."),
                                            dismissButton: .default(Text("OK")))
    
    static let audioNotAvailable      = AlertItem(title: Text("Audio Not Available"),
                                            message: Text("The audio file for the poem you are trying to access is not available."),
                                            dismissButton: .default(Text("OK")))
    
}
