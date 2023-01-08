//
//  ViewController.swift
//  Destini
//
//  Created by Simone Margio
//  www.simonemargio.im
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiseMade(_ sender: UIButton) {
        // Get the text from button that user choise
        let userChoise = sender.currentTitle!
        
        if userChoise == "GitHub" {
            if let url = URL(string: "https://github.com/simonemargio/Destini") {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:])
                }
            }
        }
        // Get next story text based on the user's choice
        story.nextPage(usersChoise: userChoise)
        updateUI()
    }
    
    // Get story and buttons' text
    func updateUI () {
        storyLabel.text = story.getStoryText()
        choice1Button.setTitle(story.getStoryOption1(), for: .normal)
        choice2Button.setTitle(story.getStoryOption2(), for: .normal)
    }
    
}

