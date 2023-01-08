//
//  Sotry.swift
//  Destini
//
//  Created by Simone Margio
//  www.simonemargio.im
//

import Foundation

/*
    Main struct for every element of the story
    Choise1 and 2 are the choices that the user can do
    Destination is the flow chart path 
 */
struct Story {
    let title: String
    let choise1: String
    let choise2: String
    let choise1Destination: Int
    let choise2Destination: Int
    
    init(t: String, c1: String, c2: String, c1d: Int, c2d: Int){
        self.title = t
        self.choise1 = c1
        self.choise2 = c2
        self.choise1Destination = c1d
        self.choise2Destination = c2d
    }
}
