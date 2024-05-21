//
//  PoemsCategoriesListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsCategoriesListView: View {
    @State private var classificationType: ClassificationType = .thematic
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @EnvironmentObject var favourites: Favourites
    @State private var showingSearchView = false
    @State private var showProfileSelection = false
    
    
    var body: some View {
        
        NavigationStack {
                ZStack{
                    BackgroundView()
                    VStack{
                        Picker("Classification Type", selection: $classificationType) {
                                            ForEach(ClassificationType.allCases, id: \.self) { type in
                                                Text(type.rawValue).tag(type)
                                            }
                                        }
                                        .pickerStyle(SegmentedPickerStyle())
                                        .padding()
                    ScrollView{
                        LazyVGrid (columns: [GridItem(.flexible())]) {
                            ForEach (filteredCategories, id: \.id) {category in
                                NavigationLink {
                                    PoemsListVIew(category: category)
                                } label: {
                                    CategoryCellView(category: category)
                                }
                            }
                        }
                    }
                }
                    .navigationTitle("Categories:")
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                                showingSearchView.toggle()
                            }) {
                                Image(systemName: "magnifyingglass")
                            }
                        }
                        ToolbarItem(placement: .topBarLeading) {
                            Button(action: {
                                showProfileSelection.toggle()
                            }) {
                                Image(systemName: "person.crop.circle")
                            }
                        }
                    }
                    .sheet(isPresented: $showingSearchView) {
                        PoemsSearchView()
                    }
                    .sheet(isPresented: $showProfileSelection) {
                        ProfileSelectionView(viewModel: profileViewModel) { profile in
                                                profileViewModel.selectProfile(profile: profile)
                                                favourites.setCurrentProfile(profile)
                                            }
                    }
            }.scrollContentBackground(.hidden)
                .navigationBarBackButtonHidden()
                

        }
    }
    var filteredCategories: [PoemCategory] {
        switch classificationType {
        case .thematic:
            return PoemCategories.categories.filter { category in
                [.none].contains(category.functionalCategory)
            }
        case .functional:
            return PoemCategories.categories.filter { category in
                [.none].contains(category.themeCategory)
            }
        }
    }
}

#Preview {
    PoemsCategoriesListView().environmentObject(Favourites()).environmentObject(ProfileViewModel())
}

enum ClassificationType: String, CaseIterable {
    case thematic = "By theme"
    case functional = "By function"
}
