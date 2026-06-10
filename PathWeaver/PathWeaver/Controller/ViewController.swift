//
//  ViewController.swift
//  PathWeaver
//
//  Created by Batuhan Ham on 8.06.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userSelection = sender.currentTitle!
        storyBrain.nextStory(userSelection)

        updateUI()
        
    }
    
    func updateUI() {
        
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

