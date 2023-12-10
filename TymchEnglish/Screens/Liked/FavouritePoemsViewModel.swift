//
//  FavouritePoemsViewModel.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 01.12.2023.
//

import SwiftUI

final class FavouritePoemsViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    
    
    func saveFavourites() {
        do {
            let favouritePoems = Favourites().items
            let encoder = JSONEncoder()
            let data = try encoder.encode(favouritePoems)
            UserDefaults.standard.setValue(data, forKey: "FavouritePoems")
        } catch {
            alertItem = AlertContext.invalidData
        }
        
    }
    
    func retreiveData() {
        guard let data = UserDefaults.standard.data(forKey: "FavouritePoems") else {
            return
        }
        do {
            let decoder = JSONDecoder()
            let favouritePoems = try decoder.decode(Favourites().items, from: data)
        } catch {
            alertItem = AlertContext.invalidData
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
//    @AppStorage("favourites") private var favouritesData: Data?
//    @Published var favourites = SavedFavouritesArray()
//    @Published var alertItem: AlertItem?
//    let defaults = UserDefaults.standard
    
//    func saveChanges () {
//        do {
//            let data = try JSONEncoder().encode(favourites)
//            favouritesData = data
//        } catch {
//            alertItem = AlertContext.invalidData
//        }
//    }
//    
//    func retrieveData() {
//        guard let favouritesData = favouritesData else {return}
//        
//        do {
//            favourites = try JSONDecoder().decode(SavedFavouritesArray.self, from: favouritesData)
//        } catch {
//            alertItem = AlertContext.invalidData
//        }
//    }
    
}
