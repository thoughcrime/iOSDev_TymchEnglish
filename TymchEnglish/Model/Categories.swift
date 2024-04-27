//
//  Categories.swift
//  TymchEnglish
//
//  Created by Oleh Tymchenko on 19.11.2023.
//

import Foundation

struct PoemCategory: Hashable, Identifiable, Codable {
    
    var id = UUID()
    var themeCategory: ThemeCategories
    var functionalCategory: FunctionalCategories
    var title: String
    var categoryImage: String
    
    
    enum ThemeCategories: Codable {
        case none
        case animals
        case dailyRoutines
        case bodyParts
        case colors
        case emotions
        case specialDays
        case lullabye
        case transportation
        case seasons
        case food
        case baby
    }
    
    enum FunctionalCategories: Codable {
        case none
        case counting
        case actions
        case learning
        case parachute
        case storytime
        case oposits
        case fingerplays
        case soundImitation
        case singAlong
    }
    
}

struct PoemCategories: Hashable {
    
    static let sampleCategory = PoemCategory(themeCategory: .animals, functionalCategory: .none, title: "Poems and songs about animals and insects", categoryImage: "imagePlaceholder")
    
    static let categories = [
        PoemCategory(themeCategory: .animals, functionalCategory: .none, title: "Animals and insects", categoryImage: "animals"),
        PoemCategory(themeCategory: .bodyParts, functionalCategory: .none, title: "Body parts", categoryImage: "body"),
        PoemCategory(themeCategory: .dailyRoutines, functionalCategory: .none, title: "Daily routines", categoryImage: "routines"),
        PoemCategory(themeCategory: .colors, functionalCategory: .none, title: "Colors", categoryImage: "colors"),
        PoemCategory(themeCategory: .emotions, functionalCategory: .none, title: "Emotions", categoryImage: "emotions"),
        PoemCategory(themeCategory: .specialDays, functionalCategory: .none, title: "Special days and occasions", categoryImage: "themed"),
        PoemCategory(themeCategory: .lullabye, functionalCategory: .none, title: "Lullabyes", categoryImage: "lulliby"),
        PoemCategory(themeCategory: .transportation, functionalCategory: .none, title: "Transportation", categoryImage: "transport"),
        PoemCategory(themeCategory: .seasons, functionalCategory: .none, title: "Seasongs and weather", categoryImage: "seasons"),
        PoemCategory(themeCategory: .food, functionalCategory: .none, title: "Food and Kitchen", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .baby, functionalCategory: .none, title: "Baby Time", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .none, functionalCategory: .parachute, title: "Parachute and scarf songs and rhymes", categoryImage: "scarf"),
        PoemCategory(themeCategory: .none, functionalCategory: .actions, title: "Action songs and rhymes", categoryImage: "action"),
        PoemCategory(themeCategory: .none, functionalCategory: .counting, title: "Counting songs and rhymes", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .none, functionalCategory: .oposits, title: "Songs and rhymes about oposits", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .none, functionalCategory: .storytime, title: "Storytime songs and rhymes", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .none, functionalCategory: .fingerplays, title: "Fingerplays", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .none, functionalCategory: .soundImitation, title: "Songs and rhymes imitating sounds", categoryImage: "imagePlaceholder"),
        PoemCategory(themeCategory: .none, functionalCategory: .singAlong, title: "Sing-Along songs and rhymes", categoryImage: "imagePlaceholder"),
    ]
}


