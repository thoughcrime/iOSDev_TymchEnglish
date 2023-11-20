//
//  Poems.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import Foundation

struct Poem: Hashable, Identifiable {
    
    let id = UUID()
    let title: String
    let category: PoemCategory.category
    let imageName: String
    let videoLink: String?
    let lyrics: String
    
    
}


struct MockData {
    
    static let samplePoem = Poem (
        title: "Baa baa black Sheep",
        category: .animals,
        imageName: "imagePlaceholder",
        videoLink: "https://youtu.be/dQw4w9WgXcQ",
        lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
}


