//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    @IBAction func ChoiceMade(_ sender: UIButton) {
        updateUI(nextStory: storyBrain.nextStory(userChoice: sender.currentTitle!))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(nextStory: storyBrain.stories[0])
    }

    func updateUI(nextStory: Story) {
        storyLabel.text = nextStory.title
        choice1Button.setTitle(nextStory.choice1, for: .normal)
        choice2Button.setTitle(nextStory.choice2, for: .normal)
    }
}

