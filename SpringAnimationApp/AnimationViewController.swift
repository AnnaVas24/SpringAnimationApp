//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Vasichko Anna on 11.01.2022.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = animation.description

    }
    


    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        mainLabel.text = animation.description
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
        
        
        animation = Animation.getAnimation()
        sender.setTitle("\(animation.preset)", for: .normal)
}


}
