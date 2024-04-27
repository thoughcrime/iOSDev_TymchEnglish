//
//  PoemsCategoriesListView.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 18.11.2023.
//

import SwiftUI

struct PoemsCategoriesListView: View {
    @State private var classificationType: ClassificationType = .thematic
    @State private var showingSearchView = false
    
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
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                showingSearchView.toggle()
                            }) {
                                Image(systemName: "magnifyingglass")
                            }
                        }
                    }
                    .sheet(isPresented: $showingSearchView) {
                        PoemsSearchView()
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
    PoemsCategoriesListView()
}

enum ClassificationType: String, CaseIterable {
    case thematic = "By theme"
    case functional = "By function"
}
