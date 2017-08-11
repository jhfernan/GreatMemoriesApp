//
//  MemoryProvider.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 8/1/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

import GameKit

// First create a struct to handle the date and turn it into a nice readable string for the view
struct Date {
    let fullDate: String
    
    init(month m: Int, day d: Int, year y: Int) {
        var month: String = ""
        switch m {
        case 1: month = "Jan"
        case 2: month = "Feb"
        case 3: month = "Mar"
        case 4: month = "Apr"
        case 5: month = "May"
        case 6: month = "Jun"
        case 7: month = "Jul"
        case 8: month = "Aug"
        case 9: month = "Sep"
        case 10: month = "Oct"
        case 11: month = "Nov"
        case 12: month = "Dec"
        default: break
        }
        
        self.fullDate = "\(month) \(d), \(y)"
    }
}

// A struct to store a single memory
struct Memory {
    let date: String
    let description: String
    let whatIRemember: String
    
    init(date: Date, description: String, whatIRemember: String) {
        self.date = date.fullDate
        self.description = description
        self.whatIRemember = whatIRemember
    }
}

// A model that stores all our memories and provides a method to randomly select one
struct MemoriesProvider {
    let memories: [Memory] = [
        Memory(
            date: Date.init(month: 8, day: 1, year: 2013),
            description: "The day I asked you to be my girfriend",
            whatIRemember: "I remember that by our first date I wanted you to be exclusively dating me. So when our third date rolled around on August 1st, I knew I just had to be with you. I still can't believe you agreed to be my girlfriend!"
        ),
        Memory(
            date: Date.init(month: 8, day: 9, year: 2013),
            description: "Our first trip together as a couple",
            whatIRemember: "Going to Jacksonville was kind of like bringing the girl home to meet the parents. I always highly valued the opinion of my close friends so a part of me was nervous. Why, I don't know because they loved you!"
        ),
        Memory(
            date: Date.init(month: 11, day: 14, year: 2013),
            description: "Aproximate time around when we shared our stories and past",
            whatIRemember: "This memory can be summed up with one word: intimacy. I just remember thinking, \"Finally! someone to share anything with!\""
        ),
        Memory(
            date: Date.init(month: 1, day: 1, year: 2014),
            description: "The day I really started begging God for you",
            whatIRemember: "What makes this day so unique is the fact that it dawned on me for the first time that nothing is set in stone and since I haven't married you yet, you might still walk away from this. It scared me so much that I started praying a lot about our future"
        ),
        Memory(
            date: Date.init(month: 1, day: 21, year: 2014),
            description: "Started financially planning for a ring",
            whatIRemember: "One of the more cherished memories as I just remember praying to God saying I need a miracle and help to get that ring!"
        ),
        Memory(
            date: Date.init(month: 3, day: 1, year: 2014),
            description: "The day I proposed",
            whatIRemember: "I was so nervous and I couldn't imagine you saying no but I still felt like there was a chance. When you finally said yes, I could feel my heart fill up with a palpable joy"
        ),
        Memory(
            date: Date.init(month: 8, day: 1, year: 2014),
            description: "The day we got married",
            whatIRemember: "I remember I could not stop smiling all day! I couldn't believe it was finally happening and that you didn't run away! So Happy I married you!"
        ),
        Memory(
            date: Date.init(month: 8, day: 2, year: 2014),
            description: "The day after we got married",
            whatIRemember: "I remember sitting there at a continental breakfast just enjoying the fact that we were together. I spent time looking around and felt accomplished because I was one of the few with a ring on my finger"
        ),
        Memory(
            date: Date.init(month: 2, day: 14, year: 2015),
            description: "The day we confirmed we were pregnant",
            whatIRemember: "Sitting in that Doctor's office as he walked in and told us the good news was amazing feeling. Most people do a romantic dinner for Valentine's day. I got one better. I found out my family was about to get a little bigger together with the love of my life!"
        ),
        Memory(
            date: Date.init(month: 10, day: 20, year: 2015),
            description: "The day James was born",
            whatIRemember: "I remember the moment I heard him cry for the first time that I began to cry uncontrollably. I always wanted to be a dad and when we got married my heart was filled with the promise of one day having a family. Seeing James for the first time brought those emotions to their full capacity with how happy it made me. I'm so glad to have started a family with you. I am so glad we are our own little family"
        ),
        Memory(
            date: Date.init(month: 10, day: 20, year: 2016),
            description: "James' first birthday",
            whatIRemember: "Sometimes it is hard to grasp the process of growth and development. Sitting at the park with the banner you made of James on his journey at the start of each month made it abundantly clear how my son is growing. It made me so happy to see the process of him getting older"
        ),
        Memory(
            date: Date.init(month: 10, day: 20, year: 2016),
            description: "The day I found out we were pregnant with our second child",
            whatIRemember: "I remember being a pretty scary time for us financially and then when James came in with his book and shirt about being a big brother, it washed everything away. For the first time in a long time, I forgot about our worries and my heart was so happy that another little one was on the way!"
        )
    ]
    
    func generateRandomMemory() -> Memory {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: memories.count)
        return memories[randomNumber]
    }
}
