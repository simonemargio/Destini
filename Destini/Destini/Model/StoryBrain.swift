//
//  StoryBrain.swift
//  Destini
//
//  Created by Simone Margio
//  www.simonemargio.im
//

import Foundation

struct StoryBrain {
    // The numbers follow the flow chart
    let storyBrain = [
        // 0
        Story(t: "It's a dark night. The time has finally come to carry out your plan. The backpack with all the items is ready. You hope you don't have to use them.", c1: "Check backpack", c2: "Review plan", c1d: 1, c2d: 3),
        // 1
        Story(t: "Put a hand in your backpack to check that everything is there but you cut yourself. The wound is not deep but a lot of blood comes out.", c1: "Medicate", c2: "Go out", c1d: 2, c2d: 4),
        //2
        Story(t: "You put the finger under the water and cover it with a bandage. The pain will pay off.", c1: "Review the plan", c2: "Go out", c1d: 3, c2d: 4),
        // 3
        Story(t: "You have calculated everything down to the smallest detail. Nobody will notice your present. All but the target.", c1: "Check backpack", c2: "Go out", c1d: 1, c2d: 4),
        // 4
        Story(t: "The cold freezes your bones but you have a black sweatshirt hood. It will be a long night.", c1: "Get the car", c2: "Go on foot", c1d: 5, c2d: 6),
        // 5
        Story(t: "With the car, you arrive earlier. But better not to be too conspicuous.", c1: "...", c2: "...", c1d: 7, c2d: 7),
        
        // 6
        Story(t: "Walking is good for you. It helps to relax the nerves and you are more discreet.", c1: "...", c2: "...", c1d: 7, c2d: 7),
        
        // 7
        Story(t: "You arrived. The heart is beating fast. It is not fear. You notice that there is no one in front of the main gate.", c1: "Follow the plan", c2: "Use the main road", c1d: 8, c2d: 9),
        
        // 8
        Story(t: "Always follow the plan. Steps between the trees and the noise of nocturnal animals. You manage to enter the building.", c1: "...", c2: "...", c1d: 10, c2d: 10),
        
        // 9
        Story(t: "Steps to the main entrance. The cold starts to drop once you enter the building.", c1: "...", c2: "...", c1d: 10, c2d: 10),
        
        // 10
        Story(t: "The warmth envelops you as the silence resounds on the huge glass walls. It's time to act.", c1: "Take the elevator", c2: "Take the stairs", c1d: 11, c2d: 12),
        
        // 11
        Story(t: "Using the stairs you may run into someone. The lift takes you first to the top floor.", c1: "The heart beats", c2: "The heart beats", c1d: 13, c2d: 13),
        
        // 12
        Story(t: "Better the stairs, the elevator could make noise and attract someone.", c1: "The heart beats", c2: "The heart beats", c1d: 13, c2d: 13),
        
        // 13
        Story(t: "You have arrived at the top floor. Not on top of the building, but underground. You start walking but suddenly you hear voices.", c1: "Hide", c2: "Get away", c1d: 14, c2d: 15),
        
        // 14
        Story(t: "To your left is a room. Just hide for a while and nobody gets hurt.", c1: "Now", c2: "Now", c1d: 16, c2d: 16),
        
        // 15
        Story(t: "Better to go back as fast as possible. Let's avoid putting on a show.", c1: "Now", c2: "Now", c1d: 17, c2d: 17),
        
        // 16
        Story(t: "You open the door but it makes a noise attracting the approaching voices.", c1: "Fuck", c2: "Fuck", c1d: 18, c2d: 18),
        
        // 17
        Story(t: "Quickly turning your shoes in contact with the floor emits a noise attracting approaching voices.", c1: "Fuck", c2: "Fuck", c1d: 18, c2d: 18),
        
        // 18
        Story(t: "They are coming closer.", c1: "...", c2: "...", c1d: 19, c2d: 19),
        
        // 19
        Story(t: "More and more.", c1: "...", c2: "...", c1d: 20, c2d: 20),
        
        // 20
        Story(t: "HAVE SEEN YOU!!", c1: "Use the backpack", c2: "Use the backpack", c1d: 21, c2d: 21),
        
        // 21
        Story(t: "Open your backpack and take what hurt you before. You don't have just one, but many.", c1: "N O W", c2: "N O W", c1d: 22, c2d: 22),
        
        // 22
        Story(t: "You take and throw all the Apple gift cards you've purchased over time at those people. Some even for $ 100.", c1: "...", c2: "...", c1d: 23, c2d: 23),
        
        // 23
        Story(t: "From the confusion of what was happening you start running down the hall until you get to the only door there. You open it and you close yourself inside.", c1: "...", c2: "...", c1d: 24, c2d: 24),
        
        // 24
        Story(t: "There it is, in the dim light. Your dream.", c1: "...", c2: "...", c1d: 25, c2d: 25),
        
        // 25
        Story(t: "iPhone 15 Pro! 😍", c1: "...", c2: "...", c1d: 26, c2d: 26),
        
        // 26
        Story(t: "Grab the device and run away as fast as possible, passing among the employees intent on collecting and activating gift cards.", c1: "...", c2: "...", c1d: 27, c2d: 27),
        
        // 27
        Story(t: "You gave away nearly two thousand dollars worth of gift cards, but it was worth it. You now have the latest iPhone model before anyone else. You come home happy and with some doubts.", c1: "❤️", c2: "❤️", c1d: 28, c2d: 28),
        
        // 28
        Story(t: "Thanks for reading all. I'm learning to program in Swift and the project of this app is completely open source on GitHub. Byee! 🍪", c1: "GitHub", c2: "Reset", c1d: 28, c2d: 0)
    ]
    
    var storyPage = 0
    
    // Return the correct information required
    func getStoryText () -> String {
        return storyBrain[storyPage].title
    }
    
    func getStoryOption1 () -> String {
        return storyBrain[storyPage].choise1
    }
    
    func getStoryOption2 () -> String {
        return storyBrain[storyPage].choise2
    }
    
    mutating func nextPage (usersChoise: String) {
        if storyBrain[storyPage].choise1 == usersChoise {
            storyPage = storyBrain[storyPage].choise1Destination
        } else {
            storyPage = storyBrain[storyPage].choise2Destination
        }
    }
}

