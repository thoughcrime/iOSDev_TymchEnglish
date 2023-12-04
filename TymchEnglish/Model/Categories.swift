//
//  Categories.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import Foundation

struct PoemCategory: Hashable, Identifiable, Codable {
    
    var id = UUID()
    var category: categories
    var title: String
    var categoryImage: String
    
    
    enum categories: Codable {
        case animals
        case dailyRoutines
        case actions
        case bodyParts
        case colors
        case emotions
        case themed
        case lullabye
        case parachute
        case transportation
        case seasons
    }
    
}

struct PoemCategories: Hashable {
    
    static let sampleCategory = PoemCategory(category: .animals, title: "Poems and songs about animals and insects", categoryImage: "imagePlaceholder")
    
    static let categories = [
        PoemCategory(category: .animals, title: "Poems and songs about animals and insects", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .actions, title: "Action songs and rhymes", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .bodyParts, title: "Poems and songs about body parts", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .dailyRoutines, title: "Poems and songs about daily routines", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .colors, title: "Poems and songs about colors", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .emotions, title: "Poems and songs about emotions", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .themed, title: "Themed songs and poems", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .lullabye, title: "Lullabyes", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .parachute, title: "Parachute and scarf songs and rhymes", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .transportation, title: "Poems and songs about transportation", categoryImage: "imagePlaceholder"),
        PoemCategory(category: .seasons, title: "Poems and songs about seasongs", categoryImage: "imagePlaceholder")
    ]
}


