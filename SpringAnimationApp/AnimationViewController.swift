//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Vasichko Anna on 11.01.2022.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    
    @IBOutlet weak var curveLabel: UILabel!
    
    @IBOutlet weak var forceLabel: UILabel!
    
    @IBOutlet weak var durationLabel: UILabel!
    
    
    @IBOutlet weak var springButton: SpringButton!
    
    private var count = 0
    private let arrayOfPresets = ["pop", "fadeIn", "shake", "wobble", "zoomIn", "swing", "squeeze"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.animation = arrayOfPresets[count]
        setupAnimation()
        setupLabels()

    }
    


    @IBAction func runSpringAnimation(_ sender: SpringButton) {
    switch count {
    case 1:
        springAnimationView.animation = arrayOfPresets[count]
    case 2:
        springAnimationView.animation = arrayOfPresets[count]
    case 3:
        springAnimationView.animation = arrayOfPresets[count]
    case 4:
        springAnimationView.animation = arrayOfPresets[count]
    case 5:
        springAnimationView.animation = arrayOfPresets[count]
    default:
        springAnimationView.animation = arrayOfPresets[count]
        count = 0
    }
        springAnimationView.animate()
        count += 1
        
        sender.setTitle("\(arrayOfPresets[count])", for: .normal)
        setupLabels()
        setupAnimation()
    }
    

}

extension AnimationViewController {
    private func setupAnimation() {
        springAnimationView.curve = Spring.AnimationCurve.allCases.randomElement()!.rawValue
        springAnimationView.force = CGFloat.random(in: 0...5)
        springAnimationView.duration = CGFloat.random(in: 0...5)
    }
    
    private func setupLabels() {
        presetLabel.text = "Preset: \(springAnimationView.animation)"
        curveLabel.text = "Curve: \(springAnimationView.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", springAnimationView.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", springAnimationView.duration))"
    }
    
}
