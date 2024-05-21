//
//  StartScreenView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct StartScreenView: View {
    @Binding var showingPopover: Bool
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @EnvironmentObject var favourites: Favourites
    @State private var showProfileSelection = false
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                LogoView(logoRadius: 200)
                
                Text("TymchEnglish©")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.lightRasbery)
                    .padding(.top, 20)
                
                Text("English poems, rhymes and songs for kids")
                    .padding(.top)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.lightRasbery)
                Spacer()
                
                Text("Profile: \(profileViewModel.selectedProfile?.name ?? "Guest")")
                    .font(.headline)
                    .foregroundStyle(.lightRasbery)
                    .padding()
                
                Button(action: {
                    showProfileSelection = true
                }) {
                    AppButton(text: "Select Profile")
                }
                .sheet(isPresented: $showProfileSelection) {
                    ProfileSelectionView(viewModel: profileViewModel) { profile in
                        profileViewModel.selectProfile(profile: profile)
                        favourites.setCurrentProfile(profile)
                    }
                    .environmentObject(favourites)
                }
                
                Spacer()
                
                Button {
                    showingPopover = false
                } label: {
                    AppButton(text: "Start")
                }
                Spacer()
            }
        }
        .onAppear {
            if profileViewModel.selectedProfile == nil {
                profileViewModel.selectProfile(profile: profileViewModel.profiles.first(where: { $0.name == "Guest" })!)
            }
            if let selectedProfile = profileViewModel.selectedProfile {
                favourites.setCurrentProfile(selectedProfile)
            }
        }
    }
}

#Preview {
    StartScreenView(showingPopover: .constant(true)).environmentObject(ProfileViewModel()).environmentObject(Favourites())

}


struct LogoView: View {
    
    var logoRadius: Double
    
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: logoRadius, height: logoRadius)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:5, y:5)
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .padding(.top, 100)
           
    }
}


