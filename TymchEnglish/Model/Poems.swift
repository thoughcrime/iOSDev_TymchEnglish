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
    let themeCategory: PoemCategory.ThemeCategories
    let functionalCategory: PoemCategory.FunctionalCategories
    let imageName: String
    let audioFileName: String
    let videoLink: String
    let lyrics: String
    
}


struct MockData {
    
    static let samplePoem = Poem (
        id: 0001,
        title: "Baa baa black Sheep",
        themeCategory: .animals, 
        functionalCategory: .counting,
        imageName: "imagePlaceholder",
        audioFileName: "soundPlaceholder.mp3",
        videoLink: "https://youtu.be/dQw4w9WgXcQ",
        lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane.")
    
    static let setOfSamplePoems: [Poem] = [
       Poem (
            id: 0002,
            title: "This is the first poem",
            themeCategory: .animals, 
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
       Poem (
        id: 0003,
        title: "This is the second poem",
        themeCategory: .colors,
        functionalCategory: .learning,
        imageName: "imagePlaceholder",
        audioFileName: "soundPlaceholder2.mp3",
        videoLink: "https://youtu.be/dQw4w9WgXcQ",
        lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
       Poem (
        id: 0004,
        title: "This is the third poem",
        themeCategory: .dailyRoutines,
        functionalCategory: .storytime,
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
            themeCategory: .animals,
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Baa, baa, black sheep, have you any wool? \nYes, sir, yes, sir, three bags full.\nOne for my master, one for my dame,\nAnd one for the little boy who lives down the lane. \nBaa, baa, black sheep have you any wool?\nYes, sir, yes, sir, three bags full.\n\n Thank you said the master,\nThank you said the dame\nAnd thank you said the little boy \nwho lived down the lane."),
        Poem (
            id: 0011,
            title: "Beehive",
            themeCategory: .animals,
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder3.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Here is the beehive, where are all the bees?\nHidden away where nobody sees.\nOpen it up and out they fly.\nOne, two, three, four, five, buzzzz."),
        Poem (
            id: 0012,
            title: "Finger Family",
            themeCategory: .bodyParts,
            functionalCategory: .fingerplays,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Daddy Finger, Daddy Finger, where are you?\nHere I am! Here I am! How do you do?\n\nMommy Finger, Mommy Finger, where are you?\nHere I am! Here I am! How do you do?\n\nBrother Finger, Brother Finger, where are you?\nHere I am! Here I am! How do you do?\n\nSister Finger, Sister Finger, where are you?\nHere I am! Here I am! How do you do?\n\nBaby Finger, Baby Finger, where are you?\nHere I am! Here I am! How do you do?\n"),
        Poem (
            id: 0013,
            title: "Five Little Speckled Frogs",
            themeCategory: .animals,
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Five little speckled frogs\nSat on a speckled log,\nEating the most delicious bugs,\nYum, yum!\nOne jumped into the pool\nWhere it was nice and cool,\nThen there were four speckled frogs,\nGlub, glub!"),
        Poem (
            id: 0014,
            title: "Five Little Monkeys",
            themeCategory: .animals,
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Five little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n'No more monkeys jumping on the bed!'\n\nFour little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n'No more monkeys jumping on the bed!'\n\nThree little monkeys jumping on the bed,\nOne fell off and bumped her head,\nMama called the doctor and the doctor said,\n'No more monkeys jumping on the bed!'\n\nTwo little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n'No more monkeys jumping on the bed!'\n\nOne little monkey jumping on the bed,\nHe fell off and bumped his head,\nMama called the doctor and the doctor said,\n'No more monkeys jumping on the bed!'\n\nNo little monkeys jumping on the bed,\nNone fell off and bumped their head,\nMama called the doctor and the doctor said,\n'Put those monkeys to bed!'"),
        Poem (
            id: 0015,
            title: "Two Little Blackbirds",
            themeCategory: .animals,
            functionalCategory: .oposits,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Two little blackbirds sitting on a hill.\nOne named Jack and one named Jill.\nFly away Jack, fly away Jill.\nCome back Jack, come back Jill.\n\nTwo little blackbirds flying in the sky.\nOne named Low and one named High.\nFly away Low, fly away High.\nCome back Low, come back High.\n\nTwo little blackbirds sitting on a pole.\nOne named Fast and one named Slow.\nFly away Fast, fly away Slow.\nCome back Fast, come back Slow.\n\nTwo little blackbirds sitting on a gate.\nOne named Loud and one named Quiet.\nFly away Loud, fly away Quiet.\nCome back Loud, come back Quiet."),
        Poem (
            id: 0016,
            title: "Rain is Falling Down",
            themeCategory: .seasons,
            functionalCategory: .soundImitation,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Rain is falling down. Splash!\nRain is falling down. Splash!\nPitter Patter, Pitter Patter!\nRain is falling down. Splash!\n\nMud is all around. Squish!\nMud is all around. Squish!\nSquishing here, squishing there\nMud is all around. Squelch!\n\nSun is peeking out. Peek!\nSun is peeking out. Peek!\nPeeking here, peeking there.\nSun is peeking out. Peek-a-boo !"),
        Poem (
            id: 0017,
            title: "Three ducks",
            themeCategory: .animals,
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Watch the ducks and you'll see,\nthey are waddling one, two, three.\nFirst the smallest leads the line,\nMiddle sized duck thinks the second place is fine,\nBiggest duck is third you see,\nThey are waddling one, two, three."),
        Poem (
            id: 0018,
            title: "Slippery fish, slippery fish",
            themeCategory: .animals,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Swimming in the water\nSlippery fish, slippery fish\nGulp, gulp, gulp\nOh no!\nIt's been eaten by an...\n\nOctopus, octopus\nSquiggling in the water\nOctopus, octopus\nGulp, gulp, gulp\nOh no!\nIt's been eaten by a...\n\nTuna fish, tuna fish\nSplashing in the water\nTuna fish, tuna fish\nGulp, gulp, gulp\nOh no!\nIt's been eaten by a...\n\nGreat white shark, great white shark\nWorking in the water\nGreat white shark, great white shark\nGulp, gulp, gulp\nOh no!\nIt's been eaten by a...\n\nHumongus whale, humongus whale\nSpouting in the water\nHumongus whale, humongus whale\nGulp, gulp, gulp\nGulp, gulp\nBurp, excuse me!"),
        Poem (
            id: 0019,
            title: "Pat-a-Cake",
            themeCategory: .food,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder2.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Pat-a-cake, pat-a-cake, baker’s man.\nBake me a cake as fast as you can.\nRoll it, and pat it, and mark it with a “B”.\nPut it in the oven for Baby and me!"),
        Poem (
            id: 0020,
            title: "Clap, clap, clap your hands",
            themeCategory: .bodyParts,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Clap, clap, clap your hands,\nClap your hands together.\nClap, clap, clap your hands,\nClap your hands together.\n\nStamp, stamp stamp your feet,\nStamp your feet together.\nStamp, stamp stamp your feet,\nStamp your feet together.\n\nTap, tap tap your toes,\nTap your toes together.\nTap, tap tap your toes,\nTap your toes together.\n\nBlink, blink, blink your eyes,\nBlink your eyes together.\nBlink, blink, blink your eyes,\nBlink your eyes together.\n\nBeep, beep, beep your nose,\nBeep your nose together.\nBeep, beep, beep your nose,\nBeep your nose together."),
        Poem (
            id: 0021,
            title: "I’m a little teapot",
            themeCategory: .food,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "I’m a little teapot,\nShort and stout.\nHere is my handle,\nHere is my spout!\n\nWhen I get all steamed up,\nHear me shout:\n“Tip me over\nand pour me out!”\n\nI’m a clever teapot,\nYes, it’s true!\nHere let me show you\nWhat I can do!\n\nI can change my handle,\nAnd my spout.\nJust tip me over \nand pour me out!"),
        Poem (
            id: 0022,
            title: "Bubble gum",
            themeCategory: .bodyParts,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics: "Sticky, sticky, sticky, sticky \nbubble gum, bubble gum, bubble gum.\nSticky, sticky, sticky, sticky \nbubble gum, bubble gum.\nMakes my hands stick to my knees.\nAnd you pull 'em,\nand you pull 'em,\nand you pull' em away.\n\n!Repeat. Stick your hands to different parts of your body and pull 'em away."),
        Poem (
            id: 0023,
            title: "Peek-A-Boo",
            themeCategory: .baby,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Who can play a peek a boo?\nI can play a peek a boo!\nCan you play a peek a boo?\nPeek A, Peek A, Peek A, Peek A Boo!"),
        Poem (
            id: 0024,
            title: "Teddy bear, Teddy bear",
            themeCategory: .dailyRoutines,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Teddy bear, Teddy bear,\nTurn around.\nTeddy bear, Teddy bear,\nTouch the ground.\n\nTeddy bear, Teddy bear,\nShow your shoe.\nTeddy bear, Teddy bear,\nThat will do.\n\nTeddy bear, Teddy bear,\nRun upstairs.\nTeddy bear, Teddy bear,\nComb your hair.\n\nTeddy bear, Teddy bear,\nBlow out the light.\nTeddy bear, Teddy bear,\nSay good night."),
        Poem (
            id: 0025,
            title: "Open, Shut Them",
            themeCategory: .bodyParts,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Open and shut them, open and shut them,\nGive a little clap, clap, clap.\nOpen and shut them, open and shut them,\nPut them in your lap, lap, lap.\n\nCreep them, creep them, creep them, creep them\nRight up to your chin, chin, chin.\nOpen up your little mouth,\nBut do not let them in!\n\nOh We Clap, Clap, Clap\nOh we clap, clap, clap\nOh we clap our hands together\nOh we clap, clap, clap\nOh we clap and then we\nStop!\n\nOh we tap, tap, tap\nOh we tap our knees together\nOh we tap, tap, tap\nOh we tap and then we\nStop!\n\nOh we blow a kiss\nOh we blow a kiss together\nOh we blow a kiss \nOh we blow a kiss and\nStop!"),
        Poem (
            id: 0026,
            title: "Hickory Dickory Dock",
            themeCategory: .animals,
            functionalCategory: .counting,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Hickory dickory dock\nThe mouse ran up the clock.\nThe clock struck one\nThe mouse ran down\nHickory dickory dock.\n\nHickory dickory dock\nThe mouse ran up the clock.\nThe clock struck two\nAnd down he flew\nHickory dickory dock."),
        
        Poem (
            id: 0027,
            title: "Hey Diddle Diddle",
            themeCategory: .animals,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Hey diddle diddle the cat and the fiddle\nThe cow jumped over the moon\nThe little dog laughed to see such fun\nAnd the dish ran away with the spoon!\n\nHey diddle diddle the cat and the fiddle\nThe cow jumped over the moon\nThe little dog laughed to see such fun\nAnd the dish ran away with the spoon!"),
        
        Poem (
            id: 0028,
            title: "Hot Cross Buns",
            themeCategory: .food,
            functionalCategory: .actions,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Hot cross buns!\nHot cross buns!\nOne a penny two a penny.\nHot cross buns!\nIf you have no daughters\nGive them to your sons!\nOne a penny two a penny.\nHot cross buns!"),
        
        Poem (
            id: 0029,
            title: "I’m a Little Turkey",
            themeCategory: .specialDays,
            functionalCategory: .soundImitation,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"I’m a little turkey,/n/My name is Ted./n/Here are my feathers,/n/Here is my head./n/Gobble, gobble, gobble,/n/Is what I say,/n/Quick! Quick! Run Ted! It’s Thanksgiving Day!"),
        
        Poem (
            id: 0030,
            title: "Muffin Man",
            themeCategory: .food,
            functionalCategory: .singAlong,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Oh do you know the muffin man\nThe muffin man the muffin man?\nOh do you know the muffin man\nWho lives on Dury lane?\nOh yes we know the muffin man\nThe muffin man the muffin man.\nOh yes we know the muffin man\nWho lives on Dury lane."),
        
        Poem(id: 0031,
             title: "Rain",
             themeCategory: .seasons,
             functionalCategory: .actions,
             imageName: "imagePlaceholder",
             audioFileName: "soundPlaceholder.mp3",
             videoLink: "https://youtu.be/dQw4w9WgXcQ",
             lyrics: "The rian is falling all around,\nIt falls on field and tree,\nIt rains on the umbrellas here,\nAnd on the ship at sea.\n\n\t\tRobert Louis Stevenson"),
        
        Poem (
            id: 0032,
            title: "Twinkle, Twinkle, Little Star",
            themeCategory: .lullabye,
            functionalCategory: .soundImitation,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Twinkle, twinkle, little star,\nHow I wonder what you are,\nUp above the world so high,\nLike a dimond in the sky."),
        
        Poem (
            id: 0033,
            title: "Come, let's to Bed",
            themeCategory: .lullabye,
            functionalCategory: .singAlong,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Come,let's to bed, says Sleepy-head;\nSit up awhile, says Slow;\nBang on the pot, says Greedy-gut,\nWe'll sup before we go.\n\nTo bed, to bed, cried Sleepy-head,\nBut all the rest said No!\nIt is morning now,\nYuo must milk the cow,\nAnd tomorrow to bed we go."),
        
        Poem (
            id: 0034,
            title: "Hush, Little Baby",
            themeCategory: .lullabye,
            functionalCategory: .singAlong,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Hush, little baby, don't say a word,\nPapa's going to buy you a mocking bird.\n\nIf the mocking bird won't sing,\nPapa's going to buy you a diamond ring.\n\nIf the diamond ring turns to bras,\nPapa's going to buy you a looking-glass.\n\nIf the looking-glass gets broke,\nPapa's going to buy you a billy-goat.\n\nIf that billy-goat runs away,\nPapa's going to buy you another today."),
        
        Poem (
            id: 0035,
            title: "Sleep, Baby, Sleep",
            themeCategory: .lullabye,
            functionalCategory: .singAlong,
            imageName: "imagePlaceholder",
            audioFileName: "soundPlaceholder.mp3",
            videoLink: "https://youtu.be/dQw4w9WgXcQ",
            lyrics:"Sleep, baby, sleep,\nThy father guards the sheep;\nThy mother shakes the dreamland three\nAnd from it fall sweet dreams for thee,\nSleep,baby,sleep.\n\nSleep, baby, sleep,\nOur cottage vale is deep;\n"),
        
    ]
}


