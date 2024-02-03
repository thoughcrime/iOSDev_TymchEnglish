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
    
    enum subCategories: Codable {
        case counting
    }
    
}

struct PoemCategories: Hashable {
    
    static let sampleCategory = PoemCategory(category: .animals, title: "Poems and songs about animals and insects", categoryImage: "imagePlaceholder")
    
    static let categories = [
        PoemCategory(category: .animals, title: "Poems and songs about animals and insects", categoryImage: "animals"),
        PoemCategory(category: .actions, title: "Action songs and rhymes", categoryImage: "action"),
        PoemCategory(category: .bodyParts, title: "Poems and songs about body parts", categoryImage: "body"),
        PoemCategory(category: .dailyRoutines, title: "Poems and songs about daily routines", categoryImage: "routines"),
        PoemCategory(category: .colors, title: "Poems and songs about colors", categoryImage: "colors"),
        PoemCategory(category: .emotions, title: "Poems and songs about emotions", categoryImage: "emotions"),
        PoemCategory(category: .themed, title: "Themed songs and poems", categoryImage: "themed"),
        PoemCategory(category: .lullabye, title: "Lullabyes", categoryImage: "lulliby"),
        PoemCategory(category: .parachute, title: "Parachute and scarf songs and rhymes", categoryImage: "scarf"),
        PoemCategory(category: .transportation, title: "Poems and songs about transportation", categoryImage: "transport"),
        PoemCategory(category: .seasons, title: "Poems and songs about seasongs and weather", categoryImage: "seasons")
    ]
}


