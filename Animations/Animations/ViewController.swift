//
//  ViewController.swift
//  Animations
//
//  Created by Armando Flores on 11/27/14.
//  Copyright (c) 2014 Armando Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
           }

    @IBAction func animatedButtonPressed(sender: AnyObject) {
        
        // Create and add a colored square
        let coloredSquare = UIView()
        
        // set background color to blue
        coloredSquare.backgroundColor = UIColor.blueColor()
        
        // set frame (position and size) of the square
        // iOS coordinate system starts at the top left of the screen
        // so this square will be at top left of screen, 50x50pt
        // CG in CGRect stands for Core Graphics
        coloredSquare.frame = CGRect(x: 130, y: 20, width: 50, height: 50)
        
        // finally, add the square to the screen
        self.view.addSubview(coloredSquare)
        
        // lets set the duration to 1.0 seconds
        // and in the animations block change the background color
        // to red and the x-position  of the frame
        UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.whiteColor()
            
            // for the x-position I entered 320-50 (width of screen - width of the square)
            // if you want, you could just enter 270
            // but I prefer to enter the math as a reminder of what's happenings
            coloredSquare.frame = CGRect(x: 0, y: 0, width: 40, height: 30)
        })
        
        
        let duration = 1.0
        let delay = 0.0
        let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut
        
        let damping = 0.15 // set damping ration
        let velocity = 1.0 // set initial velocity
        
        
        UIView.animateWithDuration(1.0, delay: 0.0, options: options, animations: {
            
            // any changes entered in this block will be animated
            coloredSquare.backgroundColor = UIColor.whiteColor()
            coloredSquare.frame = CGRect(x: 0, y: 665, width: 140, height: 5)
            
            }, completion: nil)
        
        // Note: I didn't want to do anything with the completion block
        // in this example so I set it to 'nil'
        

    }
    
    
    @IBAction func animateButtonTwo(sender: AnyObject) {
    
        
        // Create and add a colored square
        let coloredSquare = UIView()
        
        // set background color to blue
        coloredSquare.backgroundColor = UIColor.yellowColor()
        
        // set frame (position and size) of the square
        // iOS coordinate system starts at the top left of the screen
        // so this square will be at top left of screen, 50x50pt
        // CG in CGRect stands for Core Graphics
        coloredSquare.frame = CGRect(x: 130, y: 20, width: 50, height: 50)
        
        // finally, add the square to the screen
        self.view.addSubview(coloredSquare)
        
        // lets set the duration to 1.0 seconds
        // and in the animations block change the background color
        // to red and the x-position  of the frame
        UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.blackColor()
            
            // for the x-position I entered 320-50 (width of screen - width of the square)
            // if you want, you could just enter 270
            // but I prefer to enter the math as a reminder of what's happenings
            coloredSquare.frame = CGRect(x: 0, y: 0, width: 340, height: 30)
        })
        
        
        let delay = 0.0
        let options = UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut
        
        let damping = 0.15 // set damping ration
        let velocity = 1.0 // set initial velocity
        
        
        UIView.animateWithDuration(4.0, delay: 0.0, options: options, animations: {
            
            // any changes entered in this block will be animated
            coloredSquare.backgroundColor = UIColor.blueColor()
            coloredSquare.frame = CGRect(x: 0, y: 665, width: 120, height: 55)
            
            }, completion: nil)
        
        // Note: I didn't want to do anything with the completion block
        // in this example so I set it to 'nil'
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

