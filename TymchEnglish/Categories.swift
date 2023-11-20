//
//  Categories.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import Foundation

struct PoemCategory: Hashable, Identifiable {
    
    var id: category
    var title: String
    var categoryImage: String
    
    
    enum category {
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

struct PoemCategories {
    
    static let sampleCategory = PoemCategory(id: .animals, title: "Poems and songs about animals and insects", categoryImage: "imagePlaceholder")
    
    static let categories = [
        PoemCategory(id: .animals, title: "Poems and songs about animals and insects", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .actions, title: "Action songs and rhymes", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .bodyParts, title: "Poems and songs about body parts", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .dailyRoutines, title: "Poems and songs about daily routines", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .colors, title: "Poems and songs about colors", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .emotions, title: "Poems and songs about emotions", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .themed, title: "Themed songs and poems", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .lullabye, title: "Lullabyes", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .parachute, title: "Parachute and scarf songs and rhymes", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .transportation, title: "Poems and songs about transportation", categoryImage: "imagePlaceholder"),
        PoemCategory(id: .seasons, title: "Poems and songs about seasongs", categoryImage: "imagePlaceholder")
    ]
}


