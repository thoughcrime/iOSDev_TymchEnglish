//
//  Poems.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 19.11.2023.
//

import Foundation
import SwiftUI

struct Poem: Hashable, Identifiable, Codable {
    
//    let id = UUID() // generates a unique id for each instance
//      IDs are set manually, IDs from 0001 ... 0009 are reserved for test purposes, for real data IDs
    let id: Int
    let title: String
    let category: PoemCategory.categories
    let subCategory: String
    let imageName: String
    let audioFileName: String
    let videoLink: String
    let lyrics: String
    
}


struct MockData {
    
    static let samplePoem = Poem (
        id: 0001,
        title: "Baa baa black Sheep",
        category: .animals,
        subCategory: "Farm Animal",
        imageName: "imagePlaceholder", 
        audioFileName: "soundPlaceholder.mp3",
        videoLink: "https://youtu.be/dQw4w9WgXcQ",
        lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
    
    static let setOfSamplePoems: [Poem] = [
       Poem (
            id: 0002,
            title: "This is the first poem",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
       Poem (
            id: 0003,
            title: "This is the second poem",
            category: .colors,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder2.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
       Poem (
            id: 0004,
            title: "This is the third poem",
            category: .dailyRoutines,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder", 
            audioFileName: "soundPlaceholder3.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
       
    ]
    
    static let items = Set(setOfSamplePoems)
}

struct Poems: Hashable {
    
    static let poems = [
        Poem (
            id: 0010,
            title: "Baa baa black Sheep",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder", 
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            id: 0011,
            title: "Little Bunny FooFoo",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder", 
            audioFileName: "soundPlaceholder3.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            id: 0012,
            title: "Old Mc'Donald",
            category: .animals,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder", 
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            id: 0013,
            title: "I'm A Little Snowman",
            category: .seasons,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder", 
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            id: 0014,
            title: "Twinkle Twinkle Little Star",
            category: .lullabye,
            subCategory: "Farm Animal",
            imageName: "imagePlaceholder", 
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
    ]
}


