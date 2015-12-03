//
//  ViewController.swift
//  Class17New
//
//  Created by newww on 12/2/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit
import pop


class ViewController: UIViewController, POPAnimationDelegate {

    @IBOutlet weak var ball: UIImageView!
    
    var ballAnimation: POPBasicAnimation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ball.userInteractionEnabled = true
        
        ball.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "ballPanned:"))
        
        
       /* 
        let ballAnimation = POPBasicAnimation(propertyNamed: kPOPViewCenter)
        ballAnimation.toValue = NSValue(CGPoint: CGPoint(x: 86.5, y: 532.5))
        //when you do a
        ball.pop_addAnimation(ballAnimation, forKey: nil)
        ballAnimation.duration = 10
        */
        //The above was moved to animateBall()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func animateBall() {
        let ballAnimation = POPBasicAnimation(propertyNamed: kPOPViewCenter)
        ballAnimation.toValue = NSValue(CGPoint: CGPoint(x: 86.5, y: 532.5))
        //when you do a
        //ballAnimation.duration =
        
        ballAnimation.delegate = self
        ballAnimation.duration = 2
        
        ball.pop_addAnimation(ballAnimation, forKey: nil)
        
    }
    
    func pop_animationDidStuff(anim: POPAnimation!, finished: Bool) {
        print("Animation stopped")
    }
    
    //func pop
    
    func pop_animationDidStop(anim: POPAnimation!, finished: Bool) {
        print("stopped animation")
    }
    
    func pop_AnimationDidApply(anim: POPAnimation!) {
        
    }
    
    
    //The above three pop animation functions are events that give notice when the events happen
    func ballPanned(pan: UIPanGestureRecognizer){
        print("panning")
        switch pan.state {
        case .Began:
            print("Began panning")
            ball.pop_removeAllAnimations()
        case .Changed:
            ball.center = pan.locationInView(view)
            print("Loc changed")
            //print(ball.center) can show you in the output window where the ball is on the screen
        case .Ended:
            print("Finished")
            animateBall()
            
        default: break
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

