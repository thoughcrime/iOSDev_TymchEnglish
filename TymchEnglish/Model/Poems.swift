//
//  Poems.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import Foundation

struct Poem: Hashable, Identifiable, Codable {
    
    var id = UUID() // generates a unique id for each instance
    let title: String
    let category: PoemCategory.categories
    let subCategory: String
    let imageName: String
    let videoLink: String
    let lyrics: String
    var isSaved:Bool = false
    
    
}


struct MockData {
    
    static let samplePoem = Poem (
        title: "Baa baa black Sheep",
        category: .animals,
        subCategory: "Farm Animal",
        imageName: "imagePlaceholder",
        videoLink: "https://youtu.be/dQw4w9WgXcQ",
        lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
    
    static let setOfSamplePoems: [Poem] = [
       Poem (
            title: "This is the first poem",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
       Poem (
            title: "This is the second poem",
            category: .colors,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
       Poem (
            title: "This is the third poem",
            category: .dailyRoutines,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
       
    ]
    
    
}

struct Poems: Hashable {
    
    static let poems = [
        Poem (
            title: "Baa baa black Sheep",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            title: "Little Bunny FooFoo",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            title: "Old Mc'Donald",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            title: "I'm A Little Snowman",
            category: .seasons,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            title: "Twinkle Twinkle Little Star",
            category: .lullabye,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
    ]
}


