//
//  Favourites.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 01.12.2023.
//

import SwiftUI

struct HelperFavourites {
    
    @State var items: Set<Int>
    
    func process (_ poem: Poem) {
        guard !items.contains(poem.id) else {
            items.remove(poem.id)
            return
        }
        items.insert(poem.id)
    }
}


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




