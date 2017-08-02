//
//  MemoryProvider.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 8/1/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

struct Memory {
    let month: Int
    let day: Int
    let year: Int
    let description: String
    let whatIRemember: String
}

struct MemoriesProvider {
    let memories: [Memory] = [
        Memory(month: 8, day: 1, year: 2013, description: "The day I asked you to be my girfriend", whatIRemember: "I remember that by our first date I wanted you to be exclusively dating me. So when our third date rolled around on August 1st, I knew I just had to be with you. I still can't believe you agreed to be my girlfriend!"),
        Memory(month: 8, day: 1, year: 2014, description: "The day we got married", whatIRemember: "I remember I could not stop smiling all day! I couldn't believe it was finally happening and that you didn't run away! So Happy I married you!"),
        Memory(month: 10, day: 20, year: 2015, description: "The day James was born", whatIRemember: "I remember the moment I heard him cry for the first time that I began to cry uncontrollably. I always wanted to be a dad and when we got married my heart was filled with the promise of one day having a family. Seeing James for the first time brought those emotions to their full capacity with how happy it made me. I'm so glad to have started a family with you. I am so glad we are our own little family"),
        Memory(month: 8, day: 1, year: 2017, description: "The day I found out we were pregnant with our second child", whatIRemember: "I remember being a pretty scary time for us financially and then when James came in with his book and shirt about being a big brother, it washed everything away. For the first time in a long time, I forgot about our worries and my heart was so happy that another little one was on the way!")
    ]
}
