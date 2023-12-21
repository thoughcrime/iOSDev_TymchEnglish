//
//  Favourites.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 01.12.2023.
//

import SwiftUI

struct FavouritesHelper {
	 private var favourites: Array<Int> {
		get {
			if let myArray = UserDefaults.standard.array(forKey: "otherfavourites") as? Array<Int> {
				return myArray
			} else {
				return [Int]()
			}
		}
	}
	
	func fetchFavouritePoems() -> [Poem] {
		var tempFavourites = [Poem]()
		for poem in Poems.poems {
			if favourites.contains(poem.id) {
				tempFavourites.append(poem)
			}
		}
		return tempFavourites
	}

	func processToFavouritePoems(poemToSave: Poem) {
		var newFavourites = favourites
		guard !checkIfIsAlreadyFavourite(poemToSave: poemToSave) else {
			newFavourites.removeAll(where: { $0 == poemToSave.id })
			return
		}
		newFavourites.append(poemToSave.id)
		UserDefaults.standard.set(newFavourites, forKey: "otherfavourites")
		return
	}

	func checkIfIsAlreadyFavourite(poemToSave: Poem) -> Bool {
		if favourites.contains(poemToSave.id) {
			return true
		} else {
			return false
		}
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




