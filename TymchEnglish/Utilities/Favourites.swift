//
//  Favourites.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 01.12.2023.
//

import SwiftUI

final class Favourites: ObservableObject {
    
    @Published var items: [Poem] = []
    
    func add(_ poem: Poem) {
        items.append(poem)
    }
    
}

