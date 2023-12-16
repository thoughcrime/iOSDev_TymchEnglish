//
//  Favourites.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 01.12.2023.
//

import SwiftUI

final class Favourites: ObservableObject {
//Set allows to iterate faster
    @AppStorage("favourites") var items: Set<Poem> = []
//    @AppStorage("favourites") var items: [Poem] = []
    
//        func process(_ poem: Poem) {
//        //func for list
//            guard !items.contains(poem) else {
//                items.removeAll(where: {$0 == poem})
//                return
//            }
//            items.append(poem)
    
    func process(_ poem: Poem) {
    //func for set
        guard !items.contains(poem) else {
            items.remove(poem)
            return
        }
        items.insert(poem)
        }
   
}




