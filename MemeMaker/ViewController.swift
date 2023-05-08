//
//  ViewController.swift
//  MemeMaker
//
//  Created by Nidhin Nishanth on 5/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomCaptionLabel: UILabel!
    
    @IBOutlet var topSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomSegmentedControl: UISegmentedControl!
    
    let topChoices = [CaptionOption(caption: "Luke, join the dark side", emoji: "😈"), CaptionOption(caption: "Luke, come to my book club", emoji: "📚"), CaptionOption(caption: "Luke, I found my oven mitts", emoji: "🧤")]
    
    let bottomChoices = [CaptionOption(caption: "We have cookies!", emoji: "🍪"), CaptionOption(caption: "We’ll be unstoppable!", emoji: "🦾"), CaptionOption(caption: "The whole family will be there!", emoji: "👨‍👩‍👧‍👦")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedControl.selectedSegmentIndex = 0
        
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        updateCaptions()
    }

    func updateCaptions() {
        let topIndex = topSegmentedControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
        
        let bottomIndex = bottomSegmentedControl.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        updateCaptions()
    }
    

}

