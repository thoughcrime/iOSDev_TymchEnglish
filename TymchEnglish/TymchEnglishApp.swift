import SwiftUI

@main
struct TymchEnglishApp: App {
    
    @StateObject private var profileViewModel = ProfileViewModel()
    @StateObject private var favourites = Favourites()
    
    var body: some Scene {
        WindowGroup {
            TymchEnglishTabView()
                .environmentObject(favourites)
                .environmentObject(profileViewModel)
        }
    }
}
